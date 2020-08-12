//
//  SimpleEncoder.swift
//  BasicCodableHelpers
//
//  Created by Tyler Anger on 2020-08-11.
//

import Foundation

internal class SimpleEncoder: Encoder, SingleValueEncodingContainer {
    
    
    var codingPath: [CodingKey] = []
    
    var userInfo: [CodingUserInfoKey : Any] = [:]
    
    var value: Any? = nil
    
    func container<Key>(keyedBy type: Key.Type) -> KeyedEncodingContainer<Key> where Key : CodingKey {
        fatalError("Unsupported Method")
    }
    
    func unkeyedContainer() -> UnkeyedEncodingContainer {
        fatalError("Unsupported Method")
    }
    
    func singleValueContainer() -> SingleValueEncodingContainer {
        return self
    }
    
    func encodeNil() throws {
        self.value = nil
    }
    
    func encode(_ value: Bool) throws {
        self.value = value
    }
    
    func encode(_ value: String) throws {
        self.value = value
    }
    
    func encode(_ value: Double) throws {
        self.value = value
    }
    
    func encode(_ value: Float) throws {
        self.value = value
    }
    
    
    func encode(_ value: Int) throws {
        self.value = value
    }
    
    func encode(_ value: Int8) throws {
        self.value = value
    }
    
    func encode(_ value: Int16) throws {
        self.value = value
    }
    
    func encode(_ value: Int32) throws {
        self.value = value
    }
    
    func encode(_ value: Int64) throws {
        self.value = value
    }
    
    func encode(_ value: UInt) throws {
        self.value = value
    }
    
    func encode(_ value: UInt8) throws {
        self.value = value
    }
    
    func encode(_ value: UInt16) throws {
        self.value = value
    }
    
    func encode(_ value: UInt32) throws {
        self.value = value
    }
    
    func encode(_ value: UInt64) throws {
        self.value = value
    }
    
   func encode<T>(_ value: T) throws where T : Encodable {
        self.value = value
    }
}
