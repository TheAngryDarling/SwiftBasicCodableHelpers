//  This file was dynamically generated from 'SingleValueEncodingContainer+BasicCodableHelpers.dswift' by Dynamic Swift.  Please do not modify directly.
//  Dynamic Swift can be found at https://github.com/TheAngryDarling/dswift.

//
//  SingleValueEncodingContainer+BasicCodableHelpers.dswift
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
public extension SingleValueEncodingContainer {
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter condition: The condition to test if the value should be encoded
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: Int8,
                         where condition: (Int8) -> Bool) throws -> Bool {
        guard condition(value) else { return false }
        try self.encode(value)
        return true
    }
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter condition: The condition to test if the value should be encoded
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: Int8?,
                         where condition: (Int8) -> Bool) throws -> Bool {
        guard let val = value else { return false }
        return (try self.encode(val, where: condition))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: Int8,
                         if nValue: @autoclosure () -> Int8) throws -> Bool {
        return (try self.encode(value, where: { $0 == nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: Int8?,
                         if nValue: @autoclosure () -> Int8) throws -> Bool {
        return (try self.encodeIfPresent(value,
                                         where: { $0 == nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: Int8,
                         ifNot nValue: @autoclosure () -> Int8) throws -> Bool {
        return (try self.encode(value,
                                where: { $0 != nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: Int8?,
                         ifNot nValue: @autoclosure () -> Int8) throws -> Bool {
        return (try self.encodeIfPresent(value,
                                         where: { $0 != nValue() }))
    }    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter condition: The condition to test if the value should be encoded
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: Int16,
                         where condition: (Int16) -> Bool) throws -> Bool {
        guard condition(value) else { return false }
        try self.encode(value)
        return true
    }
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter condition: The condition to test if the value should be encoded
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: Int16?,
                         where condition: (Int16) -> Bool) throws -> Bool {
        guard let val = value else { return false }
        return (try self.encode(val, where: condition))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: Int16,
                         if nValue: @autoclosure () -> Int16) throws -> Bool {
        return (try self.encode(value, where: { $0 == nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: Int16?,
                         if nValue: @autoclosure () -> Int16) throws -> Bool {
        return (try self.encodeIfPresent(value,
                                         where: { $0 == nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: Int16,
                         ifNot nValue: @autoclosure () -> Int16) throws -> Bool {
        return (try self.encode(value,
                                where: { $0 != nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: Int16?,
                         ifNot nValue: @autoclosure () -> Int16) throws -> Bool {
        return (try self.encodeIfPresent(value,
                                         where: { $0 != nValue() }))
    }    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter condition: The condition to test if the value should be encoded
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: Int32,
                         where condition: (Int32) -> Bool) throws -> Bool {
        guard condition(value) else { return false }
        try self.encode(value)
        return true
    }
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter condition: The condition to test if the value should be encoded
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: Int32?,
                         where condition: (Int32) -> Bool) throws -> Bool {
        guard let val = value else { return false }
        return (try self.encode(val, where: condition))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: Int32,
                         if nValue: @autoclosure () -> Int32) throws -> Bool {
        return (try self.encode(value, where: { $0 == nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: Int32?,
                         if nValue: @autoclosure () -> Int32) throws -> Bool {
        return (try self.encodeIfPresent(value,
                                         where: { $0 == nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: Int32,
                         ifNot nValue: @autoclosure () -> Int32) throws -> Bool {
        return (try self.encode(value,
                                where: { $0 != nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: Int32?,
                         ifNot nValue: @autoclosure () -> Int32) throws -> Bool {
        return (try self.encodeIfPresent(value,
                                         where: { $0 != nValue() }))
    }    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter condition: The condition to test if the value should be encoded
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: Int64,
                         where condition: (Int64) -> Bool) throws -> Bool {
        guard condition(value) else { return false }
        try self.encode(value)
        return true
    }
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter condition: The condition to test if the value should be encoded
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: Int64?,
                         where condition: (Int64) -> Bool) throws -> Bool {
        guard let val = value else { return false }
        return (try self.encode(val, where: condition))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: Int64,
                         if nValue: @autoclosure () -> Int64) throws -> Bool {
        return (try self.encode(value, where: { $0 == nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: Int64?,
                         if nValue: @autoclosure () -> Int64) throws -> Bool {
        return (try self.encodeIfPresent(value,
                                         where: { $0 == nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: Int64,
                         ifNot nValue: @autoclosure () -> Int64) throws -> Bool {
        return (try self.encode(value,
                                where: { $0 != nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: Int64?,
                         ifNot nValue: @autoclosure () -> Int64) throws -> Bool {
        return (try self.encodeIfPresent(value,
                                         where: { $0 != nValue() }))
    }    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter condition: The condition to test if the value should be encoded
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: Int,
                         where condition: (Int) -> Bool) throws -> Bool {
        guard condition(value) else { return false }
        try self.encode(value)
        return true
    }
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter condition: The condition to test if the value should be encoded
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: Int?,
                         where condition: (Int) -> Bool) throws -> Bool {
        guard let val = value else { return false }
        return (try self.encode(val, where: condition))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: Int,
                         if nValue: @autoclosure () -> Int) throws -> Bool {
        return (try self.encode(value, where: { $0 == nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: Int?,
                         if nValue: @autoclosure () -> Int) throws -> Bool {
        return (try self.encodeIfPresent(value,
                                         where: { $0 == nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: Int,
                         ifNot nValue: @autoclosure () -> Int) throws -> Bool {
        return (try self.encode(value,
                                where: { $0 != nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: Int?,
                         ifNot nValue: @autoclosure () -> Int) throws -> Bool {
        return (try self.encodeIfPresent(value,
                                         where: { $0 != nValue() }))
    }
}


//UInts
public extension SingleValueEncodingContainer {
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter condition: The condition to test if the value should be encoded
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: UInt8,
                         where condition: (UInt8) -> Bool) throws -> Bool {
        guard condition(value) else { return false }
        try self.encode(value)
        return true
    }
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter condition: The condition to test if the value should be encoded
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: UInt8?,
                         where condition: (UInt8) -> Bool) throws -> Bool {
        guard let val = value else { return false }
        return (try self.encode(val, where: condition))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: UInt8,
                         if nValue: @autoclosure () -> UInt8) throws -> Bool {
        return (try self.encode(value, where: { $0 == nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: UInt8?,
                         if nValue: @autoclosure () -> UInt8) throws -> Bool {
        return (try self.encodeIfPresent(value,
                                         where: { $0 == nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: UInt8,
                         ifNot nValue: @autoclosure () -> UInt8) throws -> Bool {
        return (try self.encode(value,
                                where: { $0 != nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: UInt8?,
                         ifNot nValue: @autoclosure () -> UInt8) throws -> Bool {
        return (try self.encodeIfPresent(value,
                                         where: { $0 != nValue() }))
    }    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter condition: The condition to test if the value should be encoded
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: UInt16,
                         where condition: (UInt16) -> Bool) throws -> Bool {
        guard condition(value) else { return false }
        try self.encode(value)
        return true
    }
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter condition: The condition to test if the value should be encoded
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: UInt16?,
                         where condition: (UInt16) -> Bool) throws -> Bool {
        guard let val = value else { return false }
        return (try self.encode(val, where: condition))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: UInt16,
                         if nValue: @autoclosure () -> UInt16) throws -> Bool {
        return (try self.encode(value, where: { $0 == nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: UInt16?,
                         if nValue: @autoclosure () -> UInt16) throws -> Bool {
        return (try self.encodeIfPresent(value,
                                         where: { $0 == nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: UInt16,
                         ifNot nValue: @autoclosure () -> UInt16) throws -> Bool {
        return (try self.encode(value,
                                where: { $0 != nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: UInt16?,
                         ifNot nValue: @autoclosure () -> UInt16) throws -> Bool {
        return (try self.encodeIfPresent(value,
                                         where: { $0 != nValue() }))
    }    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter condition: The condition to test if the value should be encoded
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: UInt32,
                         where condition: (UInt32) -> Bool) throws -> Bool {
        guard condition(value) else { return false }
        try self.encode(value)
        return true
    }
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter condition: The condition to test if the value should be encoded
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: UInt32?,
                         where condition: (UInt32) -> Bool) throws -> Bool {
        guard let val = value else { return false }
        return (try self.encode(val, where: condition))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: UInt32,
                         if nValue: @autoclosure () -> UInt32) throws -> Bool {
        return (try self.encode(value, where: { $0 == nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: UInt32?,
                         if nValue: @autoclosure () -> UInt32) throws -> Bool {
        return (try self.encodeIfPresent(value,
                                         where: { $0 == nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: UInt32,
                         ifNot nValue: @autoclosure () -> UInt32) throws -> Bool {
        return (try self.encode(value,
                                where: { $0 != nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: UInt32?,
                         ifNot nValue: @autoclosure () -> UInt32) throws -> Bool {
        return (try self.encodeIfPresent(value,
                                         where: { $0 != nValue() }))
    }    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter condition: The condition to test if the value should be encoded
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: UInt64,
                         where condition: (UInt64) -> Bool) throws -> Bool {
        guard condition(value) else { return false }
        try self.encode(value)
        return true
    }
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter condition: The condition to test if the value should be encoded
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: UInt64?,
                         where condition: (UInt64) -> Bool) throws -> Bool {
        guard let val = value else { return false }
        return (try self.encode(val, where: condition))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: UInt64,
                         if nValue: @autoclosure () -> UInt64) throws -> Bool {
        return (try self.encode(value, where: { $0 == nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: UInt64?,
                         if nValue: @autoclosure () -> UInt64) throws -> Bool {
        return (try self.encodeIfPresent(value,
                                         where: { $0 == nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: UInt64,
                         ifNot nValue: @autoclosure () -> UInt64) throws -> Bool {
        return (try self.encode(value,
                                where: { $0 != nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: UInt64?,
                         ifNot nValue: @autoclosure () -> UInt64) throws -> Bool {
        return (try self.encodeIfPresent(value,
                                         where: { $0 != nValue() }))
    }    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter condition: The condition to test if the value should be encoded
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: UInt,
                         where condition: (UInt) -> Bool) throws -> Bool {
        guard condition(value) else { return false }
        try self.encode(value)
        return true
    }
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter condition: The condition to test if the value should be encoded
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: UInt?,
                         where condition: (UInt) -> Bool) throws -> Bool {
        guard let val = value else { return false }
        return (try self.encode(val, where: condition))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: UInt,
                         if nValue: @autoclosure () -> UInt) throws -> Bool {
        return (try self.encode(value, where: { $0 == nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: UInt?,
                         if nValue: @autoclosure () -> UInt) throws -> Bool {
        return (try self.encodeIfPresent(value,
                                         where: { $0 == nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: UInt,
                         ifNot nValue: @autoclosure () -> UInt) throws -> Bool {
        return (try self.encode(value,
                                where: { $0 != nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: UInt?,
                         ifNot nValue: @autoclosure () -> UInt) throws -> Bool {
        return (try self.encodeIfPresent(value,
                                         where: { $0 != nValue() }))
    }
}


//Other
public extension SingleValueEncodingContainer {
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter condition: The condition to test if the value should be encoded
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: Bool,
                         where condition: (Bool) -> Bool) throws -> Bool {
        guard condition(value) else { return false }
        try self.encode(value)
        return true
    }
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter condition: The condition to test if the value should be encoded
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: Bool?,
                         where condition: (Bool) -> Bool) throws -> Bool {
        guard let val = value else { return false }
        return (try self.encode(val, where: condition))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: Bool,
                         if nValue: @autoclosure () -> Bool) throws -> Bool {
        return (try self.encode(value, where: { $0 == nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: Bool?,
                         if nValue: @autoclosure () -> Bool) throws -> Bool {
        return (try self.encodeIfPresent(value,
                                         where: { $0 == nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: Bool,
                         ifNot nValue: @autoclosure () -> Bool) throws -> Bool {
        return (try self.encode(value,
                                where: { $0 != nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: Bool?,
                         ifNot nValue: @autoclosure () -> Bool) throws -> Bool {
        return (try self.encodeIfPresent(value,
                                         where: { $0 != nValue() }))
    }    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter condition: The condition to test if the value should be encoded
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: Double,
                         where condition: (Double) -> Bool) throws -> Bool {
        guard condition(value) else { return false }
        try self.encode(value)
        return true
    }
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter condition: The condition to test if the value should be encoded
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: Double?,
                         where condition: (Double) -> Bool) throws -> Bool {
        guard let val = value else { return false }
        return (try self.encode(val, where: condition))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: Double,
                         if nValue: @autoclosure () -> Double) throws -> Bool {
        return (try self.encode(value, where: { $0 == nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: Double?,
                         if nValue: @autoclosure () -> Double) throws -> Bool {
        return (try self.encodeIfPresent(value,
                                         where: { $0 == nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: Double,
                         ifNot nValue: @autoclosure () -> Double) throws -> Bool {
        return (try self.encode(value,
                                where: { $0 != nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: Double?,
                         ifNot nValue: @autoclosure () -> Double) throws -> Bool {
        return (try self.encodeIfPresent(value,
                                         where: { $0 != nValue() }))
    }    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter condition: The condition to test if the value should be encoded
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: Float,
                         where condition: (Float) -> Bool) throws -> Bool {
        guard condition(value) else { return false }
        try self.encode(value)
        return true
    }
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter condition: The condition to test if the value should be encoded
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: Float?,
                         where condition: (Float) -> Bool) throws -> Bool {
        guard let val = value else { return false }
        return (try self.encode(val, where: condition))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: Float,
                         if nValue: @autoclosure () -> Float) throws -> Bool {
        return (try self.encode(value, where: { $0 == nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: Float?,
                         if nValue: @autoclosure () -> Float) throws -> Bool {
        return (try self.encodeIfPresent(value,
                                         where: { $0 == nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: Float,
                         ifNot nValue: @autoclosure () -> Float) throws -> Bool {
        return (try self.encode(value,
                                where: { $0 != nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: Float?,
                         ifNot nValue: @autoclosure () -> Float) throws -> Bool {
        return (try self.encodeIfPresent(value,
                                         where: { $0 != nValue() }))
    }    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter condition: The condition to test if the value should be encoded
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: String,
                         where condition: (String) -> Bool) throws -> Bool {
        guard condition(value) else { return false }
        try self.encode(value)
        return true
    }
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter condition: The condition to test if the value should be encoded
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: String?,
                         where condition: (String) -> Bool) throws -> Bool {
        guard let val = value else { return false }
        return (try self.encode(val, where: condition))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: String,
                         if nValue: @autoclosure () -> String) throws -> Bool {
        return (try self.encode(value, where: { $0 == nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: String?,
                         if nValue: @autoclosure () -> String) throws -> Bool {
        return (try self.encodeIfPresent(value,
                                         where: { $0 == nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: String,
                         ifNot nValue: @autoclosure () -> String) throws -> Bool {
        return (try self.encode(value,
                                where: { $0 != nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: String?,
                         ifNot nValue: @autoclosure () -> String) throws -> Bool {
        return (try self.encodeIfPresent(value,
                                         where: { $0 != nValue() }))
    }    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter condition: The condition to test if the value should be encoded
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode<T>(_ value: T,
                         where condition: (T) -> Bool) throws -> Bool where T: Encodable, T: Equatable {
        guard condition(value) else { return false }
        try self.encode(value)
        return true
    }
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter condition: The condition to test if the value should be encoded
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent<T>(_ value: T?,
                         where condition: (T) -> Bool) throws -> Bool where T: Encodable, T: Equatable {
        guard let val = value else { return false }
        return (try self.encode(val, where: condition))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode<T>(_ value: T,
                         if nValue: @autoclosure () -> T) throws -> Bool where T: Encodable, T: Equatable {
        return (try self.encode(value, where: { $0 == nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent<T>(_ value: T?,
                         if nValue: @autoclosure () -> T) throws -> Bool where T: Encodable, T: Equatable {
        return (try self.encodeIfPresent(value,
                                         where: { $0 == nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode<T>(_ value: T,
                         ifNot nValue: @autoclosure () -> T) throws -> Bool where T: Encodable, T: Equatable {
        return (try self.encode(value,
                                where: { $0 != nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent<T>(_ value: T?,
                         ifNot nValue: @autoclosure () -> T) throws -> Bool where T: Encodable, T: Equatable {
        return (try self.encodeIfPresent(value,
                                         where: { $0 != nValue() }))
    }
}



#if swift(>=4.2)
    #if canImport(CustomInts)
//Custom Ints
public extension SingleValueEncodingContainer {
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter condition: The condition to test if the value should be encoded
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: Int24,
                         where condition: (Int24) -> Bool) throws -> Bool {
        guard condition(value) else { return false }
        try self.encode(value)
        return true
    }
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter condition: The condition to test if the value should be encoded
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: Int24?,
                         where condition: (Int24) -> Bool) throws -> Bool {
        guard let val = value else { return false }
        return (try self.encode(val, where: condition))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: Int24,
                         if nValue: @autoclosure () -> Int24) throws -> Bool {
        return (try self.encode(value, where: { $0 == nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: Int24?,
                         if nValue: @autoclosure () -> Int24) throws -> Bool {
        return (try self.encodeIfPresent(value,
                                         where: { $0 == nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: Int24,
                         ifNot nValue: @autoclosure () -> Int24) throws -> Bool {
        return (try self.encode(value,
                                where: { $0 != nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: Int24?,
                         ifNot nValue: @autoclosure () -> Int24) throws -> Bool {
        return (try self.encodeIfPresent(value,
                                         where: { $0 != nValue() }))
    }    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter condition: The condition to test if the value should be encoded
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: Int40,
                         where condition: (Int40) -> Bool) throws -> Bool {
        guard condition(value) else { return false }
        try self.encode(value)
        return true
    }
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter condition: The condition to test if the value should be encoded
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: Int40?,
                         where condition: (Int40) -> Bool) throws -> Bool {
        guard let val = value else { return false }
        return (try self.encode(val, where: condition))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: Int40,
                         if nValue: @autoclosure () -> Int40) throws -> Bool {
        return (try self.encode(value, where: { $0 == nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: Int40?,
                         if nValue: @autoclosure () -> Int40) throws -> Bool {
        return (try self.encodeIfPresent(value,
                                         where: { $0 == nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: Int40,
                         ifNot nValue: @autoclosure () -> Int40) throws -> Bool {
        return (try self.encode(value,
                                where: { $0 != nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: Int40?,
                         ifNot nValue: @autoclosure () -> Int40) throws -> Bool {
        return (try self.encodeIfPresent(value,
                                         where: { $0 != nValue() }))
    }    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter condition: The condition to test if the value should be encoded
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: Int48,
                         where condition: (Int48) -> Bool) throws -> Bool {
        guard condition(value) else { return false }
        try self.encode(value)
        return true
    }
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter condition: The condition to test if the value should be encoded
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: Int48?,
                         where condition: (Int48) -> Bool) throws -> Bool {
        guard let val = value else { return false }
        return (try self.encode(val, where: condition))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: Int48,
                         if nValue: @autoclosure () -> Int48) throws -> Bool {
        return (try self.encode(value, where: { $0 == nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: Int48?,
                         if nValue: @autoclosure () -> Int48) throws -> Bool {
        return (try self.encodeIfPresent(value,
                                         where: { $0 == nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: Int48,
                         ifNot nValue: @autoclosure () -> Int48) throws -> Bool {
        return (try self.encode(value,
                                where: { $0 != nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: Int48?,
                         ifNot nValue: @autoclosure () -> Int48) throws -> Bool {
        return (try self.encodeIfPresent(value,
                                         where: { $0 != nValue() }))
    }    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter condition: The condition to test if the value should be encoded
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: Int56,
                         where condition: (Int56) -> Bool) throws -> Bool {
        guard condition(value) else { return false }
        try self.encode(value)
        return true
    }
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter condition: The condition to test if the value should be encoded
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: Int56?,
                         where condition: (Int56) -> Bool) throws -> Bool {
        guard let val = value else { return false }
        return (try self.encode(val, where: condition))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: Int56,
                         if nValue: @autoclosure () -> Int56) throws -> Bool {
        return (try self.encode(value, where: { $0 == nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: Int56?,
                         if nValue: @autoclosure () -> Int56) throws -> Bool {
        return (try self.encodeIfPresent(value,
                                         where: { $0 == nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: Int56,
                         ifNot nValue: @autoclosure () -> Int56) throws -> Bool {
        return (try self.encode(value,
                                where: { $0 != nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: Int56?,
                         ifNot nValue: @autoclosure () -> Int56) throws -> Bool {
        return (try self.encodeIfPresent(value,
                                         where: { $0 != nValue() }))
    }
}

//Custom UInts
public extension SingleValueEncodingContainer {
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter condition: The condition to test if the value should be encoded
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: UInt24,
                         where condition: (UInt24) -> Bool) throws -> Bool {
        guard condition(value) else { return false }
        try self.encode(value)
        return true
    }
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter condition: The condition to test if the value should be encoded
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: UInt24?,
                         where condition: (UInt24) -> Bool) throws -> Bool {
        guard let val = value else { return false }
        return (try self.encode(val, where: condition))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: UInt24,
                         if nValue: @autoclosure () -> UInt24) throws -> Bool {
        return (try self.encode(value, where: { $0 == nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: UInt24?,
                         if nValue: @autoclosure () -> UInt24) throws -> Bool {
        return (try self.encodeIfPresent(value,
                                         where: { $0 == nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: UInt24,
                         ifNot nValue: @autoclosure () -> UInt24) throws -> Bool {
        return (try self.encode(value,
                                where: { $0 != nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: UInt24?,
                         ifNot nValue: @autoclosure () -> UInt24) throws -> Bool {
        return (try self.encodeIfPresent(value,
                                         where: { $0 != nValue() }))
    }    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter condition: The condition to test if the value should be encoded
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: UInt40,
                         where condition: (UInt40) -> Bool) throws -> Bool {
        guard condition(value) else { return false }
        try self.encode(value)
        return true
    }
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter condition: The condition to test if the value should be encoded
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: UInt40?,
                         where condition: (UInt40) -> Bool) throws -> Bool {
        guard let val = value else { return false }
        return (try self.encode(val, where: condition))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: UInt40,
                         if nValue: @autoclosure () -> UInt40) throws -> Bool {
        return (try self.encode(value, where: { $0 == nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: UInt40?,
                         if nValue: @autoclosure () -> UInt40) throws -> Bool {
        return (try self.encodeIfPresent(value,
                                         where: { $0 == nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: UInt40,
                         ifNot nValue: @autoclosure () -> UInt40) throws -> Bool {
        return (try self.encode(value,
                                where: { $0 != nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: UInt40?,
                         ifNot nValue: @autoclosure () -> UInt40) throws -> Bool {
        return (try self.encodeIfPresent(value,
                                         where: { $0 != nValue() }))
    }    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter condition: The condition to test if the value should be encoded
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: UInt48,
                         where condition: (UInt48) -> Bool) throws -> Bool {
        guard condition(value) else { return false }
        try self.encode(value)
        return true
    }
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter condition: The condition to test if the value should be encoded
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: UInt48?,
                         where condition: (UInt48) -> Bool) throws -> Bool {
        guard let val = value else { return false }
        return (try self.encode(val, where: condition))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: UInt48,
                         if nValue: @autoclosure () -> UInt48) throws -> Bool {
        return (try self.encode(value, where: { $0 == nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: UInt48?,
                         if nValue: @autoclosure () -> UInt48) throws -> Bool {
        return (try self.encodeIfPresent(value,
                                         where: { $0 == nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: UInt48,
                         ifNot nValue: @autoclosure () -> UInt48) throws -> Bool {
        return (try self.encode(value,
                                where: { $0 != nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: UInt48?,
                         ifNot nValue: @autoclosure () -> UInt48) throws -> Bool {
        return (try self.encodeIfPresent(value,
                                         where: { $0 != nValue() }))
    }    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter condition: The condition to test if the value should be encoded
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: UInt56,
                         where condition: (UInt56) -> Bool) throws -> Bool {
        guard condition(value) else { return false }
        try self.encode(value)
        return true
    }
    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter condition: The condition to test if the value should be encoded
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: UInt56?,
                         where condition: (UInt56) -> Bool) throws -> Bool {
        guard let val = value else { return false }
        return (try self.encode(val, where: condition))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: UInt56,
                         if nValue: @autoclosure () -> UInt56) throws -> Bool {
        return (try self.encode(value, where: { $0 == nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: UInt56?,
                         if nValue: @autoclosure () -> UInt56) throws -> Bool {
        return (try self.encodeIfPresent(value,
                                         where: { $0 == nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode(_ value: UInt56,
                         ifNot nValue: @autoclosure () -> UInt56) throws -> Bool {
        return (try self.encode(value,
                                where: { $0 != nValue() }))
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter nValue: The value it should not be for encoding to occur
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent(_ value: UInt56?,
                         ifNot nValue: @autoclosure () -> UInt56) throws -> Bool {
        return (try self.encodeIfPresent(value,
                                         where: { $0 != nValue() }))
    }
}

    #endif
#endif

public extension SingleValueEncodingContainer {
    /// Provides access to a KeyedDecodingContainer for the given SingleValueDecodingContainer
    mutating fileprivate func nestedContainer<NestedKey>(keyedBy keyType: NestedKey.Type,
                                                block: @escaping (inout KeyedEncodingContainer<NestedKey>) throws -> Void) throws {
        try self.encode(KeyedEncoderHelper(keyType: keyType, block: block))
    }
    
    
    /// Provides access to a KeyedDecodingContainer for the given SingleValueDecodingContainer
    mutating fileprivate func nestedUnkeyedContainer(block: @escaping (inout UnkeyedEncodingContainer) throws -> Void) throws -> Void {
        try self.encode(UnkeyedEncoderHelper(block: block))
    }
    
}


public extension SingleValueEncodingContainer {
    /// Encode a collection of objects if the collection has any objects
    /// - Parameters:
    ///   - value: The collection of objects to encode
    ///   - condition: test condition to indicate if encoding should occur
    /// - Throws: `EncodingError.invalidValue` if the given value is invalid in
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encode<C>(_ value: C,
                            where condition: (C) -> Bool) throws -> Bool where C: Encodable, C: Collection {
        guard condition(value) else { return false }
        try self.encode(value)
        return true
    }
    
    /// Encode a collection of objects if the collection has any objects
    /// - Parameters:
    ///   - value: The collection of objects to encode
    ///   - condition: test condition to indicate if encoding should occur
    /// - Throws: `EncodingError.invalidValue` if the given value is invalid in
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresent<C>(_ value: C?,
                                where condition: (C) -> Bool) throws -> Bool where C: Encodable, C: Collection {
        guard let val = value else { return false }
        return try self.encode(val, where: condition)
    }
    
    /// Encode a collection of objects if the collection has any objects
    /// - Parameters:
    ///   - value: The collection of objects to encode
    /// - Throws: `EncodingError.invalidValue` if the given value is invalid in
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfNotEmpty<C>(_ value: C) throws -> Bool where C: Encodable, C: Collection {
        return try self.encode(value,
                               where: { return !$0.isEmpty })
    }
    
    /// Encode a collection of objects if the collection has any objects
    /// - Parameters:
    ///   - value: The collection of objects to encode
    /// - Throws: `EncodingError.invalidValue` if the given value is invalid in
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeIfPresentAndNotEmpty<C>(_ value: C?) throws -> Bool where C: Encodable, C: Collection {
        guard let v = value else { return false }
        return try encodeIfNotEmpty(v)
    }
}

public extension SingleValueEncodingContainer {
    /// Provides an easy method to encode an array of encodable objects in a dynamic way
    ///
    /// The following rules apply when encoding:
    /// 1. If collection count is 0, An empty array gets encoded
    /// 2. If collection count is 1, encodes the object as a single value and not an array
    /// 3. Encodes as a regular array
    ///
    /// - Parameters:
    ///   - collection: The collection to encode
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeToSingleOrArray<C>(_ collection: C) throws -> SingleOrArrayEncodedAs where C: Collection, C.Element: Encodable {
        
        if collection.count == 1 {
            try self.encode(collection[collection.startIndex])
            return .single
        } else {
            /*var container = self.nestedUnkeyedContainer()
            for o in collection {
                try container.encode(o)
            }*/
            try self.nestedUnkeyedContainer { container in
                for o in collection {
                    try container.encode(o)
                }
            }
            return .array
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
    /// - returns: Returns an indicator if the object was encoded or not
    @discardableResult
    mutating func encodeToSingleOrArrayIfPresent<C>(_ collection: C?) throws -> SingleOrArrayEncodedAsIfPresent where C: Collection, C.Element: Encodable {
        guard let collection = collection else { return .none }
        return SingleOrArrayEncodedAsIfPresent(try self.encodeToSingleOrArray(collection))
    }
}

public extension SingleValueEncodingContainer {
    /// Provides an easy method for encoding dictionaries
    ///
    /// When the key is encoded it must be transformed to one of te following base types: String, Int, UInt, Bool
    /// - Parameter dictionary: The dictionary to encode
    mutating func encodeDictionary<Key, Value>(_ dictionary: [Key: Value]) throws where Key: Encodable, Value: Encodable {
        /*var container = self.nestedContainer(keyedBy: CodableKey.self)
        for(key, val) in dictionary {
            let sEncoder = SimpleEncoder()
            sEncoder.codingPath = self.codingPath
            try key.encode(to: sEncoder)
            guard let keyValue = sEncoder.value else {
                throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: self.codingPath, debugDescription: "Missing Key encoded value"))
                
            }

            if let k = keyValue as? String {
                let codingKey = CodableKey(stringValue: k)
                try container.encode(val, forKey: codingKey)
            } else {
                let codingKey = CodableKey(stringValue: "\(keyValue)")
                try container.encode(val, forKey: codingKey)
            }
        }*/
        let codPath = self.codingPath
        try self.nestedContainer(keyedBy: CodableKey.self) { container in
            for(key, val) in dictionary {
                let sEncoder = SimpleEncoder()
                sEncoder.codingPath = codPath //self.codingPath
                try key.encode(to: sEncoder)
                guard let keyValue = sEncoder.value else {
                    throw DecodingError.valueNotFound(Any.self, DecodingError.Context(codingPath: codPath /*self.codingPath*/, debugDescription: "Missing Key encoded value"))
                    
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
    
    /// Provides an easy method for encoding dictionaries
    ///
    /// When the key is encoded it must be transformed to one of te following base types: String, Int, UInt, Bool
    /// - Parameter dictionary: The dictionary to encode
    /// - returns: Returns an indicator if the object was encoded or not 
    @discardableResult
    mutating func encodeDictionaryIfPresent<Key, Value>(_ dictionary: [Key: Value]?) throws -> Bool where Key: Encodable, Value: Encodable {
        guard let dictionary = dictionary else { return false }
        try self.encodeDictionary(dictionary)
        return true
    }
}
