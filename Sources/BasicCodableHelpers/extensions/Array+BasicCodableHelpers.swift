//
//  Array+BasicCodableHelpers.swift
//  BasicCodableHelpers
//
//  Created by Tyler Anger on 2021-02-28.
//

import Foundation
// Add simple helper method of creating a new array out of the current while adding a new element
extension Array {
    /// Creats a new copy of the given array and appens the new element to the end of the new array
    ///
    /// - Parameter element: new element to append
    /// - Returns: Returns new instance of the existing array with a new value appended to the end
    internal func appending(_ element: Element) -> Array<Element> {
        var rtn: Array<Element> = Array<Element>()
        rtn.append(contentsOf: self)
        rtn.append(element)
        return rtn
    }
}

//Adds a simple string representation of the coding path
extension Array where Element == CodingKey {
    /// Creates a new copy of the givven array of CodingKey's and appens a new instance of CodableKey with the given string value
    ///
    /// - Parameter value: New CodingKey string value
    internal func appending(stringValue value: String) -> Array<CodingKey> {
        return self.appending(CodableKey(stringValue: value))
    }
    
    /// Creates a new copy of the givven array of CodingKey's and appens a new instance of CodableKey with the given int value
    ///
    /// - Parameter value: New CodingKey int value
    internal func appending(intValue value: Int) -> Array<CodingKey> {
        return self.appending(CodableKey(intValue: value))
    }
    
    /// Creates a new copy of the givven array of CodingKey's and appens a new instance of CodableKey with the given index value
    ///
    /// - Parameter value: New CodingKey index value
    internal func appending(index value: Int) -> Array<CodingKey> {
        return self.appending(CodableKey(index: value))
    }
}
