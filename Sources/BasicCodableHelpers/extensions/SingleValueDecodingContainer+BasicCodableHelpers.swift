//
//  SingleValueDecodingContainer+BasicCodableHelpers.swift
//  BasicCodableHelpers
//
//  Created by Tyler Anger on 2020-08-11.
//

import Foundation

public extension SingleValueDecodingContainer {
    /// Provides access to a KeyedDecodingContainer for the given SingleValueDecodingContainer
    private mutating func nestedContainer<NestedKey>(keyedBy keyType: NestedKey.Type) throws -> KeyedDecodingContainer<NestedKey> where NestedKey : CodingKey {
        let catcher = try self.decode(_DecoderCatcher.self)
        return try catcher.decoder.container(keyedBy: keyType)
    }
    
    /// Provides an easy method for decoding a well defined dictionaries
    ///
    /// - parameter type: The type of dictionary to decode.
    /// - Returns: Returns a dictionary of key/value paris that were decoded
    mutating func decodeDictionary<Key, Value>(_ type: Dictionary<Key, Value>.Type) throws -> Dictionary<Key, Value> where Key: Decodable, Value: Decodable {
        var rtn = Dictionary<Key, Value>()
        
        let container = try nestedContainer(keyedBy: CodableKey.self)
        for key in container.allKeys {
            var keyValue: Any = key.intValue ?? key.stringValue
            // Patch to convert string bools to real bools when the key is of Bool
            if Key.self == Bool.self,
                let keyStrValue = keyValue as? String,
                let convertedKeyValue = Bool(keyStrValue) {
                keyValue = convertedKeyValue
            } else if Key.self == Int.self,
                let keyStrValue = keyValue as? String,
                let convertedKeyValue = Int(keyStrValue) {
                keyValue = convertedKeyValue
            } else if Key.self == Int8.self,
                let keyStrValue = keyValue as? String,
                let convertedKeyValue = Int(keyStrValue) {
                keyValue = convertedKeyValue
            } else if Key.self == Int16.self,
                let keyStrValue = keyValue as? String,
                let convertedKeyValue = Int(keyStrValue) {
                keyValue = convertedKeyValue
            } else if Key.self == Int32.self,
                let keyStrValue = keyValue as? String,
                let convertedKeyValue = Int(keyStrValue) {
                keyValue = convertedKeyValue
            } else if Key.self == Int64.self,
                let keyStrValue = keyValue as? String,
                let convertedKeyValue = Int(keyStrValue) {
                keyValue = convertedKeyValue
            } else if Key.self == UInt.self,
                let keyStrValue = keyValue as? String,
                let convertedKeyValue = UInt(keyStrValue) {
                keyValue = convertedKeyValue
            } else if Key.self == UInt8.self,
                let keyStrValue = keyValue as? String,
                let convertedKeyValue = UInt(keyStrValue) {
                keyValue = convertedKeyValue
            } else if Key.self == UInt16.self,
                let keyStrValue = keyValue as? String,
                let convertedKeyValue = UInt(keyStrValue) {
                keyValue = convertedKeyValue
            } else if Key.self == UInt32.self,
                let keyStrValue = keyValue as? String,
                let convertedKeyValue = UInt(keyStrValue) {
                keyValue = convertedKeyValue
            } else if Key.self == UInt64.self,
                let keyStrValue = keyValue as? String,
                let convertedKeyValue = UInt(keyStrValue) {
                keyValue = convertedKeyValue
            }
            let simpleDecoder = SimpleDecoder(keyValue)
            simpleDecoder.codingPath = self.codingPath
            let decodedKey = try simpleDecoder.decode(Key.self)
            let decodedValue = try container.decode(Value.self, forKey: key)
            rtn[decodedKey] = decodedValue
        }
        
        return rtn
    }
}
