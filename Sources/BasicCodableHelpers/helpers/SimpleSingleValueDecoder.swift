//
//  SimpleSingleValueDecoder.swift
//  BasicCodableHelpers
//
//  Created by Tyler Anger on 2020-08-11.
//

import Foundation

/// Class to reproduce a Decoder for a SingleValueDecodingContainer with a given value
public class SimpleSingleValueDecoder: Decoder, SingleValueDecodingContainer {
    
    /// The path of coding keys taken to get to this point in decoding.
    public var codingPath: [CodingKey] = []

    /// Any contextual information set by the user for decoding.
    public var userInfo: [CodingUserInfoKey : Any] = [:]
    
    let value: Any?
    
    
    /// Create a new Decoder used to decode a single value
    /// - Parameters:
    ///   - value: The value that will be decoded
    ///   - codingPath: The coding path to report
    ///   - userInfo: The userInfo to report
    public init(_ value: Any? = nil,
                codingPath: [CodingKey] = [],
                userInfo: [CodingUserInfoKey : Any] = [:]) {
        self.value = value
        self.codingPath = codingPath
        self.userInfo = userInfo
    }
    
    
    /// Create a new Decoder used to decode a single value
    /// - Parameters:
    ///   - value: The value that will be decoded
    ///   - decoder: The decoder to copy properties from
    public convenience init(_ value: Any? = nil,
                            decoder: Decoder) {
        self.init(value,
                  codingPath: decoder.codingPath,
                  userInfo: decoder.userInfo)
    }
    
    /// Create a new Decoder used to decode a single value
    /// - Parameters:
    ///   - value: The value that will be decoded
    ///   - container: The container to copy the properties from
    public convenience init<Container>(_ value: Any? = nil,
                               container: Container) where Container: KeyedDecodingContainerProtocol {
        
        self.init(value,
                  codingPath: container.codingPath)
    }
    
    /// Create a new Decoder used to decode a single value
    /// - Parameters:
    ///   - value: The value that will be decoded
    ///   - container: The container to copy the properties from
    public convenience init<Container>(_ value: Any? = nil,
                               container: Container) where Container: UnkeyedDecodingContainer {
        self.init(value,
                  codingPath: container.codingPath)
    }
    
    /// Create a new Decoder used to decode a single value
    /// - Parameters:
    ///   - value: The value that will be decoded
    ///   - container: The container to copy the properties from
    public convenience init<Container>(_ value: Any? = nil,
                               container: Container) where Container: SingleValueDecodingContainer {
        self.init(value,
                  codingPath: container.codingPath)
    }
    
    @available(*, deprecated, message: "Not available on this decoder")
    public func container<Key>(keyedBy type: Key.Type) throws -> KeyedDecodingContainer<Key> where Key : CodingKey {
           fatalError("Unsupported Method")
    }

    @available(*, deprecated, message: "Not available on this decoder")
    public func unkeyedContainer() throws -> UnkeyedDecodingContainer {
           fatalError("Unsupported Method")
    }

    public func singleValueContainer() throws -> SingleValueDecodingContainer {
        return self
    }
    
    public func decodeNil() -> Bool {
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
    
    public func decode(_ type: Bool.Type) throws -> Bool {
        return try decode(as: type)
    }
    
    public func decode(_ type: String.Type) throws -> String {
        return try decode(as: type)
    }
    
    public func decode(_ type: Double.Type) throws -> Double {
        return try decode(as: type)
    }
    
    public func decode(_ type: Float.Type) throws -> Float {
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
    
    public func decode(_ type: Int.Type) throws -> Int {
        return try decodeInt(as: type)
    }
    
    public func decode(_ type: Int8.Type) throws -> Int8 {
        return try decodeInt(as: type)
    }
    
    public func decode(_ type: Int16.Type) throws -> Int16 {
        return try decodeInt(as: type)
    }
    
    public func decode(_ type: Int32.Type) throws -> Int32 {
        return try decodeInt(as: type)
    }
    
    public func decode(_ type: Int64.Type) throws -> Int64 {
        return try decodeInt(as: type)
    }
    
    public func decode(_ type: UInt.Type) throws -> UInt {
        return try decodeInt(as: type)
    }
    
    public func decode(_ type: UInt8.Type) throws -> UInt8 {
        return try decodeInt(as: type)
    }
    
    public func decode(_ type: UInt16.Type) throws -> UInt16 {
        return try decodeInt(as: type)
    }
    
    public func decode(_ type: UInt32.Type) throws -> UInt32 {
        return try decodeInt(as: type)
    }
    
    public func decode(_ type: UInt64.Type) throws -> UInt64 {
        return try decodeInt(as: type)
    }
    
    public func decode<T>(_ type: T.Type) throws -> T where T : Decodable {
        return try decode(as: type)
    }
    
}
