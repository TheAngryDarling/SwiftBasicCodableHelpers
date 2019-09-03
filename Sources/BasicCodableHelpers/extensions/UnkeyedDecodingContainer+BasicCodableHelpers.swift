//
//  UnkeyedDecodingContainer+BasicCodableHelpers.swift
//  CodableHelpers
//
//  Created by Tyler Anger on 2019-08-05.
//
// Added decodeIfPresent methods with default values

import Foundation

// Ints
public extension UnkeyedDecodingContainer {
    
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter value: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    mutating func decodeIfPresent(_ type: Int8.Type, withDefaultValue value: @autoclosure () -> Int8) throws -> Int8 {
        guard let v = try self.decodeIfPresent(type) else { return value() }
        return v
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter value: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    mutating func decodeIfPresent(_ type: Int16.Type, withDefaultValue value: @autoclosure () -> Int16) throws -> Int16 {
        guard let v = try self.decodeIfPresent(type) else { return value() }
        return v
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter value: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    mutating func decodeIfPresent(_ type: Int32.Type, withDefaultValue value: @autoclosure () -> Int32) throws -> Int32 {
        guard let v = try self.decodeIfPresent(type) else { return value() }
        return v
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter value: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    mutating func decodeIfPresent(_ type: Int64.Type, withDefaultValue value: @autoclosure () -> Int64) throws -> Int64 {
        guard let v = try self.decodeIfPresent(type) else { return value() }
        return v
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter value: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    mutating func decodeIfPresent(_ type: Int.Type, withDefaultValue value: @autoclosure () -> Int) throws -> Int {
        guard let v = try self.decodeIfPresent(type) else { return value() }
        return v
    }
}

// UInts
public extension UnkeyedDecodingContainer {
    
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter value: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    mutating func decodeIfPresent(_ type: UInt8.Type, withDefaultValue value: @autoclosure () -> UInt8) throws -> UInt8 {
        guard let v = try self.decodeIfPresent(type) else { return value() }
        return v
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter value: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    mutating func decodeIfPresent(_ type: UInt16.Type, withDefaultValue value: @autoclosure () -> UInt16) throws -> UInt16 {
        guard let v = try self.decodeIfPresent(type) else { return value() }
        return v
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter value: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    mutating func decodeIfPresent(_ type: UInt32.Type, withDefaultValue value: @autoclosure () -> UInt32) throws -> UInt32 {
        guard let v = try self.decodeIfPresent(type) else { return value() }
        return v
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter value: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    mutating func decodeIfPresent(_ type: UInt64.Type, withDefaultValue value: @autoclosure () -> UInt64) throws -> UInt64 {
        guard let v = try self.decodeIfPresent(type) else { return value() }
        return v
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter value: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    mutating func decodeIfPresent(_ type: UInt.Type, withDefaultValue value: @autoclosure () -> UInt) throws -> UInt {
        guard let v = try self.decodeIfPresent(type) else { return value() }
        return v
    }
}

// Other
public extension UnkeyedDecodingContainer {
    
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter value: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    mutating func decodeIfPresent(_ type: Bool.Type, withDefaultValue value: @autoclosure () -> Bool) throws -> Bool {
        guard let v = try self.decodeIfPresent(type) else { return value() }
        return v
    }
    
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter value: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    mutating func decodeIfPresent(_ type: Float.Type, withDefaultValue value: @autoclosure () -> Float) throws -> Float {
        guard let v = try self.decodeIfPresent(type) else { return value() }
        return v
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter value: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    mutating func decodeIfPresent(_ type: Double.Type, withDefaultValue value: @autoclosure () -> Double) throws -> Double {
        guard let v = try self.decodeIfPresent(type) else { return value() }
        return v
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter value: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    mutating func decodeIfPresent(_ type: String.Type, withDefaultValue value: @autoclosure () -> String) throws -> String {
        guard let v = try self.decodeIfPresent(type) else { return value() }
        return v
    }
    
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter value: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    mutating func decodeIfPresent<T>(_ type: T.Type, withDefaultValue value: @autoclosure () -> T) throws -> T where T : Decodable {
        guard let v = try self.decodeIfPresent(type) else { return value() }
        return v
    }
}

public extension UnkeyedDecodingContainer {
    /// Provides an easy method of decoding a single value/array object into an array
    ///
    /// The following rules apply when decoding:
    /// 1. Tries to decode as a single value object and reutrns as a 1 element array
    /// 2. Tries to decode as an array of objects and returns it
    ///
    /// - parameter type: The type of value to decode.
    /// - Returns: Returns an array of elements that decoded
    mutating func decodeFromSingleOrArray<T>(_ type: T.Type) throws -> [T] where T: Decodable {
        if let singlton: T = try? self.decode(type) { return [singlton] }
        else {
            var unkeyed = try self.nestedUnkeyedContainer()
            var rtn: [T] = []
            while !unkeyed.isAtEnd {
                rtn.append(try unkeyed.decode(type))
            }
            return rtn
        }
    }
    /// Provides an easy method of decoding an optional/single value/array object into an array, or an empty array if no decoding options were available
    ///
    /// The following rules apply when decoding:
    /// 1. Tries to decode as a single value object and reutrns as a 1 element array
    /// 2. Tries to decode as an array of objects and returns it
    /// 3. returns nil if the key is not found
    ///
    /// - parameter type: The type of value to decode.
    /// - Returns: Returns an array of elements that decoded
    mutating func decodeFromSingleOrArrayIfPresent<T>(_ type: T.Type) throws -> [T]? where T: Decodable {
        guard !self.isAtEnd else { return nil }
        return try decodeFromSingleOrArray(type)
    }
    
    /// Provides an easy method of decoding an optional/single value/array object into an array, or an empty array if no decoding options were available
    ///
    /// The following rules apply when decoding:
    /// 1. Tries to decode as a single value object and reutrns as a 1 element array
    /// 2. Tries to decode as an array of objects and returns it
    /// 3. returns default value if key is not found
    ///
    /// - parameter type: The type of value to decode.
    /// - Returns: Returns an array of elements that decoded
    mutating func decodeFromSingleOrArrayIfPresent<T>(_ type: T.Type,
                                                  withDefaultValue defaultValue: @autoclosure () -> [T]) throws -> [T] where T: Decodable {
        guard !self.isAtEnd else { return defaultValue() }
        return try decodeFromSingleOrArray(type)
    }
    
    /// Provides an easy method of decoding an optional/single value/array object into an array, or an empty array if no decoding options were available
    ///
    /// The following rules apply when decoding:
    /// 1. Tries to decode as a single value object and reutrns as a 1 element array
    /// 2. Tries to decode as an array of objects and returns it
    /// 3. returns empty array if key is not found
    ///
    /// - parameter type: The type of value to decode.
    /// - Returns: Returns an array of elements that decoded
    mutating func decodeFromSingleOrArrayIfPresentWithEmptyDefault<T>(_ type: T.Type) throws -> [T] where T: Decodable {
        return try decodeFromSingleOrArrayIfPresent(type, withDefaultValue: Array<T>())
    }
}
