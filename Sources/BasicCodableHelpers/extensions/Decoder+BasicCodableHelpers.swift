//
//  Decoder+BasicCodableHelpers.swift
//  BasicCodableHelpers
//
//  Created by Tyler Anger on 2021-02-26.
//

import Foundation

public extension Decoder {
    /// Provides an easy method of decoding a single value/array object into an array
    ///
    /// The following rules apply when decoding:
    /// 1. Tries to decode as a single value object and reutrns as a 1 element array
    /// 2. Tries to decode as an array of objects and returns it
    ///
    /// - parameters:
    ///   - type: The type of value to decode.
    ///   - data: The object to decode.
    /// - Returns: Returns an array of elements that decoded
    func decodeFromSingleOrArray<T>(_ type: T.Type) throws -> [T] where T: Decodable {
        if let container = try? self.singleValueContainer() {
            let singleton = try container.decode(T.self)
            return [singleton]
        } else {
            var container = try self.unkeyedContainer()
            var rtn: [T] = []
            while !container.isAtEnd {
                let val = try container.decode(T.self)
                rtn.append(val)
            }
            return rtn
        }
    }
}
