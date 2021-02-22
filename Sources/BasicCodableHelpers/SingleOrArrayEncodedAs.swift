//
//  SingleOrArrayEncodedAs.swift
//  BasicCodableHelpers
//
//  Created by Tyler Anger on 2021-02-20.
//

import Foundation

/// Result Enum indicating if array was encoded as a single object OR an array
public enum SingleOrArrayEncodedAs: Equatable {
    case single
    case array
    
    public init?(_ encodedAs: SingleOrArrayEncodedAsIfPresent) {
        switch encodedAs {
            case .single: self = .single
            case .array: self = .array
            case .none: return nil
        }
    }
    
    public static func == (lhs: SingleOrArrayEncodedAs,
                           rhs: SingleOrArrayEncodedAs) -> Bool {
        switch (lhs, rhs) {
            case (.single, .single): return true
            case (.array, .array): return true
            default: return false
        }
    }
}

/// Result Enum indicating if array was encoded as a single object, OR an array, OR not encoded at all
public enum SingleOrArrayEncodedAsIfPresent: Equatable {
    case none
    case single
    case array
    
    public init(_ encodedAs: SingleOrArrayEncodedAs) {
        switch encodedAs {
            case .single: self = .single
            case .array: self = .array
        }
    }
    
    
    
    public static func == (lhs: SingleOrArrayEncodedAsIfPresent,
                           rhs: SingleOrArrayEncodedAsIfPresent) -> Bool {
        switch (lhs, rhs) {
            case (.none, .none): return true
            case (.single, .single): return true
            case (.array, .array): return true
            default: return false
        }
    }
    
    public static prefix func ! (a: SingleOrArrayEncodedAsIfPresent) -> Bool {
        guard case .none = a else { return false }
        return true
    }
}
