//
//  SimpleSingleValueEncoder.swift
//  BasicCodableHelpers
//
//  Created by Tyler Anger on 2020-08-11.
//

import Foundation

/// Class to mimic an Encoder to capture the value of a SingleValueEncodingContainer
public class SimpleSingleValueEncoder: Encoder, SingleValueEncodingContainer {
    
    
    public var codingPath: [CodingKey] = []
    
    public var userInfo: [CodingUserInfoKey : Any] = [:]
    
    /// The value that was actually encoded
    public var value: Any? = nil
    
    /// Create a new Single Value Contianer Encoder to capture the encoded value
    /// - Parameters:
    ///   - codingPath: The coding path to report as for the current encoder
    ///   - userInfo: The userInfo to report for the  current encoder
    public init(codingPath: [CodingKey] = [],
                userInfo: [CodingUserInfoKey : Any] = [:]) {
        self.codingPath = codingPath
        self.userInfo = userInfo
    }
    
    /// Create a new Single Value Contianer Encoder to capture the encoded value
    /// - Parameters:
    ///   - encoder: The encoder to copy the properties from
    public convenience init(encoder: Encoder) {
        self.init(codingPath: encoder.codingPath,
                  userInfo: encoder.userInfo)
    }
    
    /// Create a new Single Value Contianer Encoder to capture the encoded value
    /// - Parameters:
    ///   - container: The container to copy the properties from
    public convenience init<Container>(container: Container) where Container: KeyedEncodingContainerProtocol {
        
        self.init(codingPath: container.codingPath)
    }
    
    /// Create a new Single Value Contianer Encoder to capture the encoded value
    /// - Parameters:
    ///   - container: The container to copy the properties from
    public convenience init<Container>(_ value: Any? = nil,
                               container: Container) where Container: UnkeyedEncodingContainer {
        self.init(codingPath: container.codingPath)
    }
    
    /// Create a new Single Value Contianer Encoder to capture the encoded value
    /// - Parameters:
    ///   - container: The container to copy the properties from
    public convenience init<Container>(_ value: Any? = nil,
                               container: Container) where Container: SingleValueEncodingContainer {
        self.init(codingPath: container.codingPath)
    }
    
    @available(*, deprecated, message: "Not available on this encoder")
    public func container<Key>(keyedBy type: Key.Type) -> KeyedEncodingContainer<Key> where Key : CodingKey {
        fatalError("Unsupported Method")
    }
    
    @available(*, deprecated, message: "Not available on this encoder")
    public func unkeyedContainer() -> UnkeyedEncodingContainer {
        fatalError("Unsupported Method")
    }
    
    public func singleValueContainer() -> SingleValueEncodingContainer {
        return self
    }
    
    public func encodeNil() throws {
        self.value = nil
    }
    
    public func encode(_ value: Bool) throws {
        self.value = value
    }
    
    public func encode(_ value: String) throws {
        self.value = value
    }
    
    public func encode(_ value: Double) throws {
        self.value = value
    }
    
    public func encode(_ value: Float) throws {
        self.value = value
    }
    
    
    public func encode(_ value: Int) throws {
        self.value = value
    }
    
    public func encode(_ value: Int8) throws {
        self.value = value
    }
    
    public func encode(_ value: Int16) throws {
        self.value = value
    }
    
    public func encode(_ value: Int32) throws {
        self.value = value
    }
    
    public func encode(_ value: Int64) throws {
        self.value = value
    }
    
    public func encode(_ value: UInt) throws {
        self.value = value
    }
    
    public func encode(_ value: UInt8) throws {
        self.value = value
    }
    
    public func encode(_ value: UInt16) throws {
        self.value = value
    }
    
    public func encode(_ value: UInt32) throws {
        self.value = value
    }
    
    public func encode(_ value: UInt64) throws {
        self.value = value
    }
    
    public func encode<T>(_ value: T) throws where T : Encodable {
        self.value = value
    }
}
