//
//  KeyedDecodingContainerProtocol+BasicCodableHelpers.swift
//  CodableHelpers
//
//  Created by Tyler Anger on 2019-08-05.
//
// Added decodeIfPresent methods with default values

import Foundation


// Ints
public extension KeyedDecodingContainerProtocol {
    
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - parameter value: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: Int8.Type, forKey key: Self.Key, withDefaultValue value: @autoclosure () -> Int8) throws -> Int8 {
        guard let v = try self.decodeIfPresent(type, forKey: key) else { return value() }
        return v
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - parameter value: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: Int16.Type, forKey key: Self.Key, withDefaultValue value: @autoclosure () -> Int16) throws -> Int16 {
        guard let v = try self.decodeIfPresent(type, forKey: key) else { return value() }
        return v
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - parameter value: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: Int32.Type, forKey key: Self.Key, withDefaultValue value: @autoclosure () -> Int32) throws -> Int32 {
        guard let v = try self.decodeIfPresent(type, forKey: key) else { return value() }
        return v
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - parameter value: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: Int64.Type, forKey key: Self.Key, withDefaultValue value: @autoclosure () -> Int64) throws -> Int64 {
        guard let v = try self.decodeIfPresent(type, forKey: key) else { return value() }
        return v
    }
    
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - parameter value: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: Int.Type, forKey key: Self.Key, withDefaultValue value: @autoclosure () -> Int) throws -> Int {
        guard let v = try self.decodeIfPresent(type, forKey: key) else { return value() }
        return v
    }
}

// UInts
public extension KeyedDecodingContainerProtocol {
    
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - parameter value: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: UInt8.Type, forKey key: Self.Key, withDefaultValue value: @autoclosure () -> UInt8) throws -> UInt8 {
        guard let v = try self.decodeIfPresent(type, forKey: key) else { return value() }
        return v
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - parameter value: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: UInt16.Type, forKey key: Self.Key, withDefaultValue value: @autoclosure () -> UInt16) throws -> UInt16 {
        guard let v = try self.decodeIfPresent(type, forKey: key) else { return value() }
        return v
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - parameter value: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: UInt32.Type, forKey key: Self.Key, withDefaultValue value: @autoclosure () -> UInt32) throws -> UInt32 {
        guard let v = try self.decodeIfPresent(type, forKey: key) else { return value() }
        return v
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - parameter value: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: UInt64.Type, forKey key: Self.Key, withDefaultValue value: @autoclosure () -> UInt64) throws -> UInt64 {
        guard let v = try self.decodeIfPresent(type, forKey: key) else { return value() }
        return v
    }
    
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - parameter value: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: UInt.Type, forKey key: Self.Key, withDefaultValue value: @autoclosure () -> UInt) throws -> UInt {
        guard let v = try self.decodeIfPresent(type, forKey: key) else { return value() }
        return v
    }
}

// Other
public extension KeyedDecodingContainerProtocol {
    
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - parameter value: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: Bool.Type, forKey key: Self.Key, withDefaultValue value: @autoclosure () -> Bool) throws -> Bool {
        guard let v = try self.decodeIfPresent(type, forKey: key) else { return value() }
        return v
    }
    
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - parameter value: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: Float.Type, forKey key: Self.Key, withDefaultValue value: @autoclosure () -> Float) throws -> Float {
        guard let v = try self.decodeIfPresent(type, forKey: key) else { return value() }
        return v
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - parameter value: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: Double.Type, forKey key: Self.Key, withDefaultValue value: @autoclosure () -> Double) throws -> Double {
        guard let v = try self.decodeIfPresent(type, forKey: key) else { return value() }
        return v
    }
    
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - parameter value: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: String.Type, forKey key: Self.Key, withDefaultValue value: @autoclosure () -> String) throws -> String {
        guard let v = try self.decodeIfPresent(type, forKey: key) else { return value() }
        return v
    }
    
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - parameter value: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent<T>(_ type: T.Type, forKey key: Self.Key, withDefaultValue value: @autoclosure () -> T) throws -> T where T : Decodable {
        guard let v = try self.decodeIfPresent(type, forKey: key) else { return value() }
        return v
    }
}

public extension KeyedDecodingContainerProtocol {
    /// Provides an easy method of decoding a single value/array object into an array
    ///
    /// The following rules apply when decoding:
    /// 1. Tries to decode as a single value object and reutrns as a 1 element array
    /// 2. Tries to decode as an array of objects and returns it
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - Returns: Returns an array of elements that decoded
    func decodeFromSingleOrArray<T>(_ type: T.Type, forKey key: Self.Key) throws -> [T] where T: Decodable {
        if let singlton: T = try? self.decode(type, forKey: key) { return [singlton] }
        else {
            var unkeyed = try self.nestedUnkeyedContainer(forKey: key)
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
    /// - parameter key: The key that the decoded value is associated with.
    /// - Returns: Returns an array of elements that decoded
    func decodeFromSingleOrArrayIfPresent<T>(_ type: T.Type, forKey key: Self.Key) throws -> [T]? where T: Decodable {
        guard self.contains(key) else { return nil }
        return try decodeFromSingleOrArray(type, forKey: key)
    }
    
    /// Provides an easy method of decoding an optional/single value/array object into an array, or an empty array if no decoding options were available
    ///
    /// The following rules apply when decoding:
    /// 1. Tries to decode as a single value object and reutrns as a 1 element array
    /// 2. Tries to decode as an array of objects and returns it
    /// 3. returns default value if key not found
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - Returns: Returns an array of elements that decoded
    func decodeFromSingleOrArrayIfPresent<T>(_ type: T.Type,
                                         forKey key: Self.Key,
                                         withDefaultValue defaultValue: @autoclosure () -> [T]) throws -> [T] where T: Decodable {
        guard self.contains(key) else { return defaultValue() }
        return try decodeFromSingleOrArray(type, forKey: key)
    }
    
    /// Provides an easy method of decoding an optional/single value/array object into an array, or an empty array if no decoding options were available
    ///
    /// The following rules apply when decoding:
    /// 1. Tries to decode as a single value object and reutrns as a 1 element array
    /// 2. Tries to decode as an array of objects and returns it
    /// 3. returns empty array if key is not found
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - Returns: Returns an array of elements that decoded
    func decodeFromSingleOrArrayIfPresentWithEmptyDefault<T>(_ type: T.Type, forKey key: Self.Key) throws -> [T] where T: Decodable {
        return try self.decodeFromSingleOrArrayIfPresent(type,
                                                     forKey: key,
                                                     withDefaultValue: Array<T>())
    }
}

public extension KeyedDecodingContainerProtocol {
    /// Provides an easy method for decoding a well defined dictionaries
    ///
    /// - parameter type: The type of dictionary to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - Returns: Returns a dictionary of key/value paris that were decoded
    mutating func decodeDictionary<Key, Value>(_ type: Dictionary<Key, Value>.Type, forKey key: Self.Key) throws -> Dictionary<Key, Value> where Key: Decodable, Value: Decodable {
        var rtn = Dictionary<Key, Value>()
        
        let container = try nestedContainer(keyedBy: CodableKey.self, forKey: key)
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
    /// Provides an easy method for decoding a well defined dictionaries
    ///
    /// - parameter type: The type of dictionary to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - Returns: Returns a dictionary of key/value paris that were decoded or nil if key does not exist
    mutating func decodeDictionaryIfPresent<Key, Value>(_ type: Dictionary<Key, Value>.Type,
                                                        forKey key: Self.Key) throws -> Dictionary<Key, Value>? where Key: Decodable, Value: Decodable {
        guard self.contains(key) else { return nil }
        return try decodeDictionary(type, forKey: key)
    }
    /// Provides an easy method for decoding a well defined dictionaries
    ///
    /// - parameter type: The type of dictionary to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - parameter defaultValue: The value to return if key does not exist
    /// - Returns: Returns a dictionary of key/value paris that were decoded
    mutating func decodeDictionaryIfPresent<Key, Value>(_ type: Dictionary<Key, Value>.Type,
                                                        forKey key: Self.Key,
                                                        withDefaultValue defaultValue: @autoclosure () -> Dictionary<Key, Value>) throws -> Dictionary<Key, Value> where Key: Decodable, Value: Decodable {
        return (try decodeDictionaryIfPresent(type, forKey: key)) ?? defaultValue()
    }
}
