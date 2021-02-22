//
//  EncoderHelper.swift
//  BasicCodableHelpers
//
//  Created by Tyler Anger on 2021-02-20.
//

import Foundation

/// Structure used to gain access to child KeyedEncodingContainer
internal struct KeyedEncoderHelper<NestedKey>: Encodable where NestedKey: CodingKey {
    let keyType: NestedKey.Type
    let block: (inout KeyedEncodingContainer<NestedKey>) throws -> Void
    
    /// Create new Structure to access a KeyedEncodingContainer
    /// - Parameters:
    ///   - keyType: The coding key type to use on the KeyedEncodingContainer
    ///   - block: The block to execute providing the the container
    public init(keyType: NestedKey.Type,
                block: @escaping (inout KeyedEncodingContainer<NestedKey>) throws -> Void) {
        self.keyType = keyType
        self.block = block
    }
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: self.keyType)
        try self.block(&container)
    }
}
/// Structure used to gain access to child UnkeyedEncodingContainer
internal struct UnkeyedEncoderHelper: Encodable {
    let block: (inout UnkeyedEncodingContainer) throws -> Void
    /// Create new Structure to access a UnkeyedEncodingContainer
    /// - Parameter block: The block to execute providing the the container
    public init(block: @escaping (inout UnkeyedEncodingContainer) throws -> Void) {
        self.block = block
    }
    func encode(to encoder: Encoder) throws {
        var container = encoder.unkeyedContainer()
        try self.block(&container)
    }
}
