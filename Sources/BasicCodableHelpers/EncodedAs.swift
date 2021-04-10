//
//  EncodedAs.swift
//  BasicCodableHelpers
//
//  Created by Tyler Anger on 2021-04-10.
//

import Foundation

/// Result enum indicating if an object was encoded or if nil was encoded
public enum EncodedAs {
    case `nil`
    case value
}
