//
//  Catchers.swift
//  BasicCodableHelpers
//
//  Created by Tyler Anger on 2020-08-11.
//

import Foundation

/// Class used to gain access  to child Decoder
public final class DecoderCatcher: Decodable {
    public let decoder: Decoder
    
    public init(from decoder: Decoder) {
        self.decoder = decoder
    }
}

/// Class used to gain access to a child encoder
public class EncoderCatcher: Encodable {
    private let block: (Encoder) throws -> Void
    
    /// Create new Structure to access an Encoder
    /// - Parameters:
    ///   - block: The block to execute providing the the container
    public init(block: @escaping (Encoder) throws -> Void) {
        self.block = block
    }
    
    public func encode(to encoder: Encoder) throws {
        try self.block(encoder)
    }
}

/// Class used to gain access to a child KeyedEncodingContainer
public class KeyedEncodingContainerCatcher<NestedKey>: EncoderCatcher where NestedKey: CodingKey {
    
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
/// Class used to gain access to a child UnkeyedEncodingContainer
public class UnkeyedEncodingContainerCatcher: EncoderCatcher {

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
