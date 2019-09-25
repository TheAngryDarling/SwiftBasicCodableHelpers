//
//  CodableKey.swift
//  BasicCodableHelpers
//
//  Created by Tyler Anger on 2019-09-05.
//

import Foundation

/// A basic structure used to define a coding key
public struct CodableKey: CodingKey {
    
    /// The string to use in a named collection (e.g. a string-keyed dictionary).
    public var stringValue: String
    /// The value to use in an integer-indexed collection (e.g. an int-keyed dictionary).
    public var intValue: Int?
    
    /// Creates a new instance from the given string.
    ///
    /// - parameter stringValue: The string value of the desired key.
    public init(stringValue: String) {
        self.stringValue = stringValue
        self.intValue = nil
    }
    
    /// Creates a new instance from the specified integer.
    ///
    /// - parameter intValue: The integer value of the desired key.
    public init(intValue: Int) {
        self.stringValue = "\(intValue)"
        self.intValue = intValue
    }
    
    /// Creates a new instance from the given string and integer.
    ///
    /// - Parameters
    ///   - stringValue: The string value of the desired key.
    ///   - intValue: The integer value of the desired key.
    public init(stringValue: String, intValue: Int?) {
        self.stringValue = stringValue
        self.intValue = intValue
    }
    
    /// Creates a new instance from the specified integer.
    ///
    /// - parameter index: The integer value of the desired key.
    public init(index: Int) {
        self.stringValue = "Index \(index)"
        self.intValue = index
    }
    
}

#if !_runtime(_ObjC)
extension CodableKey: CustomStringConvertible, CustomDebugStringConvertible {
    /// A textual representation of this key.
    public var description: String {
        return "\(type(of: self)).\(self.stringValue)"
    }
    
    /// A textual representation of this key, suitable for debugging.
    public var debugDescription: String {
        return description
    }
}
#endif
