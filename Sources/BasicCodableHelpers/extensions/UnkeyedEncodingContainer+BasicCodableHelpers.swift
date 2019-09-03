//
//  UnkeyedEncodingContainer+BasicCodableHelpers.swift
//  CodableHelpers
//
//  Created by Tyler Anger on 2019-08-06.
//

import Foundation

/// Ints
public extension UnkeyedEncodingContainer {
    
    /// Encodes the given value if not equal to another value
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encode(_ value: Int8, ifNot nValue: @autoclosure () -> Int8) throws {
        guard value != nValue() else { return }
        try self.encode(value)
    }
    
    /// Encodes the given value if not equal to another value
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encode(_ value: Int16, ifNot nValue: @autoclosure () -> Int16) throws {
        guard value != nValue() else { return }
        try self.encode(value)
    }
    
    /// Encodes the given value if not equal to another value
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encode(_ value: Int32, ifNot nValue: @autoclosure () -> Int32) throws {
        guard value != nValue() else { return }
        try self.encode(value)
    }
    
    /// Encodes the given value if not equal to another value
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encode(_ value: Int64, ifNot nValue: @autoclosure () -> Int64) throws {
        guard value != nValue() else { return }
        try self.encode(value)
    }
    
    /// Encodes the given value if not equal to another value
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encode(_ value: Int, ifNot nValue: @autoclosure () -> Int) throws {
        guard value != nValue() else { return }
        try self.encode(value)
    }
    
    /// Encodes the given value if not nil and not equal to another value
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encodeIfPresent(_ value: Int8?, andNot nValue: @autoclosure () -> Int8) throws {
        guard let value = value else { return }
        try self.encode(value, ifNot: nValue())
    }
    
    /// Encodes the given value if not nil and not equal to another value
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encodeIfPresent(_ value: Int16?, andNot nValue: @autoclosure () -> Int16) throws {
        guard let value = value else { return }
        try self.encode(value, ifNot: nValue())
    }
    
    /// Encodes the given value if not nil and not equal to another value
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encodeIfPresent(_ value: Int32?, andNot nValue: @autoclosure () -> Int32) throws {
        guard let value = value else { return }
        try self.encode(value, ifNot: nValue())
    }
    
    /// Encodes the given value if not nil and not equal to another value
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encodeIfPresent(_ value: Int64?, andNot nValue: @autoclosure () -> Int64) throws {
        guard let value = value else { return }
        try self.encode(value, ifNot: nValue())
    }
    
    /// Encodes the given value if not nil and not equal to another value
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encodeIfPresent(_ value: Int?, andNot nValue: @autoclosure () -> Int) throws {
        guard let value = value else { return }
        try self.encode(value, ifNot: nValue())
    }
}

/// UInts
public extension UnkeyedEncodingContainer {
    
    /// Encodes the given value if not equal to another value
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encode(_ value: UInt8, ifNot nValue: @autoclosure () -> UInt8) throws {
        guard value != nValue() else { return }
        try self.encode(value)
    }
    
    /// Encodes the given value if not equal to another value
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encode(_ value: UInt16, ifNot nValue: @autoclosure () -> UInt16) throws {
        guard value != nValue() else { return }
        try self.encode(value)
    }
    
    /// Encodes the given value if not equal to another value
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encode(_ value: UInt32, ifNot nValue: @autoclosure () -> UInt32) throws {
        guard value != nValue() else { return }
        try self.encode(value)
    }
    
    /// Encodes the given value if not equal to another value
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encode(_ value: UInt64, ifNot nValue: @autoclosure () -> UInt64) throws {
        guard value != nValue() else { return }
        try self.encode(value)
    }
    
    /// Encodes the given value if not equal to another value
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encode(_ value: UInt, ifNot nValue: @autoclosure () -> UInt) throws {
        guard value != nValue() else { return }
        try self.encode(value)
    }
    
    /// Encodes the given value if not nil and not equal to another value
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encodeIfPresent(_ value: UInt8?, andNot nValue: @autoclosure () -> UInt8) throws {
        guard let value = value else { return }
        try self.encode(value, ifNot: nValue())
    }
    
    /// Encodes the given value if not nil and not equal to another value
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encodeIfPresent(_ value: UInt16?, andNot nValue: @autoclosure () -> UInt16) throws {
        guard let value = value else { return }
        try self.encode(value, ifNot: nValue())
    }
    
    /// Encodes the given value if not nil and not equal to another value
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encodeIfPresent(_ value: UInt32?, andNot nValue: @autoclosure () -> UInt32) throws {
        guard let value = value else { return }
        try self.encode(value, ifNot: nValue())
    }
    
    /// Encodes the given value if not equal to another value
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encodeIfPresent(_ value: UInt64?, andNot nValue: @autoclosure () -> UInt64) throws {
        guard let value = value else { return }
        try self.encode(value, ifNot: nValue())
    }
    
    /// Encodes the given value if not nil and not equal to another value
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encodeIfPresent(_ value: UInt?, andNot nValue: @autoclosure () -> UInt) throws {
        guard let value = value else { return }
        try self.encode(value, ifNot: nValue())
    }
}

/// Other
public extension UnkeyedEncodingContainer {
    
    /// Encodes the given value.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encode(_ value: Bool, ifNot nValue: @autoclosure () -> Bool) throws {
        guard value != nValue() else { return }
        try self.encode(value)
    }
    
    /// Encodes the given value.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encodeIfPresent(_ value: Bool?, andNot nValue: @autoclosure () -> Bool) throws {
        guard let value = value else { return }
        try self.encode(value, ifNot: nValue())
    }
    
    /// Encodes the given value.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encode(_ value: Float, ifNot nValue: @autoclosure () -> Float) throws {
        guard value != nValue() else { return }
        try self.encode(value)
    }
    
    /// Encodes the given value.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encodeIfPresent(_ value: Float?, andNot nValue: @autoclosure () -> Float) throws {
        guard let value = value else { return }
        try self.encode(value, ifNot: nValue())
    }
    
    /// Encodes the given value.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encode(_ value: Double, ifNot nValue: @autoclosure () -> Double) throws {
        guard value != nValue() else { return }
        try self.encode(value)
    }
    
    /// Encodes the given value.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encodeIfPresent(_ value: Double?, andNot nValue: @autoclosure () -> Double) throws {
        guard let value = value else { return }
        try self.encode(value, ifNot: nValue())
    }
    
    /// Encodes the given value.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encode(_ value: String, ifNot nValue: @autoclosure () -> String) throws {
        guard value != nValue() else { return }
        try self.encode(value)
    }
    
    /// Encodes the given value.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encodeIfPresent(_ value: String?, andNot nValue: @autoclosure () -> String) throws {
        guard let value = value else { return }
        try self.encode(value, ifNot: nValue())
    }
    
    /// Encodes the given value.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encode<T>(_ value: T, ifNot nValue: @autoclosure () -> T) throws where T: Encodable, T: Equatable {
        guard value != nValue() else { return }
        try self.encode(value)
    }
    
    /// Encodes the given value.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    mutating func encodeIfPresent<T>(_ value: T?, andNot nValue: @autoclosure () -> T) throws where T: Encodable, T: Equatable {
        guard let value = value else { return }
        try self.encode(value, ifNot: nValue())
    }
}

public extension UnkeyedEncodingContainer {
    /// Provides an easy method to encode an array of encodable objects in a dynamic way
    ///
    /// The following rules apply when encoding:
    /// 1. If collection count is 0, An empty array gets encoded
    /// 2. If collection count is 1, encodes the object as a single value and not an array
    /// 3. Encodes as a regular array
    ///
    /// - Parameters:
    ///   - collection: The collection to encode
    mutating func encodeToSingleOrArray<C>(_ collection: C) throws where C: Collection, C.Element: Encodable {
        
        if collection.count == 1 {
            try self.encode(collection[collection.startIndex])
        } else {
            
            var container = self.nestedUnkeyedContainer()
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
    mutating func encodeToSingleOrArrayIfPresent<C>(_ collection: C?) throws where C: Collection, C.Element: Encodable {
        guard let collection = collection else { return }
        try self.encodeToSingleOrArray(collection)
    }
}
