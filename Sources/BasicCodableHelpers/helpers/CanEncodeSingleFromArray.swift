//
//  CanEncodeSingleFromArray.swift
//  BasicCodableHelpers
//
//  Created by Tyler Anger on 2021-02-28.
//

import Foundation


internal func canEncodeSingleFromArray<C>(_ collection: C,
                                          at codingPath: [CodingKey] = []) -> Bool where C: Collection, C.Element: Encodable {
        guard collection.count == 1 else { return false }
        guard let first = collection.first else { return false }
        let m = Mirror(reflecting: first)
        guard let ds = m.displayStyle else { return false }
        print(ds)
        return true
}

