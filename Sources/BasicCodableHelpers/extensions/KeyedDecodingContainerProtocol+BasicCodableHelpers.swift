//  This file was dynamically generated from 'KeyedDecodingContainerProtocol+BasicCodableHelpers.dswift' by Dynamic Swift.  Please do not modify directly.
//  Dynamic Swift can be found at https://github.com/TheAngryDarling/dswift.

//
//  KeyedDecodingContainerProtocol+BasicCodableHelpers.dswift
//  BasicCodableHelpers
//
//  Created by Tyler Anger on 2021-02-20.
//

import Foundation
#if swift(>=4.2)
    #if canImport(CustomInts)
import CustomInts
    #endif
#endif






//Ints
public extension KeyedDecodingContainerProtocol {
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - parameter defaultValue: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: Int8.Type,
                         forKey key: Self.Key,
                         withDefaultValue defaultValue: @autoclosure () -> Int8) throws -> Int8 {
        return (try self.decodeIfPresent(type, forKey: key)) ?? defaultValue()
    }    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - parameter defaultValue: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: Int16.Type,
                         forKey key: Self.Key,
                         withDefaultValue defaultValue: @autoclosure () -> Int16) throws -> Int16 {
        return (try self.decodeIfPresent(type, forKey: key)) ?? defaultValue()
    }    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - parameter defaultValue: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: Int32.Type,
                         forKey key: Self.Key,
                         withDefaultValue defaultValue: @autoclosure () -> Int32) throws -> Int32 {
        return (try self.decodeIfPresent(type, forKey: key)) ?? defaultValue()
    }    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - parameter defaultValue: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: Int64.Type,
                         forKey key: Self.Key,
                         withDefaultValue defaultValue: @autoclosure () -> Int64) throws -> Int64 {
        return (try self.decodeIfPresent(type, forKey: key)) ?? defaultValue()
    }    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - parameter defaultValue: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: Int.Type,
                         forKey key: Self.Key,
                         withDefaultValue defaultValue: @autoclosure () -> Int) throws -> Int {
        return (try self.decodeIfPresent(type, forKey: key)) ?? defaultValue()
    }
}


//UInts
public extension KeyedDecodingContainerProtocol {
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - parameter defaultValue: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: UInt8.Type,
                         forKey key: Self.Key,
                         withDefaultValue defaultValue: @autoclosure () -> UInt8) throws -> UInt8 {
        return (try self.decodeIfPresent(type, forKey: key)) ?? defaultValue()
    }    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - parameter defaultValue: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: UInt16.Type,
                         forKey key: Self.Key,
                         withDefaultValue defaultValue: @autoclosure () -> UInt16) throws -> UInt16 {
        return (try self.decodeIfPresent(type, forKey: key)) ?? defaultValue()
    }    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - parameter defaultValue: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: UInt32.Type,
                         forKey key: Self.Key,
                         withDefaultValue defaultValue: @autoclosure () -> UInt32) throws -> UInt32 {
        return (try self.decodeIfPresent(type, forKey: key)) ?? defaultValue()
    }    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - parameter defaultValue: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: UInt64.Type,
                         forKey key: Self.Key,
                         withDefaultValue defaultValue: @autoclosure () -> UInt64) throws -> UInt64 {
        return (try self.decodeIfPresent(type, forKey: key)) ?? defaultValue()
    }    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - parameter defaultValue: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: UInt.Type,
                         forKey key: Self.Key,
                         withDefaultValue defaultValue: @autoclosure () -> UInt) throws -> UInt {
        return (try self.decodeIfPresent(type, forKey: key)) ?? defaultValue()
    }
}


//Other
public extension KeyedDecodingContainerProtocol {
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - parameter defaultValue: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: Bool.Type,
                         forKey key: Self.Key,
                         withDefaultValue defaultValue: @autoclosure () -> Bool) throws -> Bool {
        return (try self.decodeIfPresent(type, forKey: key)) ?? defaultValue()
    }    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - parameter defaultValue: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: Double.Type,
                         forKey key: Self.Key,
                         withDefaultValue defaultValue: @autoclosure () -> Double) throws -> Double {
        return (try self.decodeIfPresent(type, forKey: key)) ?? defaultValue()
    }    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - parameter defaultValue: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: Float.Type,
                         forKey key: Self.Key,
                         withDefaultValue defaultValue: @autoclosure () -> Float) throws -> Float {
        return (try self.decodeIfPresent(type, forKey: key)) ?? defaultValue()
    }    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - parameter defaultValue: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: String.Type,
                         forKey key: Self.Key,
                         withDefaultValue defaultValue: @autoclosure () -> String) throws -> String {
        return (try self.decodeIfPresent(type, forKey: key)) ?? defaultValue()
    }    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - parameter defaultValue: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent<T>(_ type: T.Type,
                         forKey key: Self.Key,
                         withDefaultValue defaultValue: @autoclosure () -> T) throws -> T where T: Decodable {
        return (try self.decodeIfPresent(type, forKey: key)) ?? defaultValue()
    }
}



#if swift(>=4.2)
    #if canImport(CustomInts)
//Custom Ints
public extension KeyedDecodingContainerProtocol {
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - parameter defaultValue: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: Int24.Type,
                         forKey key: Self.Key,
                         withDefaultValue defaultValue: @autoclosure () -> Int24) throws -> Int24 {
        return (try self.decodeIfPresent(type, forKey: key)) ?? defaultValue()
    }    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - parameter defaultValue: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: Int40.Type,
                         forKey key: Self.Key,
                         withDefaultValue defaultValue: @autoclosure () -> Int40) throws -> Int40 {
        return (try self.decodeIfPresent(type, forKey: key)) ?? defaultValue()
    }    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - parameter defaultValue: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: Int48.Type,
                         forKey key: Self.Key,
                         withDefaultValue defaultValue: @autoclosure () -> Int48) throws -> Int48 {
        return (try self.decodeIfPresent(type, forKey: key)) ?? defaultValue()
    }    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - parameter defaultValue: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: Int56.Type,
                         forKey key: Self.Key,
                         withDefaultValue defaultValue: @autoclosure () -> Int56) throws -> Int56 {
        return (try self.decodeIfPresent(type, forKey: key)) ?? defaultValue()
    }
}

//Custom UInts
public extension KeyedDecodingContainerProtocol {
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - parameter defaultValue: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: UInt24.Type,
                         forKey key: Self.Key,
                         withDefaultValue defaultValue: @autoclosure () -> UInt24) throws -> UInt24 {
        return (try self.decodeIfPresent(type, forKey: key)) ?? defaultValue()
    }    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - parameter defaultValue: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: UInt40.Type,
                         forKey key: Self.Key,
                         withDefaultValue defaultValue: @autoclosure () -> UInt40) throws -> UInt40 {
        return (try self.decodeIfPresent(type, forKey: key)) ?? defaultValue()
    }    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - parameter defaultValue: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: UInt48.Type,
                         forKey key: Self.Key,
                         withDefaultValue defaultValue: @autoclosure () -> UInt48) throws -> UInt48 {
        return (try self.decodeIfPresent(type, forKey: key)) ?? defaultValue()
    }    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - parameter defaultValue: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: UInt56.Type,
                         forKey key: Self.Key,
                         withDefaultValue defaultValue: @autoclosure () -> UInt56) throws -> UInt56 {
        return (try self.decodeIfPresent(type, forKey: key)) ?? defaultValue()
    }
}

    #endif
#endif


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
    func decodeFromSingleOrArray<T>(_ type: T.Type,
                                    forKey key: Self.Key) throws -> [T] where T: Decodable {
        if let singlton: T = try? self.decode(type, forKey: key) { return [singlton] }
        else {
            /*var unkeyed = try self.nestedUnkeyedContainer(forKey: key)
            var rtn: [T] = []
            while !unkeyed.isAtEnd {
                rtn.append(try unkeyed.decode(type))
            }
            return rtn*/
            return try self.decode([T].self, forKey: key)
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
    func decodeFromSingleOrArrayIfPresent<T>(_ type: T.Type,
                                             forKey key: Self.Key) throws -> [T]? where T: Decodable {
        guard self.containsAndNotNil(key) else {
            return nil
        }
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
        return (try decodeFromSingleOrArrayIfPresent(type, forKey: key)) ?? defaultValue()
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

internal extension KeyedDecodingContainerProtocol where Key == CodableKey {
    
    /// Test if if the dictionary Key object type can be decoded from ofType
    private func isKey<T1, T2>(_ keyType: T1.Type, ofType: T2.Type) -> Bool {
        return (keyType == ofType ||
                ofType == (keyType as? BasicCodableHelperCustomDictionaryKeySingleValueCodable.Type)?.DictionaryKeySingleValueCodableType.realType)
    }
    /// Provides a way of decoding a key container to a dictionary
    ///
    /// - parameter type: The type of dictionary to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - Returns: Returns a dictionary of key/value paris that were decoded
    func _decodeDictionary<DictionaryKey, DictionaryValue>(_ type: Dictionary<DictionaryKey, DictionaryValue>.Type) throws -> Dictionary<DictionaryKey, DictionaryValue> where DictionaryKey: Decodable, DictionaryValue: Decodable {
        var rtn = Dictionary<DictionaryKey, DictionaryValue>()

        for key in self.allKeys {
            var keyValue: Any = key.intValue ?? key.stringValue
            // Patch to convert string bools to real bools when the key is of Bool
            if self.isKey(DictionaryKey.self, ofType: Bool.self),
                let keyStrValue = keyValue as? String,
                let convertedKeyValue = Bool(keyStrValue) {
                keyValue = convertedKeyValue
            } else if self.isKey(DictionaryKey.self, ofType: Int.self),
                let keyStrValue = keyValue as? String,
                let convertedKeyValue = Int(keyStrValue) {
                keyValue = convertedKeyValue
            } else if self.isKey(DictionaryKey.self, ofType: Int8.self),
                let keyStrValue = keyValue as? String,
                let convertedKeyValue = Int(keyStrValue) {
                keyValue = convertedKeyValue
            } else if self.isKey(DictionaryKey.self, ofType: Int16.self),
                let keyStrValue = keyValue as? String,
                let convertedKeyValue = Int(keyStrValue) {
                keyValue = convertedKeyValue
            } else if self.isKey(DictionaryKey.self, ofType: Int32.self),
                let keyStrValue = keyValue as? String,
                let convertedKeyValue = Int(keyStrValue) {
                keyValue = convertedKeyValue
            } else if self.isKey(DictionaryKey.self, ofType: Int64.self),
                let keyStrValue = keyValue as? String,
                let convertedKeyValue = Int(keyStrValue) {
                keyValue = convertedKeyValue
            } else if self.isKey(DictionaryKey.self, ofType: UInt.self),
                let keyStrValue = keyValue as? String,
                let convertedKeyValue = UInt(keyStrValue) {
                keyValue = convertedKeyValue
            } else if self.isKey(DictionaryKey.self, ofType: UInt8.self),
                let keyStrValue = keyValue as? String,
                let convertedKeyValue = UInt(keyStrValue) {
                keyValue = convertedKeyValue
            } else if self.isKey(DictionaryKey.self, ofType: UInt16.self),
                let keyStrValue = keyValue as? String,
                let convertedKeyValue = UInt(keyStrValue) {
                keyValue = convertedKeyValue
            } else if self.isKey(DictionaryKey.self, ofType: UInt32.self),
                let keyStrValue = keyValue as? String,
                let convertedKeyValue = UInt(keyStrValue) {
                keyValue = convertedKeyValue
            } else if self.isKey(DictionaryKey.self, ofType: UInt64.self),
                let keyStrValue = keyValue as? String,
                let convertedKeyValue = UInt(keyStrValue) {
                keyValue = convertedKeyValue
            }
            let simpleDecoder = SimpleSingleValueDecoder(keyValue, container: self)
            let decodedKey = try simpleDecoder.decode(DictionaryKey.self)
            let decodedValue = try self.decode(DictionaryValue.self, forKey: key)
            rtn[decodedKey] = decodedValue
        }
        
        return rtn
    }
}

public extension KeyedDecodingContainerProtocol {
    /// Provides an easy method for decoding a well defined dictionaries
    ///
    /// - parameter type: The type of dictionary to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - Returns: Returns a dictionary of key/value paris that were decoded
    func decodeDictionary<Key, Value>(_ type: Dictionary<Key, Value>.Type,
                                      forKey key: Self.Key) throws -> Dictionary<Key, Value> where Key: Decodable, Value: Decodable {
        
        let container = try nestedContainer(keyedBy: CodableKey.self, forKey: key)
        return try container._decodeDictionary(type)
    }
    /// Provides an easy method for decoding a well defined dictionaries
    ///
    /// - parameter type: The type of dictionary to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - Returns: Returns a dictionary of key/value paris that were decoded or nil if key does not exist
    func decodeDictionaryIfPresent<Key, Value>(_ type: Dictionary<Key, Value>.Type,
                                               forKey key: Self.Key) throws -> Dictionary<Key, Value>? where Key: Decodable, Value: Decodable {
        guard self.containsAndNotNil(key) else { return nil }
        return try decodeDictionary(type, forKey: key)
    }
    /// Provides an easy method for decoding a well defined dictionaries
    ///
    /// - parameter type: The type of dictionary to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - parameter defaultValue: The value to return if key does not exist
    /// - Returns: Returns a dictionary of key/value paris that were decoded
    func decodeDictionaryIfPresent<Key, Value>(_ type: Dictionary<Key, Value>.Type,
                                               forKey key: Self.Key,
                                               withDefaultValue defaultValue: @autoclosure () -> Dictionary<Key, Value>) throws -> Dictionary<Key, Value> where Key: Decodable, Value: Decodable {
        return (try decodeDictionaryIfPresent(type, forKey: key)) ?? defaultValue()
    }
}


