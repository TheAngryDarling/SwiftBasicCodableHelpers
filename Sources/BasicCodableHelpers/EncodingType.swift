//
//  EncodingType.swift
//  CodableHelpers
//
//  Created by Tyler Anger on 2019-03-24.
//

import Foundation


/// Basic protocol that defines an Encoder like JSONEncoder and PropertyListEncoder
public protocol EncoderType: class {
    /// The data type used to encode to.  Normally this is Data
    associatedtype EncodedData
    
    /// A dictionary you use to customize the encoding process by providing contextual information.
    var userInfo: [CodingUserInfoKey : Any] { get set }
    
    /// Returns a encoded representation of the value you supply.
    ///
    /// - Parameter value: The value to encode
    /// - Returns: Returns the EncodedData representation of value
    func encode<T>(_ value: T) throws -> EncodedData where T : Encodable
}

/// Protocol that defines encoders that return Data as the results
public protocol DataEncoderType: EncoderType {
    associatedtype EncodedData = Data
}

/// Standard definition of an encoder that writes to a data structure
public protocol StandardEncoderType: class {
    
    /// A dictionary you use to customize the encoding process by providing contextual information.
    var userInfo: [CodingUserInfoKey : Any] { get set }
    
    /// Returns a encoded representation of the value you supply.
    ///
    /// - Parameter value: The value to encode
    /// - Returns: Returns the EncodedData representation of value
    func encode<T>(_ value: T) throws -> Data where T : Encodable
}

extension JSONEncoder: DataEncoderType, StandardEncoderType { }

// PropertyListEncoder is only available on the Apple Swift SDK, or OpenSwift >= 5.1
#if swift(>=5.1) || _runtime(_ObjC)
extension PropertyListEncoder: DataEncoderType, StandardEncoderType { }
#endif

