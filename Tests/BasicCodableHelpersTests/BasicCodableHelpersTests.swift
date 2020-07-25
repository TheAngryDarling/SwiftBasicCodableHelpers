import XCTest
@testable import BasicCodableHelpers

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
            self.init(strValue: TestIfNoWithDefaultStruct.DefaultStringValue, intValue: TestIfNoWithDefaultStruct.DefaultIntValue)
        }
        public init(strValue: String) {
            self.init(strValue: strValue, intValue: TestIfNoWithDefaultStruct.DefaultIntValue)
        }
        public init(intValue: Int) {
            self.init(strValue: TestIfNoWithDefaultStruct.DefaultStringValue, intValue: intValue)
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
            try container.encode(self.strValue, forKey: .strValue, ifNot: TestIfNoWithDefaultStruct.DefaultStringValue)
            try container.encode(self.intValue, forKey: .intValue, ifNot: TestIfNoWithDefaultStruct.DefaultIntValue)
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
    
    func testEncodeDecodeIfNotAndWithDefault() {
       
       do {
            let testStruct = TestIfNoWithDefaultStruct()
            
            let encoder = JSONEncoder()
            let data = try encoder.encode(testStruct)
            guard let jsonString = String(data: data, encoding: .utf8) else {
                XCTFail("Unable to get JSON String from data")
                return
            }
            XCTAssertEqual(jsonString, "{}")
            let decoder = BasicCodableHelperPatchedJSONDecoder()
            let testStructDecoded = try decoder.decode(TestIfNoWithDefaultStruct.self, from: data)
            XCTAssertEqual(testStruct, testStructDecoded)
        } catch {
            XCTFail("Encode/Decode IfNot/WithDefalt Both Failed:\n \(error)")
        }
        
        do {
            let testStruct = TestIfNoWithDefaultStruct(strValue: "Test String")
            
            let encoder = JSONEncoder()
            let data = try encoder.encode(testStruct)
            guard let jsonString = String(data: data, encoding: .utf8) else {
                XCTFail("Unable to get JSON String from data")
                return
            }
            XCTAssertEqual(jsonString, "{\"strValue\":\"Test String\"}")
            let decoder = BasicCodableHelperPatchedJSONDecoder()
            let testStructDecoded = try decoder.decode(TestIfNoWithDefaultStruct.self, from: data)
            XCTAssertEqual(testStruct, testStructDecoded)
        } catch {
            XCTFail("Encode/Decode IfNot/WithDefalt strValue='Test String' Failed:\n \(error)")
        }
        
        do {
            let testStruct = TestIfNoWithDefaultStruct(intValue: 20)
            
            let encoder = JSONEncoder()
            let data = try encoder.encode(testStruct)
            guard let jsonString = String(data: data, encoding: .utf8) else {
                XCTFail("Unable to get JSON String from data")
                return
            }
            XCTAssertEqual(jsonString, "{\"intValue\":20}")
            let decoder = BasicCodableHelperPatchedJSONDecoder()
            let testStructDecoded = try decoder.decode(TestIfNoWithDefaultStruct.self, from: data)
            XCTAssertEqual(testStruct, testStructDecoded)
        } catch {
            XCTFail("Encode/Decode IfNot/WithDefalt intValue=20 Failed:\n \(error)")
        }
    }
    
    func testEncodeDecodeSingleOrArray() {
        do {
            let testStruct = TestSingleOrArrayStruct()
            
            let encoder = JSONEncoder()
            let data = try encoder.encode(testStruct)
            guard let jsonString = String(data: data, encoding: .utf8) else {
                XCTFail("Unable to get JSON String from data")
                return
            }
            //print(jsonString)
            XCTAssertEqual(jsonString, "{\"array\":[]}")
            let decoder = BasicCodableHelperPatchedJSONDecoder()
            let testStructDecoded = try decoder.decode(TestSingleOrArrayStruct.self, from: data)
            XCTAssertEqual(testStruct, testStructDecoded)
        } catch {
            XCTFail("Encode/Decode Single Or Array, Empty Array Failed:\n \(error)")
        }
        
        do {
            let testStruct = TestSingleOrArrayStruct(TestIfNoWithDefaultStruct(strValue: "str", intValue: 0))
            
            let encoder = JSONEncoder()
            //encoder.outputFormatting = .sortedKeys
            let data = try encoder.encode(testStruct)
            /*guard let jsonString = String(data: data, encoding: .utf8) else {
                XCTFail("Unable to get JSON String from data")
                return
            }
            //print(jsonString)
            //XCTAssertEqual(jsonString, "{\"array\":{\"strValue\":\"str\",\"intValue\":0}}")
            XCTAssertEqual(jsonString, "{\"array\":{\"intValue\":0,\"strValue\":\"str\"}}")*/
            let decoder = BasicCodableHelperPatchedJSONDecoder()
            let testStructDecoded = try decoder.decode(TestSingleOrArrayStruct.self, from: data)
            XCTAssertEqual(testStruct, testStructDecoded)
        } catch {
            XCTFail("Encode/Decode Single Or Array, Single Item Array Failed:\n \(error)")
        }
        
        do {
            let testStruct = TestSingleOrArrayStruct(TestIfNoWithDefaultStruct(strValue: "str", intValue: 0),
                                                     TestIfNoWithDefaultStruct(strValue: "str2", intValue: 1))
            
            let encoder = JSONEncoder()
            //encoder.outputFormatting = .sortedKeys
            let data = try encoder.encode(testStruct)
            /*guard let jsonString = String(data: data, encoding: .utf8) else {
                XCTFail("Unable to get JSON String from data")
                return
            }
            //print(jsonString)
            XCTAssertEqual(jsonString, "{\"array\":[{\"intValue\":0,\"strValue\":\"str\"},{\"intValue\":1,\"strValue\":\"str2\"}]}")*/
            let decoder = BasicCodableHelperPatchedJSONDecoder()
            let testStructDecoded = try decoder.decode(TestSingleOrArrayStruct.self, from: data)
            XCTAssertEqual(testStruct, testStructDecoded)
        } catch {
            XCTFail("Encode/Decode Single Or Array, Multiple Item Array Failed:\n \(error)")
        }
    }
    
    func testEncodeIfNotEmpty() {
        struct TestContainer: Codable {
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
        }
        let testFullValue: [Int] = [1,2,3,4]
        let testEmptyValue: [Int] = []
        
        do {
            let encoder = JSONEncoder()
            let data = try encoder.encode(TestContainer(testFullValue))
            
            let decoder = BasicCodableHelperPatchedJSONDecoder()
            let testStruct = try decoder.decode(TestContainer.self, from: data)
            XCTAssertEqual(testStruct.array, testFullValue)
        } catch {
            XCTFail("EncodeIfNotEmpty with values Failed:\n \(error)")
        }
        
        do {
            let encoder = JSONEncoder()
            let data = try encoder.encode(TestContainer(testEmptyValue))
            
            let decoder = BasicCodableHelperPatchedJSONDecoder()
            let testStruct = try decoder.decode(TestContainer.self, from: data)
            XCTAssertEqual(testStruct.array, testEmptyValue)
        } catch {
            XCTFail("EncodeIfNotEmpty with no values Failed:\n \(error)")
        }
    }

    static var allTests = [
        ("testEncodeDecodeIfNotAndWithDefault", testEncodeDecodeIfNotAndWithDefault),
        ("testEncodeDecodeSingleOrArray", testEncodeDecodeSingleOrArray),
        ("testEncodeIfNotEmpty", testEncodeIfNotEmpty)
    ]
}
