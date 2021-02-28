//
//  EncoderHelper.swift
//  BasicCodableHelpers
//
//  Created by Tyler Anger on 2021-02-20.
//

import Foundation

internal class EncoderHelper: Encodable {
    private let block: (Encoder) throws -> Void
    
    /// Create new Structure to access an Encoder
    /// - Parameters:
    ///   - block: The block to execute providing the the container
    public init(block: @escaping (Encoder) throws -> Void) {
        self.block = block
    }
    
    func encode(to encoder: Encoder) throws {
        try self.block(encoder)
    }
}

/// Structure used to gain access to child KeyedEncodingContainer
internal class KeyedEncoderHelper<NestedKey>: EncoderHelper where NestedKey: CodingKey {
    
    /// Create new Structure to access a KeyedEncodingContainer
    /// - Parameters:
    ///   - keyType: The coding key type to use on the KeyedEncodingContainer
    ///   - block: The block to execute providing the the container
    public init(keyType: NestedKey.Type,
                block: @escaping (inout KeyedEncodingContainer<NestedKey>) throws -> Void) {
        super.init() { encoder in
            var container = encoder.container(keyedBy: NestedKey.self)
            try block(&container)
        }
    }
}
/// Structure used to gain access to child UnkeyedEncodingContainer
internal class UnkeyedEncoderHelper: EncoderHelper {

    /// Create new Structure to access a UnkeyedEncodingContainer
    /// - Parameter block: The block to execute providing the the container
    public init(block: @escaping (inout UnkeyedEncodingContainer) throws -> Void) {
        //self.block = block
        super.init() { encoder in
            var container = encoder.unkeyedContainer()
            try block(&container)
        }
    }
}
