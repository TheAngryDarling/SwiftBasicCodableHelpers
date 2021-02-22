//
//  DecodingContainerProtocols.swift
//  BasicCodableHelpers
//
//  Created by Tyler Anger on 2021-02-22.
//

import Foundation



public extension KeyedDecodingContainerProtocol {

    /// Returns a Boolean value indicating whether the decoder contains a value and that value is not nil
    /// associated with the given key.
    ///
    /// The value associated with `key` may be a null value as appropriate for
    /// the data format.
    ///
    /// - parameter key: The key to search for.
    /// - returns: Whether the `Decoder` has an entry for the given key and if so make sure its not nil.
    func containsAndNotNil(_ key: Key) -> Bool {
        guard self.contains(key) else { return false }
        guard !((try? self.decodeNil(forKey: key)) ?? false) else {
            return false
        }
        return true
    }
}

public extension UnkeyedDecodingContainer {
    /// Returns a Boolean value indicating whether the decoder contains a value and that value is not nil
    ///
    /// - returns: Whether the `Decoder` has an entry for the given index and if so make sure its not nil.
    mutating func notAtEndAndNotNil() -> Bool {
        guard !self.isAtEnd else { return false }
        guard !((try? self.decodeNil()) ?? false) else {
            return false
        }
        return true
    }
}
