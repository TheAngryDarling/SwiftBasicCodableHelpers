//
//  Catchers.swift
//  BasicCodableHelpers
//
//  Created by Tyler Anger on 2020-08-11.
//

import Foundation

internal final class _DecoderCatcher: Decodable {
    public let decoder: Decoder
    
    public init(from decoder: Decoder) {
        self.decoder = decoder
    }
}

internal final class _EncoderCatcher: Encodable {
    public var encoder: Encoder!
    public init() { }
    
    func encode(to encoder: Encoder) {
        self.encoder = encoder
    }
}

internal final class _KeyedEncodingContainerCatcher<NestedKey>: Encodable where NestedKey : CodingKey {
    let event: (inout KeyedEncodingContainer<NestedKey>) throws -> Void
    public init(event: @escaping (inout KeyedEncodingContainer<NestedKey>) throws -> Void) {
        self.event = event
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: NestedKey.self)
        try event(&container)
    }
}
