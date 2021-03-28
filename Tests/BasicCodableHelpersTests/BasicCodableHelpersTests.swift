import XCTest
import UnitTestingHelper
@testable import BasicCodableHelpers

public extension JSONEncoder {
    convenience init(outputFormatting: JSONEncoder.OutputFormatting) {
        self.init()
        self.outputFormatting = outputFormatting
    }
}

class BasicCodableHelpersTests: XCTestCase {
    
    struct TestIfNoWithDefaultStruct: Codable, Equatable {
        
        enum CodingKeys: String, CodingKey {
            case strValue
            case intValue
        }
        
        static let DefaultStringValue: String = "Default"
        static let DefaultIntValue: Int = 123
        let strValue: String
        let intValue: Int
        
        public init(strValue: String, intValue: Int) {
            self.strValue = strValue
            self.intValue = intValue
        }
        public init() {
            self.init(strValue: TestIfNoWithDefaultStruct.DefaultStringValue,
                      intValue: TestIfNoWithDefaultStruct.DefaultIntValue)
        }
        public init(strValue: String) {
            self.init(strValue: strValue,
                      intValue: TestIfNoWithDefaultStruct.DefaultIntValue)
        }
        public init(intValue: Int) {
            self.init(strValue: TestIfNoWithDefaultStruct.DefaultStringValue,
                      intValue: intValue)
        }
        
        public init(from decoder: Decoder) throws {
            let conatiner = try decoder.container(keyedBy: CodingKeys.self)
            
            self.strValue = try conatiner.decodeIfPresent(String.self,
                                                          forKey: .strValue,
                                                          withDefaultValue: TestIfNoWithDefaultStruct.DefaultStringValue)
            self.intValue = try conatiner.decodeIfPresent(Int.self,
                                                          forKey: .intValue,
                                                          withDefaultValue: TestIfNoWithDefaultStruct.DefaultIntValue)
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            let didEncodeStrValue = (try container.encode(self.strValue,
                                                          forKey: .strValue,
                                                          ifNot: TestIfNoWithDefaultStruct.DefaultStringValue))
            try container.encode(self.intValue,
                                 forKey: .intValue,
                                 ifNot: TestIfNoWithDefaultStruct.DefaultIntValue)
            if !didEncodeStrValue {
                try container.encodeNil(forKey: .strValue)
            }
        }
        
        public static func ==(lhs: TestIfNoWithDefaultStruct, rhs: TestIfNoWithDefaultStruct) -> Bool {
            return lhs.strValue == rhs.strValue && lhs.intValue == rhs.intValue
        }
    }
    
    struct TestSingleOrArrayStruct: Codable, Equatable {
        enum CodingKeys: String, CodingKey {
            case array
        }
        let array: [TestIfNoWithDefaultStruct]
        
        public init(array: [TestIfNoWithDefaultStruct]) { self.array = array }
        public init() { self.init(array: []) }
        public init(_ array: TestIfNoWithDefaultStruct...) {
            self.init(array: array)
        }
        
        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.array = try container.decodeFromSingleOrArray(TestIfNoWithDefaultStruct.self, forKey: .array)
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encodeToSingleOrArray(self.array, forKey: .array)
        }
        
        public static func ==(lhs: TestSingleOrArrayStruct, rhs: TestSingleOrArrayStruct) -> Bool {
            return lhs.array == rhs.array
        }
    }
    
    struct SimpleCodableTest<T> where T: Codable, T: Equatable {
        let `struct`: T
        let jsonDataToJSONStringFailureMessage: String
        let testJSONStringFailureMessage: String
        let testJSONString: ((String) -> Bool)?
        
        public init(_ strct: T,
                    jsonDataToJSONStringFailureMessage: String? = nil,
                    testJSONStringFailureMessage: String? = nil,
                    testJSONString: ((String) -> Bool)? = nil) {
            self.struct = strct
            self.jsonDataToJSONStringFailureMessage = jsonDataToJSONStringFailureMessage ?? "Unable to get JSON String from data"
            self.testJSONStringFailureMessage = testJSONStringFailureMessage ?? "JSON String did not meet expectations"
            self.testJSONString = testJSONString
        }
    }
    
    func testSimpleCodableTests<T>(_ tests: [SimpleCodableTest<T>],
                                   file: StaticString = #file,
                                   line: UInt = #line)
    {
        let encoder = JSONEncoder()
        let decoder = BasicCodableHelperPatchedJSONDecoder()
        
        for (index, test) in tests.enumerated() {
            if let data = XCTAssertsNoThrow(try encoder.encode(test.struct),
                                            file: file,
                                            line: line) {
                
                if let f = test.testJSONString {
                    if let jsonString = String(data: data, encoding: .utf8) {
                        
                        XCTAssert(f(jsonString),
                                  "[\(index)]: \(test.testJSONStringFailureMessage)",
                                  file: file,
                                  line: line)
                    } else {
                        XCTFail("[\(index)]: \(test.jsonDataToJSONStringFailureMessage)",
                                file: file,
                                line: line)
                    }
                    
                }
                
                if let testStructDecoded = XCTAssertsNoThrow(try decoder.decode(T.self,
                                                                                from: data),
                                                             file: file,
                                                             line: line) {
                    XCTAssertEqual(test.struct, testStructDecoded, file: file, line: line)
                }
            }
        }
        
    }
    
    func testEncodeDecodeIfNotAndWithDefault() {
        let tests: [SimpleCodableTest<TestIfNoWithDefaultStruct>] = [
            .init(.init(),
                  testJSONString: { return  $0 == "{\"strValue\":null}" }),
            .init(.init(strValue: "Test String"),
                  testJSONString: { return  $0 == "{\"strValue\":\"Test String\"}" }),
            .init(.init(intValue: 20),
                  testJSONString: {
                    return  $0.contains("\"intValue\":20") && $0.contains("\"strValue\":null")
                 })
            
        ]
        
        testSimpleCodableTests(tests)
    }
    
    func testEncodeDecodeSingleOrArray() {
        
        let tests: [SimpleCodableTest<TestSingleOrArrayStruct>] = [
            .init(.init(),
                  testJSONString: { return $0 == "{\"array\":[]}" }),
            .init(.init(.init(strValue: "str", intValue: 0)),
                  testJSONString: {
                    return !$0.contains("[") &&
                           !$0.contains("]") &&
                            $0.contains("strValue\":\"str\"") &&
                            $0.contains("intValue\":0")
                    
                  }),
            .init(.init(.init(strValue: "str", intValue: 0),
                        .init(strValue: "str2", intValue: 1)),
                  testJSONString: {
                    return $0.contains("[") &&
                           $0.contains("]") &&
                           $0.contains("strValue\":\"str\"") &&
                           $0.contains("intValue\":0") &&
                           $0.contains("strValue\":\"str2\"") &&
                           $0.contains("intValue\":0")
                 })
            
        ]
        
        testSimpleCodableTests(tests)

    }
    
    struct TestEncodeIfNotEmptyContainer: Codable, Equatable {
        private enum CodingKeys: String, CodingKey {
            case array
        }
        let array: [Int]
        
        init(_ array: [Int]) { self.array = array }
        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.array = try container.decodeIfPresent([Int].self, forKey: .array, withDefaultValue: Array<Int>())
        }
        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encodeIfNotEmpty(self.array, forKey: .array)
        }
        
        public static func ==(lhs: TestEncodeIfNotEmptyContainer,
                              rhs: TestEncodeIfNotEmptyContainer) -> Bool {
            return lhs.array == rhs.array
        }
    }
    
    func testEncodeIfNotEmpty() {
        
        
        let tests: [SimpleCodableTest<TestEncodeIfNotEmptyContainer>] = [
            .init(.init([]),
                  testJSONString: { return $0 == "{}" }),
             .init(.init([1,2,3,4]),
                   testJSONString: { return $0 == "{\"array\":[1,2,3,4]}" }),
        ]
        
        testSimpleCodableTests(tests)
    }
    struct SingleValueContainer<Key, Value>: Codable, Equatable where Key: Hashable, Key: Codable, Value: Codable, Value: Equatable {
        let dict: [Key: Value]
        
        public init(_ dict: [Key: Value]) {
            self.dict = dict
        }
        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            self.dict = try container.decodeDictionary([Key: Value].self)
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            try container.encodeDictionary(self.dict)
        }
        
        public static func ==(lhs: SingleValueContainer<Key, Value>, rhs: SingleValueContainer<Key, Value>) -> Bool {
            guard lhs.dict.count == rhs.dict.count else { return false }
            for (lhsK, lhsV) in lhs.dict {
                guard let rhsV = rhs.dict[lhsK] else { return false }
                if lhsV != rhsV { return false}
            }
            
            for (rhsK, rhsV) in rhs.dict {
                guard let lhsV = lhs.dict[rhsK] else { return false }
                if lhsV != rhsV { return false}
            }
            return true
        }
    }
    
    struct SingleValueArray<Element>: Codable, Equatable where Element: Codable, Element: Equatable {
        let array: [Element]
        
        public init(_ array: [Element]) {
            self.array = array
        }
        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            self.array = try container.decodeFromSingleOrArray(Element.self)
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            try container.encodeToSingleOrArray(self.array)
        }
        
        public static func ==(lhs: SingleValueArray<Element>,
                              rhs: SingleValueArray<Element>) -> Bool {
            return lhs.array == rhs.array
        }
    }
    
    
    struct Container<Key, Value>: Codable, Equatable where Key: Hashable, Key: Codable, Value: Codable, Value: Equatable {
        private enum CodingKeys: String, CodingKey {
            case dict
            case dict2
        }
        let dict: SingleValueContainer<Key, Value>
        let dict2: [Key: Value]
        
        public init(_ dict: [Key: Value]) {
            self.dict = SingleValueContainer(dict)
            self.dict2 = dict
        }
        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.dict = try container.decode(SingleValueContainer<Key,Value>.self, forKey: .dict)
            self.dict2 = try container.decodeDictionary([Key: Value].self, forKey: .dict2)
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(self.dict, forKey: .dict)
            try container.encodeDictionary(self.dict2, forKey: .dict2)
        }
        
        public static func ==(lhs: Container<Key, Value>, rhs: Container<Key, Value>) -> Bool {
            guard lhs.dict == rhs.dict else { return false }
            guard lhs.dict2.count == rhs.dict2.count else { return false }
            for (lhsK, lhsV) in lhs.dict2 {
                guard let rhsV = rhs.dict2[lhsK] else { return false }
                if lhsV != rhsV { return false}
            }
            
            for (rhsK, rhsV) in rhs.dict2 {
                guard let lhsV = lhs.dict2[rhsK] else { return false }
                if lhsV != rhsV { return false}
            }
            return true
        }
    }
    
    func testCodingDictionaries() {
        // Test string key struct
        if true {
            let dict: [String: String] = [
                "key1": "val1",
                "key2": "val2"
            ]
            
            let container = Container(dict)
            
            
            if let encodedData = XCTAssertsNoThrow(try JSONEncoder(outputFormatting: .prettyPrinted).encode(container)) {
                /*if let jsonString = String(data: encodedData, encoding: .utf8) {
                    print(jsonString)
                }*/
                if let decodedContainer = XCTAssertsNoThrow(try JSONDecoder().decode(Container<String, String>.self, from: encodedData)) {
                     XCTAssertEqual(decodedContainer, container)
                }
            }
        }
        // Test bool key struct
        if true {
            let dict: [Bool: String] = [
                true: "val1",
                false: "val2"
            ]
            
            let container = Container(dict)
            
            
            if let encodedData = XCTAssertsNoThrow(try JSONEncoder(outputFormatting: .prettyPrinted).encode(container)) {
                /*if let jsonString = String(data: encodedData, encoding: .utf8) {
                    print(jsonString)
                }*/
                if let decodedContainer = XCTAssertsNoThrow(try JSONDecoder().decode(Container<Bool, String>.self, from: encodedData)) {
                     XCTAssertEqual(decodedContainer, container)
                }
            }
        }
        
        // Test Int key struct
        if true {
            let dict: [Int: String] = [
                3: "val1",
                5: "val2"
            ]
            
            let container = Container(dict)
            
            
            if let encodedData = XCTAssertsNoThrow(try JSONEncoder(outputFormatting: .prettyPrinted).encode(container)) {
                /*if let jsonString = String(data: encodedData, encoding: .utf8) {
                    print(jsonString)
                }*/
                if let decodedContainer = XCTAssertsNoThrow(try JSONDecoder().decode(Container<Int, String>.self, from: encodedData)) {
                     XCTAssertEqual(decodedContainer, container)
                }
            }
        }
        
        // Test Enum Key Struct
        if true {
            enum DictKey: String, Codable {
                case type1
                case type2
            }
            let dict: [DictKey: String] = [
                .type1: "val1",
                .type2: "val2"
            ]
            
            let container = Container(dict)
            
            
            if let encodedData = XCTAssertsNoThrow(try JSONEncoder(outputFormatting: .prettyPrinted).encode(container)) {
                /*if let jsonString = String(data: encodedData, encoding: .utf8) {
                    print(jsonString)
                }*/
                if let decodedContainer = XCTAssertsNoThrow(try JSONDecoder().decode(Container<DictKey, String>.self, from: encodedData)) {
                     XCTAssertEqual(decodedContainer, container)
                }
            }
        }
        
    }
    
    func testSingleValueEncodingSingleOrArray() {
        if true {
            let container = SingleValueContainer([ "key1": "val1", "key2": "val2" ])
            
            if let encodedData = XCTAssertsNoThrow(try JSONEncoder(outputFormatting: .prettyPrinted).encode(container)) {
                if let str = String(data: encodedData, encoding: .utf8) {
                    print("Encoded Single Value Dictionary:")
                    print(str)
                }
                
                if let decodedContainer = XCTAssertsNoThrow(try JSONDecoder().decode(SingleValueContainer<String, String>.self, from: encodedData)) {
                     XCTAssertEqual(decodedContainer, container)
                }
            }
        }
        if true {
            let arrays: [[String]] = [["key1"], [ "key1", "val1", "key2", "val2" ]]
            for (index, array) in arrays.enumerated() {
                let container = SingleValueArray(array)
                
                if let encodedData = XCTAssertsNoThrow(try JSONEncoder(outputFormatting: .prettyPrinted).encode(container)) {
                    if let str = String(data: encodedData, encoding: .utf8) {
                        print("[\(index)]: Encoded Single Value Array:")
                        print(str)
                    }
                    
                    if let decodedContainer = XCTAssertsNoThrow(try JSONDecoder().decode(SingleValueArray<String>.self, from: encodedData)) {
                         XCTAssertEqual(decodedContainer, container)
                    }
                }
            }
        }
    }
    
    struct EncodableKey<Value>: Hashable, Codable, BasicCodableHelperCustomDictionaryKeySingleValueCodable where Value: Hashable, Value: Codable {
        
        public static var DictionaryKeySingleValueCodableType: BasicCodableHelperDictionaryKeySingleValueCodableType {
            if Value.self == Bool.self { return .bool }
            else if Value.self == Int.self { return .int }
            else if Value.self == UInt.self { return .uint }
            else { return .string }
        }
        
        private let value: Value
        
        public var hashValue: Int { return self.value.hashValue }
        
        public init(_ value: Value) {
            self.value = value
        }
        public init(from decoder: Decoder) throws {
            self.value = try Value(from: decoder)
        }
        public func encode(to encoder: Encoder) throws {
            try self.value.encode(to: encoder)
        }
        #if swift(>=4.2)
        public func hash(into hasher: inout Hasher) {
            self.value.hash(into: &hasher)
        }
        #endif
        
        public static func ==(lhs: EncodableKey, rhs: EncodableKey) -> Bool {
            return lhs.value == rhs.value
        }
    }
    
    func testCodableDictionary() {
        func testDictEncoding<Key, Value>(_ dict: Dictionary<Key, Value>,
                                  file: StaticString = #file,
                                  line: UInt = #line) where Key: Codable, Value: Codable, Value: Equatable {
            print("Testing KeyType: \(Key.self)")
            print()
            
            let codableDict = CodableDictionary(dict)
            var outputFormatting: JSONEncoder.OutputFormatting = .prettyPrinted
            if #available(OSX 10.13, *) {
                outputFormatting.insert(.sortedKeys)
            }
            #if swift(>=5.3)
            outputFormatting.insert(.withoutEscapingSlashes)
            #endif
            let encoder = JSONEncoder(outputFormatting: outputFormatting)
            let decoder = JSONDecoder()
            
            guard let encodedDict = XCTAssertsNoThrow(try encoder.encode(dict),
                                                      file: file, line: line),
                  let encodedCodableDict = XCTAssertsNoThrow(try encoder.encode(codableDict),
                                                             file: file, line: line) else {
                return
            }
            guard let dictString = String(data: encodedDict,
                                          encoding: .utf8) else {
                XCTFail("Unable to convert encodedDict to string",
                        file: file, line: line)
                return
            }
            guard let encodedCodableString = String(data: encodedCodableDict,
                                                    encoding: .utf8) else {
                XCTFail("Unable to convert encodedCodableDict to string",
                        file: file, line: line)
                return
            }
            
            print("Encoded Dict JSON:")
            print(dictString)
            print()
            
            print("Encoded Codable Dict JSON:")
            print(encodedCodableString)
            print()
            
            guard let decodedDict = XCTAssertsNoThrow(try decoder.decode(Dictionary<Key, Value>.self,
                                                                         from: encodedDict),
                                                      file: file, line: line),
                  let decodedCodableDict = XCTAssertsNoThrow(try decoder.decode(CodableDictionary<Key, Value>.self,
                                                                                from: encodedCodableDict),
                                                             file: file, line: line) else {
                return
            }
            
            XCTAssertEqual(dict, decodedDict, file: file, line: line)
            #if swift(>=4.1)
            XCTAssertEqual(codableDict, decodedCodableDict, file: file, line: line)
            #else
            XCTAssertTrue((codableDict == decodedCodableDict), file: file, line: line)
            #endif
            
            XCTAssertTrue((dict == codableDict), file: file, line: line)
            XCTAssertTrue((decodedDict == decodedCodableDict), file: file, line: line)
            
        }
        
        let stringKeyIntValDict: [String: EncodableKey<Int>] = [
            "Key1": 1,
            "Key2": 2,
            "Key3": 3,
            "Key4\nKey4": 4,
            "Key5\r\nKey4": 5
        ]
        
        testDictEncoding(stringKeyIntValDict)
        
        
        let stringKeyDict: [String: String] = [
            "Key1": "Value1",
            "Key2": "Value2",
            "Key3": "Value3",
            "Key4\nKey4": "Value4\nValue4",
            "Key5\r\nKey4": "Value5\r\nValue5"
        ]
        
        testDictEncoding(stringKeyDict)
        
        let encodableStringKeyDict: [EncodableKey<String>: String] = stringKeyDict.mapKeys {
            return EncodableKey<String>($0)
        }
        
        testDictEncoding(encodableStringKeyDict)
        
        let intKeyDict: [Int: String] = [
            1: "Value1",
            2: "Value2",
            3: "Value3"
        ]
        
        testDictEncoding(intKeyDict)
        
        let encodableIntKeyDict: [EncodableKey<Int>: String] = intKeyDict.mapKeys {
            return EncodableKey<Int>($0)
        }
        
        testDictEncoding(encodableIntKeyDict)
        
        let boolKeyDict: [Bool: String] = [
            true: "Value1",
            false: "Value2"
        ]
        
        testDictEncoding(boolKeyDict)
        
        let encodableBoolKeyDict: [EncodableKey<Bool>: String] = boolKeyDict.mapKeys {
            return EncodableKey<Bool>($0)
        }
        
        testDictEncoding(encodableBoolKeyDict)
 
    }

    static var allTests = [
        ("testEncodeDecodeIfNotAndWithDefault", testEncodeDecodeIfNotAndWithDefault),
        ("testEncodeDecodeSingleOrArray", testEncodeDecodeSingleOrArray),
        ("testEncodeIfNotEmpty", testEncodeIfNotEmpty),
        ("testCodingDictionaries", testCodingDictionaries),
        ("testSingleValueEncodingSingleOrArray", testSingleValueEncodingSingleOrArray),
         ("testCodableDictionary", testCodableDictionary)
    ]
}

extension BasicCodableHelpersTests.EncodableKey: ExpressibleByStringLiteral {
    public init(stringLiteral value: String) {
        precondition(Value.self == String.self)
        self.value = (value as! Value)
    }
}
extension BasicCodableHelpersTests.EncodableKey: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: Int) {
        precondition(Value.self == Int.self || Value.self == UInt.self)
        self.value = (value as! Value)
    }
}
extension BasicCodableHelpersTests.EncodableKey: ExpressibleByBooleanLiteral {
    
    public init(booleanLiteral value: Bool) {
        precondition(Value.self == Bool.self)
        self.value = (value as! Value)
    }
}
