//
//  SingleValueEncodingContainer+BasicCodableHelpers.swift
//  BasicCodableHelpers
//
//  Created by Tyler Anger on 2020-08-11.
//

import Foundation

public extension SingleValueEncodingContainer {
    /// Provides access to a KeyedDecodingContainer for the given SingleValueDecodingContainer
    private mutating func nestedContainer<NestedKey>(keyedBy keyType: NestedKey.Type, encoding: @escaping (inout KeyedEncodingContainer<NestedKey>) throws -> Void) {
        let catcher = _KeyedEncodingContainerCatcher(event: encoding)
        try! self.encode(catcher)
    }
    
    /// Provides an easy method for encoding dictionaries
    ///
    /// When the key is encoded it must be transformed to one of te following base types: String, Int, UInt, Bool
    /// - Parameter dictionary: The dictionary to encode
    mutating func encodeDictionary<Key, Value>(_ dictionary: [Key: Value]) throws where Key: Encodable, Value: Encodable {
        self.nestedContainer(keyedBy: CodableKey.self) { (container: inout KeyedEncodingContainer<CodableKey>) throws -> Void in
            for(key, val) in dictionary {
                let sEncoder = SimpleEncoder()
                sEncoder.codingPath = container.codingPath
                try key.encode(to: sEncoder)
                guard let keyValue = sEncoder.value else {
                    throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: container.codingPath, debugDescription: "Missing Key encoded value"))
                    
                }
                if let k = keyValue as? String {
                    let codingKey = CodableKey(stringValue: k)
                    try container.encode(val, forKey: codingKey)
                } else {
                    let codingKey = CodableKey(stringValue: "\(keyValue)")
                    try container.encode(val, forKey: codingKey)
                }
            }
        }
    }
}
