//
//  SimpleDecoder.swift
//  BasicCodableHelpers
//
//  Created by Tyler Anger on 2020-08-11.
//

import Foundation

internal class SimpleDecoder: Decoder, SingleValueDecodingContainer {
    
    /// The path of coding keys taken to get to this point in decoding.
    var codingPath: [CodingKey] = []

    /// Any contextual information set by the user for decoding.
    var userInfo: [CodingUserInfoKey : Any] = [:]
    
    let value: Any?
    
    public init(_ value: Any? = nil) {
        self.value = value
    }
    
    func container<Key>(keyedBy type: Key.Type) throws -> KeyedDecodingContainer<Key> where Key : CodingKey {
           fatalError("Unsupported Method")
    }

    func unkeyedContainer() throws -> UnkeyedDecodingContainer {
           fatalError("Unsupported Method")
    }

    func singleValueContainer() throws -> SingleValueDecodingContainer {
        return self
    }
    
    func decodeNil() -> Bool {
        return (self.value == nil)
    }
    
    private func decode<T>(as t: T.Type) throws -> T where T : Decodable {
        guard let val = self.value else {
            throw DecodingError.typeMismatch(t, DecodingError.Context(codingPath: self.codingPath, debugDescription: "Expected to decode \(t) but found a null value instead."))
        }
        if let v = val as? T {
            return v
        } else {
            return try T(from: self)
        }
        
        
        //throw DecodingError.typeMismatch(t, DecodingError.Context(codingPath: self.codingPath, debugDescription: "Expected to decode \(t) but found \(Swift.type(of: val)) instead."))
    }
    
    func decode(_ type: Bool.Type) throws -> Bool {
        return try decode(as: type)
    }
    
    func decode(_ type: String.Type) throws -> String {
        return try decode(as: type)
    }
    
    func decode(_ type: Double.Type) throws -> Double {
        return try decode(as: type)
    }
    
    func decode(_ type: Float.Type) throws -> Float {
        return try decode(as: type)
    }
    
    private func decodeInt<T>(as t: T.Type) throws -> T where T: FixedWidthInteger {
        guard let val = self.value else {
            throw DecodingError.typeMismatch(t, DecodingError.Context(codingPath: self.codingPath, debugDescription: "Expected to decode \(t) but found a null value instead."))
        }
        if let v = val as? Int {
            return T(v)
        } else if let v = val as? Int8 {
            return T(v)
        } else if let v = val as? Int16 {
            return T(v)
        } else if let v = val as? Int32 {
            return T(v)
        } else if let v = val as? Int64 {
            return T(v)
        } else if let v = val as? UInt {
            return T(v)
        } else if let v = val as? UInt8 {
            return T(v)
        } else if let v = val as? UInt16 {
            return T(v)
        } else if let v = val as? UInt32 {
            return T(v)
        } else if let v = val as? UInt64 {
            return T(v)
        }
        
        throw DecodingError.typeMismatch(t, DecodingError.Context(codingPath: self.codingPath, debugDescription: "Expected to decode \(t) but found \(Swift.type(of: val)) instead."))
    }
    
    func decode(_ type: Int.Type) throws -> Int {
        return try decodeInt(as: type)
    }
    
    func decode(_ type: Int8.Type) throws -> Int8 {
        return try decodeInt(as: type)
    }
    
    func decode(_ type: Int16.Type) throws -> Int16 {
        return try decodeInt(as: type)
    }
    
    func decode(_ type: Int32.Type) throws -> Int32 {
        return try decodeInt(as: type)
    }
    
    func decode(_ type: Int64.Type) throws -> Int64 {
        return try decodeInt(as: type)
    }
    
    func decode(_ type: UInt.Type) throws -> UInt {
        return try decodeInt(as: type)
    }
    
    func decode(_ type: UInt8.Type) throws -> UInt8 {
        return try decodeInt(as: type)
    }
    
    func decode(_ type: UInt16.Type) throws -> UInt16 {
        return try decodeInt(as: type)
    }
    
    func decode(_ type: UInt32.Type) throws -> UInt32 {
        return try decodeInt(as: type)
    }
    
    func decode(_ type: UInt64.Type) throws -> UInt64 {
        return try decodeInt(as: type)
    }
    
    func decode<T>(_ type: T.Type) throws -> T where T : Decodable {
        return try decode(as: type)
    }
    
}
