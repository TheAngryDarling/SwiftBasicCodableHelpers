//
//  Encoder+BasicCodableHelpers.swift
//  BasicCodableHelpers
//
//  Created by Tyler Anger on 2021-02-26.
//

import Foundation

public extension Encoder {
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
    func encodeToSingleOrArray<C>(_ collection: C) throws -> SingleOrArrayEncodedAs where C: Collection, C.Element: Encodable {
        if canEncodeSingleFromArray(collection) {
            var container = self.singleValueContainer()
            try container.encode(collection[collection.startIndex])
            return .single
        } else {
            var container = self.unkeyedContainer()
            for obj in collection {
                try container.encode(obj)
            }
            return .array
        }
    }
}

public extension Encoder {
    /// Provides an easy method for encoding dictionaries
    ///
    /// When the key is encoded it must be transformed to one of te following base types: String, Int, UInt, Bool
    /// - Parameter dictionary: The dictionary to encode
    func encodeDictionary<Key, Value>(_ dictionary: [Key: Value]) throws where Key: Encodable, Value: Encodable {
        var container = self.singleValueContainer()
        try container.encodeDictionary(dictionary)
    }
}
