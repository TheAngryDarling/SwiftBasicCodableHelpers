//  This file was dynamically generated from 'SingleValueDecodingContainer+BasicCodableHelpers.dswift' by Dynamic Swift.  Please do not modify directly.
//  Dynamic Swift can be found at https://github.com/TheAngryDarling/dswift.

//
//  SingleValueDecodingContainer+BasicCodableHelpers.dswift
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
public extension SingleValueDecodingContainer {

    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: Int8.Type) throws -> Int8? {
        guard !self.decodeNil() else { return nil }
        return (try self.decode(type))
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter defaultValue: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: Int8.Type,
                         withDefaultValue defaultValue: @autoclosure () -> Int8) throws -> Int8 {
        return (try self.decodeIfPresent(type)) ?? defaultValue()
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: Int16.Type) throws -> Int16? {
        guard !self.decodeNil() else { return nil }
        return (try self.decode(type))
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter defaultValue: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: Int16.Type,
                         withDefaultValue defaultValue: @autoclosure () -> Int16) throws -> Int16 {
        return (try self.decodeIfPresent(type)) ?? defaultValue()
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: Int32.Type) throws -> Int32? {
        guard !self.decodeNil() else { return nil }
        return (try self.decode(type))
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter defaultValue: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: Int32.Type,
                         withDefaultValue defaultValue: @autoclosure () -> Int32) throws -> Int32 {
        return (try self.decodeIfPresent(type)) ?? defaultValue()
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: Int64.Type) throws -> Int64? {
        guard !self.decodeNil() else { return nil }
        return (try self.decode(type))
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter defaultValue: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: Int64.Type,
                         withDefaultValue defaultValue: @autoclosure () -> Int64) throws -> Int64 {
        return (try self.decodeIfPresent(type)) ?? defaultValue()
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: Int.Type) throws -> Int? {
        guard !self.decodeNil() else { return nil }
        return (try self.decode(type))
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter defaultValue: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: Int.Type,
                         withDefaultValue defaultValue: @autoclosure () -> Int) throws -> Int {
        return (try self.decodeIfPresent(type)) ?? defaultValue()
    }
}


//UInts
public extension SingleValueDecodingContainer {

    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: UInt8.Type) throws -> UInt8? {
        guard !self.decodeNil() else { return nil }
        return (try self.decode(type))
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter defaultValue: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: UInt8.Type,
                         withDefaultValue defaultValue: @autoclosure () -> UInt8) throws -> UInt8 {
        return (try self.decodeIfPresent(type)) ?? defaultValue()
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: UInt16.Type) throws -> UInt16? {
        guard !self.decodeNil() else { return nil }
        return (try self.decode(type))
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter defaultValue: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: UInt16.Type,
                         withDefaultValue defaultValue: @autoclosure () -> UInt16) throws -> UInt16 {
        return (try self.decodeIfPresent(type)) ?? defaultValue()
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: UInt32.Type) throws -> UInt32? {
        guard !self.decodeNil() else { return nil }
        return (try self.decode(type))
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter defaultValue: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: UInt32.Type,
                         withDefaultValue defaultValue: @autoclosure () -> UInt32) throws -> UInt32 {
        return (try self.decodeIfPresent(type)) ?? defaultValue()
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: UInt64.Type) throws -> UInt64? {
        guard !self.decodeNil() else { return nil }
        return (try self.decode(type))
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter defaultValue: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: UInt64.Type,
                         withDefaultValue defaultValue: @autoclosure () -> UInt64) throws -> UInt64 {
        return (try self.decodeIfPresent(type)) ?? defaultValue()
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: UInt.Type) throws -> UInt? {
        guard !self.decodeNil() else { return nil }
        return (try self.decode(type))
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter defaultValue: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: UInt.Type,
                         withDefaultValue defaultValue: @autoclosure () -> UInt) throws -> UInt {
        return (try self.decodeIfPresent(type)) ?? defaultValue()
    }
}


//Other
public extension SingleValueDecodingContainer {

    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: Bool.Type) throws -> Bool? {
        guard !self.decodeNil() else { return nil }
        return (try self.decode(type))
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter defaultValue: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: Bool.Type,
                         withDefaultValue defaultValue: @autoclosure () -> Bool) throws -> Bool {
        return (try self.decodeIfPresent(type)) ?? defaultValue()
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: Double.Type) throws -> Double? {
        guard !self.decodeNil() else { return nil }
        return (try self.decode(type))
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter defaultValue: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: Double.Type,
                         withDefaultValue defaultValue: @autoclosure () -> Double) throws -> Double {
        return (try self.decodeIfPresent(type)) ?? defaultValue()
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: Float.Type) throws -> Float? {
        guard !self.decodeNil() else { return nil }
        return (try self.decode(type))
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter defaultValue: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: Float.Type,
                         withDefaultValue defaultValue: @autoclosure () -> Float) throws -> Float {
        return (try self.decodeIfPresent(type)) ?? defaultValue()
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: String.Type) throws -> String? {
        guard !self.decodeNil() else { return nil }
        return (try self.decode(type))
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter defaultValue: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: String.Type,
                         withDefaultValue defaultValue: @autoclosure () -> String) throws -> String {
        return (try self.decodeIfPresent(type)) ?? defaultValue()
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent<T>(_ type: T.Type) throws -> T? where T: Decodable {
        guard !self.decodeNil() else { return nil }
        return (try self.decode(type))
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter defaultValue: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent<T>(_ type: T.Type,
                         withDefaultValue defaultValue: @autoclosure () -> T) throws -> T where T: Decodable {
        return (try self.decodeIfPresent(type)) ?? defaultValue()
    }
}



#if swift(>=4.2)
    #if canImport(CustomInts)
//Custom Ints
public extension SingleValueDecodingContainer {

    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: Int24.Type) throws -> Int24? {
        guard !self.decodeNil() else { return nil }
        return (try self.decode(type))
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter defaultValue: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: Int24.Type,
                         withDefaultValue defaultValue: @autoclosure () -> Int24) throws -> Int24 {
        return (try self.decodeIfPresent(type)) ?? defaultValue()
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: Int40.Type) throws -> Int40? {
        guard !self.decodeNil() else { return nil }
        return (try self.decode(type))
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter defaultValue: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: Int40.Type,
                         withDefaultValue defaultValue: @autoclosure () -> Int40) throws -> Int40 {
        return (try self.decodeIfPresent(type)) ?? defaultValue()
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: Int48.Type) throws -> Int48? {
        guard !self.decodeNil() else { return nil }
        return (try self.decode(type))
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter defaultValue: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: Int48.Type,
                         withDefaultValue defaultValue: @autoclosure () -> Int48) throws -> Int48 {
        return (try self.decodeIfPresent(type)) ?? defaultValue()
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: Int56.Type) throws -> Int56? {
        guard !self.decodeNil() else { return nil }
        return (try self.decode(type))
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter defaultValue: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: Int56.Type,
                         withDefaultValue defaultValue: @autoclosure () -> Int56) throws -> Int56 {
        return (try self.decodeIfPresent(type)) ?? defaultValue()
    }
}

//Custom UInts
public extension SingleValueDecodingContainer {

    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: UInt24.Type) throws -> UInt24? {
        guard !self.decodeNil() else { return nil }
        return (try self.decode(type))
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter defaultValue: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: UInt24.Type,
                         withDefaultValue defaultValue: @autoclosure () -> UInt24) throws -> UInt24 {
        return (try self.decodeIfPresent(type)) ?? defaultValue()
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: UInt40.Type) throws -> UInt40? {
        guard !self.decodeNil() else { return nil }
        return (try self.decode(type))
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter defaultValue: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: UInt40.Type,
                         withDefaultValue defaultValue: @autoclosure () -> UInt40) throws -> UInt40 {
        return (try self.decodeIfPresent(type)) ?? defaultValue()
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: UInt48.Type) throws -> UInt48? {
        guard !self.decodeNil() else { return nil }
        return (try self.decode(type))
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter defaultValue: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: UInt48.Type,
                         withDefaultValue defaultValue: @autoclosure () -> UInt48) throws -> UInt48 {
        return (try self.decodeIfPresent(type)) ?? defaultValue()
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: UInt56.Type) throws -> UInt56? {
        guard !self.decodeNil() else { return nil }
        return (try self.decode(type))
    }
    /// Decodes a value of the given type for the given key, if present, otherwise returns the default value
    ///
    /// This method returns a default value if the container does not have a value
    /// associated with `key`, or if the value is null. The difference between
    /// these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter defaultValue: The default value to return if key does not exist
    /// - returns: A decoded value of the requested type, or default value if the
    ///   `Decoder` does not have an entry associated with the given key, or if
    ///   the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value
    ///   is not convertible to the requested type.
    func decodeIfPresent(_ type: UInt56.Type,
                         withDefaultValue defaultValue: @autoclosure () -> UInt56) throws -> UInt56 {
        return (try self.decodeIfPresent(type)) ?? defaultValue()
    }
}

    #endif
#endif

public extension SingleValueDecodingContainer {
    /// Provides access to a KeyedDecodingContainer for the given SingleValueDecodingContainer
    fileprivate func nestedContainer<NestedKey>(keyedBy keyType: NestedKey.Type) throws -> KeyedDecodingContainer<NestedKey> where NestedKey : CodingKey {
        let catcher = try self.decode(DecoderCatcher.self)
        return try catcher.decoder.container(keyedBy: keyType)
    }
    
    /*
    /// Provides access to a KeyedDecodingContainer for the given SingleValueDecodingContainer
    fileprivate func nestedUnkeyedContainer() throws -> UnkeyedDecodingContainer {
        let catcher = try self.decode(DecoderCatcher.self)
        return try catcher.decoder.unkeyedContainer()
    }
    */
}

public extension SingleValueDecodingContainer {
    /// Provides an easy method of decoding a single value/array object into an array
    ///
    /// The following rules apply when decoding:
    /// 1. Tries to decode as a single value object and reutrns as a 1 element array
    /// 2. Tries to decode as an array of objects and returns it
    ///
    /// - parameter type: The type of value to decode.
    /// - Returns: Returns an array of elements that decoded
    func decodeFromSingleOrArray<T>(_ type: T.Type) throws -> [T] where T: Decodable {
        if let singlton: T = try? self.decode(type) { return [singlton] }
        else {
            /*var unkeyed = try self.nestedUnkeyedContainer()
            var rtn: [T] = []
            while !unkeyed.isAtEnd {
                rtn.append(try unkeyed.decode(type))
            }
            return rtn*/
            return try self.decode([T].self)
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
    func decodeFromSingleOrArrayIfPresent<T>(_ type: T.Type) throws -> [T]? where T: Decodable {
        guard !self.decodeNil() else { return nil }
        
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
    func decodeFromSingleOrArrayIfPresent<T>(_ type: T.Type,
                                              withDefaultValue defaultValue: @autoclosure () -> [T]) throws -> [T] where T: Decodable {
        return (try decodeFromSingleOrArrayIfPresent(type)) ?? defaultValue()
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
    func decodeFromSingleOrArrayIfPresentWithEmptyDefault<T>(_ type: T.Type) throws -> [T] where T: Decodable {
        return try decodeFromSingleOrArrayIfPresent(type, withDefaultValue: Array<T>())
    }
}

public extension SingleValueDecodingContainer {
    
    /// Provides an easy method for decoding a well defined dictionaries
    ///
    /// - parameter type: The type of dictionary to decode.
    /// - Returns: Returns a dictionary of key/value paris that were decoded
    func decodeDictionary<Key, Value>(_ type: Dictionary<Key, Value>.Type) throws -> Dictionary<Key, Value> where Key: Decodable, Value: Decodable {
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
            let simpleDecoder = SimpleSingleValueDecoder(keyValue, container: self)
            let decodedKey = try simpleDecoder.decode(Key.self)
            let decodedValue = try container.decode(Value.self, forKey: key)
            rtn[decodedKey] = decodedValue
        }
        
        return rtn
    }
    /// Provides an easy method for decoding a well defined dictionaries
    ///
    /// - parameter type: The type of dictionary to decode.
    /// - Returns: Returns a dictionary of key/value paris that were decoded or nil if item does not exist
    func decodeDictionaryIfPresent<Key, Value>(_ type: Dictionary<Key, Value>.Type) throws -> Dictionary<Key, Value>? where Key: Decodable, Value: Decodable {
        guard !self.decodeNil() else { return nil }
        return try decodeDictionary(type)
    }
    /// Provides an easy method for decoding a well defined dictionaries
    ///
    /// - parameter type: The type of dictionary to decode.
    /// - parameter defaultValue: The value to return if the object does not exist
    /// - Returns: Returns a dictionary of key/value paris that were decoded
    func decodeDictionaryIfPresent<Key, Value>(_ type: Dictionary<Key, Value>.Type,
                                                        withDefaultValue defaultValue: @autoclosure () -> Dictionary<Key, Value>) throws -> Dictionary<Key, Value> where Key: Decodable, Value: Decodable {
        return (try decodeDictionaryIfPresent(type)) ?? defaultValue()
    }
}
