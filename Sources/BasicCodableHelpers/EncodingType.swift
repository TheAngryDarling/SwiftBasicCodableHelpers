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

/// Indicator if the root supports Dictionaries
public protocol SupportedDictionaryRootEncoderType { }
/// Indicator if the root supports arrays
public protocol SupportedArrayRootEncoderType { }

extension JSONEncoder: DataEncoderType, StandardEncoderType, SupportedDictionaryRootEncoderType, SupportedArrayRootEncoderType { }

// PropertyListEncoder is only available on the Apple Swift SDK, or OpenSwift >= 5.1
#if swift(>=5.1) || _runtime(_ObjC)
extension PropertyListEncoder: DataEncoderType, StandardEncoderType, SupportedDictionaryRootEncoderType, SupportedArrayRootEncoderType { }
#endif

fileprivate struct CollectionEncoder<C>: Encodable where C: Collection, C.Element: Encodable {
    let collection: C
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.unkeyedContainer()
        for obj in collection {
            try container.encode(obj)
        }
    }
}

public extension EncoderType where Self: SupportedDictionaryRootEncoderType, Self: SupportedArrayRootEncoderType {
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
    func encodeToSingleOrArray<C>(_ collection: C) throws -> EncodedData where C: Collection, C.Element: Encodable {
        
        if collection.count == 1 {
            return try self.encode(collection[collection.startIndex])
        } else {
            let col = CollectionEncoder(collection: collection)
            return try self.encode(col)
        }
    }
}



public extension StandardEncoderType where Self: SupportedDictionaryRootEncoderType, Self: SupportedArrayRootEncoderType {
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
    func stdEncodeToSingleOrArray<C>(_ collection: C) throws -> Data where C: Collection, C.Element: Encodable {

        if collection.count == 1 {
            return try self.encode(collection[collection.startIndex])
        } else {
            /*let col = CollectionEncoder(collection: collection)
            return try self.encode(col)*/
            let encoder = EncoderHelper() { encoder in
                try encoder.encodeToSingleOrArray(collection)
            }
            return  try self.encode(encoder)
        }
    }
}



