//
//  DecodingType.swift
//  CodableHelpers
//
//  Created by Tyler Anger on 2019-03-24.
//

import Foundation


/// Basic protocol that defines a Decoder like JSONDecoder and PropertyListDecoder
public protocol DecoderType: class {
    /// The data type used to decode from.  Normally this is Data
    associatedtype EncodedData
    
    /// A dictionary you use to customize the decoding process by providing contextual information.
    var userInfo: [CodingUserInfoKey : Any] { get set}
    
    /// Decode function from any open decoder system
    ///
    /// - Parameters:
    ///   - type: The type of the value to decode from the supplied object.
    ///   - data: The object to decode.
    /// - Returns: Returns a value of the type you specify
    func decode<T>(_ type: T.Type, from data: EncodedData) throws -> T where T : Decodable
}

/// Protocol that defines decoders that take in Data as the parameter
public protocol DataDecoderType: DecoderType {
    associatedtype EncodedData = Data
}

/// Standard definition of a decoder that reads from a data structure
public protocol StandardDecoderType: class {
    /// A dictionary you use to customize the decoding process by providing contextual information.
    var userInfo: [CodingUserInfoKey : Any] { get set}
    
    /// Decode function from any open decoder system
    ///
    /// - Parameters:
    ///   - type: The type of the value to decode from the supplied object.
    ///   - data: The object to decode.
    /// - Returns: Returns a value of the type you specify
    func decode<T>(_ type: T.Type, from data: Data) throws -> T where T : Decodable
}

// Indicator if the root supports Dictionaries
public protocol SupportedDictionaryRootDecoderType { }
// Indicator if the root supports arrays
public protocol SupportedArrayRootDecoderType { }


extension JSONDecoder: DataDecoderType, StandardDecoderType, SupportedDictionaryRootDecoderType { }
#if !_runtime(_ObjC) && !swift(>=4.2)
/// This is only when BasicCodableHelperPatchedJSONDecoder is not a typealias for JSONDecoder
extension BasicCodableHelperPatchedJSONDecoder: DataDecoderType, StandardDecoderType, SupportedDictionaryRootDecoderType { }
#endif

// PropertyListDecoder is only available on the Apple Swift SDK, or OpenSwift >= 5.1
#if swift(>=5.1) || _runtime(_ObjC)
extension PropertyListDecoder: DataDecoderType, StandardDecoderType, SupportedDictionaryRootDecoderType, SupportedArrayRootDecoderType { }
#endif
