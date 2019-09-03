//
//  Dictionary.Keys+BasicCodableHelpers.swift
//  BasicCodableHelpers
//
//  Created by Tyler Anger on 2019-08-28.
//

import Foundation

internal extension Dictionary.Keys {
    #if !swift(>=4.0.9)
    func compactMap<ElementOfResult>(_ transform: (Key) throws -> ElementOfResult?) rethrows -> [ElementOfResult] {
        var rtn: [ElementOfResult] = []
        for k in self {
            if let v = try transform(k) { rtn.append(v) }
        }
        return rtn
    }
    #endif
}
