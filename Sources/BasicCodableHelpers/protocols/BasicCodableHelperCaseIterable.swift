//
//  BasicCodableHelperCaseIterable.swift
//  BasicCodableHelpers
//
//  Created by Tyler Anger on 2019-08-29.
//

import Foundation

#if swift(>=4.2)
public typealias BasicCodableHelperCaseIterable = CaseIterable
#else
public protocol BasicCodableHelperCaseIterable {
    associatedtype AllCases : Collection where Self == Self.AllCases.Element
    static var allCases: Self.AllCases { get }
}
#endif
