//
//  Dictionary+BasicCodableHelpers.swift
//  BasicCodableHelpers
//
//  Created by Tyler Anger on 2020-08-11.
//

import Foundation

internal extension Dictionary {
    /// Returns a new dictionary containing the values of this dictionary with the keys transformed by the given closure.
    func mapKeys<T>(_ transform: (Key) throws -> T) rethrows -> Dictionary<T, Value> where T: Hashable {
        var rtn = Dictionary<T, Value>()
        for (k,v) in self {
            let nk = try transform(k)
            rtn[nk] = v
        }
        return rtn
    }
}
