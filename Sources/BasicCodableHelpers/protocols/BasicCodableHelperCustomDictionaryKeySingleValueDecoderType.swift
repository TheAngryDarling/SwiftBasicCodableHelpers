//
//  BasicCodableHelperDictionaryKeyBaseDecoderType.swift
//  BasicCodableHelpers
//
//  Created by Tyler Anger on 2021-03-20.
//

import Foundation

/// Enum used to provide the supported basic type to use when decoding custom single value keys
public enum BasicCodableHelperDictionaryKeySingleValueCodableType {
    case string
    case bool
    case int
    case int8
    case int16
    case int32
    case int64
    case uint
    case uint8
    case uint16
    case uint32
    case uint64
    
    /// The actual type
    internal var realType: Any.Type {
        switch self {
            case .string: return String.self
            case .bool: return Bool.self
            case .int: return Int.self
            case .int8: return Int8.self
            case .int16: return Int16.self
            case .int32: return Int32.self
            case .int64: return Int64.self
            case .uint: return UInt.self
            case .uint8: return UInt8.self
            case .uint16: return UInt16.self
            case .uint32: return UInt32.self
            case .uint64: return UInt64.self
        }
    }
}
/// Protocol used in helping decodeDictionary in telling what base type should be used when trying to decode keys
public protocol BasicCodableHelperCustomDictionaryKeySingleValueCodable {
    static var DictionaryKeySingleValueCodableType: BasicCodableHelperDictionaryKeySingleValueCodableType { get }
}
