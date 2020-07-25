//
//  KeyedEncodingContainerProtocol+BasicCodableHelpers.swift
//  CodableHelpers
//
//  Created by Tyler Anger on 2019-08-06.
//

import Foundation

/// Ints
public extension KeyedEncodingContainerProtocol {
    
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encode(_ value: Int8, forKey key: Self.Key, ifNot nValue: @autoclosure () -> Int8) throws {
        guard value != nValue() else { return }
        try self.encode(value, forKey: key)
    }
    
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encode(_ value: Int16, forKey key: Self.Key, ifNot nValue: @autoclosure () -> Int16) throws {
        guard value != nValue() else { return }
        try self.encode(value, forKey: key)
    }
    
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encode(_ value: Int32, forKey key: Self.Key, ifNot nValue: @autoclosure () -> Int32) throws {
        guard value != nValue() else { return }
        try self.encode(value, forKey: key)
    }
    
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encode(_ value: Int64, forKey key: Self.Key, ifNot nValue: @autoclosure () -> Int64) throws {
        guard value != nValue() else { return }
        try self.encode(value, forKey: key)
    }
    
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encode(_ value: Int, forKey key: Self.Key, ifNot nValue: @autoclosure () -> Int) throws {
        guard value != nValue() else { return }
        try self.encode(value, forKey: key)
    }
    
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encodeIfPresent(_ value: Int8?, forKey key: Self.Key, andNot nValue: @autoclosure () -> Int8) throws {
        guard let value = value else { return }
        try self.encode(value, forKey: key, ifNot: nValue())
    }
    
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encodeIfPresent(_ value: Int16?, forKey key: Self.Key, andNot nValue: @autoclosure () -> Int16) throws {
        guard let value = value else { return }
        try self.encode(value, forKey: key, ifNot: nValue())
    }
    
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encodeIfPresent(_ value: Int32?, forKey key: Self.Key, andNot nValue: @autoclosure () -> Int32) throws {
        guard let value = value else { return }
        try self.encode(value, forKey: key, ifNot: nValue())
    }
    
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encodeIfPresent(_ value: Int64?, forKey key: Self.Key, ifNot nValue: @autoclosure () -> Int64) throws {
        guard let value = value else { return }
        try self.encode(value, forKey: key, ifNot: nValue())
    }
    
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encodeIfPresent(_ value: Int?, forKey key: Self.Key, ifNot nValue: @autoclosure () -> Int) throws {
        guard let value = value else { return }
        try self.encode(value, forKey: key, ifNot: nValue())
    }
}

/// UInts
public extension KeyedEncodingContainerProtocol {
    
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encode(_ value: UInt8, forKey key: Self.Key, ifNot nValue: @autoclosure () -> UInt8) throws {
        guard value != nValue() else { return }
        try self.encode(value, forKey: key)
    }
    
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encode(_ value: UInt16, forKey key: Self.Key, ifNot nValue: @autoclosure () -> UInt16) throws {
        guard value != nValue() else { return }
        try self.encode(value, forKey: key)
    }
    
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encode(_ value: UInt32, forKey key: Self.Key, ifNot nValue: @autoclosure () -> UInt32) throws {
        guard value != nValue() else { return }
        try self.encode(value, forKey: key)
    }
    
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encode(_ value: UInt64, forKey key: Self.Key, ifNot nValue: @autoclosure () -> UInt64) throws {
        guard value != nValue() else { return }
        try self.encode(value, forKey: key)
    }
    
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encode(_ value: UInt, forKey key: Self.Key, ifNot nValue: @autoclosure () -> UInt) throws {
        guard value != nValue() else { return }
        try self.encode(value, forKey: key)
    }
    
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encodeIfPresent(_ value: UInt8?, forKey key: Self.Key, andNot nValue: @autoclosure () -> UInt8) throws {
        guard let value = value else { return }
        try self.encode(value, forKey: key, ifNot: nValue())
    }
    
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encodeIfPresent(_ value: UInt16?, forKey key: Self.Key, andNot nValue: @autoclosure () -> UInt16) throws {
        guard let value = value else { return }
        try self.encode(value, forKey: key, ifNot: nValue())
    }
    
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encodeIfPresent(_ value: UInt32?, forKey key: Self.Key, andNot nValue: @autoclosure () -> UInt32) throws {
        guard let value = value else { return }
        try self.encode(value, forKey: key, ifNot: nValue())
    }
    
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encodeIfPresent(_ value: UInt64?, forKey key: Self.Key, ifNot nValue: @autoclosure () -> UInt64) throws {
        guard let value = value else { return }
        try self.encode(value, forKey: key, ifNot: nValue())
    }
    
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encodeIfPresent(_ value: UInt?, forKey key: Self.Key, ifNot nValue: @autoclosure () -> UInt) throws {
        guard let value = value else { return }
        try self.encode(value, forKey: key, ifNot: nValue())
    }
    
    
}

// other
public extension KeyedEncodingContainerProtocol {
    
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encode(_ value: Bool, forKey key: Self.Key, ifNot nValue: @autoclosure () -> Bool) throws {
        guard value != nValue() else { return }
        try self.encode(value, forKey: key)
    }
    
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encodeIfPresent(_ value: Bool?, forKey key: Self.Key, andNot nValue: @autoclosure () -> Bool) throws {
        guard let value = value else { return }
        try self.encode(value, forKey: key, ifNot: nValue())
    }
    
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encode(_ value: Float, forKey key: Self.Key, ifNot nValue: @autoclosure () -> Float) throws {
        guard value != nValue() else { return }
        try self.encode(value, forKey: key)
    }
    
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encodeIfPresent(_ value: Float?, forKey key: Self.Key, andNot nValue: @autoclosure () -> Float) throws {
        guard let value = value else { return }
        try self.encode(value, forKey: key, ifNot: nValue())
    }
    
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encode(_ value: Double, forKey key: Self.Key, ifNot nValue: @autoclosure () -> Double) throws {
        guard value != nValue() else { return }
        try self.encode(value, forKey: key)
    }
    
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encodeIfPresent(_ value: Double?, forKey key: Self.Key, andNot nValue: @autoclosure () -> Double) throws {
        guard let value = value else { return }
        try self.encode(value, forKey: key, ifNot: nValue())
    }
    
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encode(_ value: String, forKey key: Self.Key, ifNot nValue: @autoclosure () -> String) throws {
        guard value != nValue() else { return }
        try self.encode(value, forKey: key)
    }
    
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encodeIfPresent(_ value: String?, forKey key: Self.Key, andNot nValue: @autoclosure () -> String) throws {
        guard let value = value else { return }
        try self.encode(value, forKey: key, ifNot: nValue())
    }
    
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encode<T>(_ value: T, forKey key: Self.Key, ifNot nValue: @autoclosure () -> T) throws where T: Encodable, T: Equatable {
        guard value != nValue() else { return }
        try self.encode(value, forKey: key)
    }
    
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encodeIfPresent<T>(_ value: T?, forKey key: Self.Key, andNot nValue: @autoclosure () -> T) throws where T: Encodable, T: Equatable {
        guard let value = value else { return }
        try self.encode(value, forKey: key, ifNot: nValue())
    }
    
    /// Encode a collection of objects if the collection has any objects
    /// - Parameters:
    ///   - value: The collection of objects to encode
    ///   - key: The key to associate the value with.
    /// - Throws: `EncodingError.invalidValue` if the given value is invalid in
    mutating func encodeIfNotEmpty<C>(_ value: C, forKey key: Self.Key) throws where C: Encodable, C: Collection {
        guard value.count > 0 else { return }
        try self.encode(value, forKey: key)
    }
    
    /// Encode a collection of objects if the collection has any objects
    /// - Parameters:
    ///   - value: The collection of objects to encode
    ///   - key: The key to associate the value with.
    /// - Throws: `EncodingError.invalidValue` if the given value is invalid in
    mutating func encodeIfPresentAndNotEmpty<C>(_ value: C?, forKey key: Self.Key) throws where C: Encodable, C: Collection {
        guard let v = value else { return }
        try encodeIfNotEmpty(v, forKey: key)
    }
}

public extension KeyedEncodingContainerProtocol {
    /// Provides an easy method to encode an array of encodable objects in a dynamic way
    ///
    /// The following rules apply when encoding:
    /// 1. If collection count is 0, An empty array gets encoded
    /// 2. If collection count is 1, encodes the object as a single value and not an array
    /// 3. Encodes as a regular array
    ///
    /// - Parameters:
    ///   - collection: The collection to encode
    ///   - key: The key to associate the value with.
    mutating func encodeToSingleOrArray<C>(_ collection: C, forKey key: Self.Key) throws where C: Collection, C.Element: Encodable {
        
        if collection.count == 1 {
            try self.encode(collection[collection.startIndex], forKey: key)
        } else {
           
            var container = self.nestedUnkeyedContainer(forKey: key)
            for o in collection {
                try container.encode(o)
            }
        }
    }
    
    /// Provides an easy method to encode an array of encodable objects in a dynamic way
    ///
    /// The following rules apply when encoding:
    /// 1. If collection is nil, nothing gets encoded
    /// 2. If collection count is 0, An empty array gets encoded
    /// 3. If collection count is 1, encodes the object as a single value and not an array
    /// 4. Encodes as a regular array
    ///
    /// - Parameters:
    ///   - collection: The collection to encode
    ///   - key: The key to associate the value with.
    mutating func encodeToSingleOrArrayIfPresent<C>(_ collection: C?, forKey key: Self.Key) throws where C: Collection, C.Element: Encodable {
        guard let collection = collection else { return }
        try self.encodeToSingleOrArray(collection, forKey: key)
    }
}
