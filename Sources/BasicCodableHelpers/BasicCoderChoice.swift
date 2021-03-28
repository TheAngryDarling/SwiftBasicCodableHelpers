//
//  BasicCoderChoice.swift
//  CoderTypeDefinition
//
//  Created by Tyler Anger on 2019-08-28.
//

import Foundation

/// Programmable Choice for picking an Encoder
public enum BasicEncoderChoice: CustomStringConvertible {
    #if swift(>=5.1) || _runtime(_ObjC)
    case xmlPList
    case binaryPList
    #endif
    case json
    case other(StandardEncoderType)
    
    public var description: String {
        #if swift(>=5.1) || _runtime(_ObjC)
        switch self {
            case .xmlPList: return "XML Property List"
            case .binaryPList: return "Binary Property List"
            case .json: return "JSON"
            case .other(let o): return "\(o)"
        }
        #else
        switch self {
            case .json: return "JSON"
            case .other(let o): return "\(o)"
        }
        #endif
    }
}

/// Programmable Choice for picking a Decoder
public enum BasicDecoderChoice: CustomStringConvertible {
    
    /// Flag indicator used to determin which JSON decoder to use (BasicCodableHelperPatchedJSONDecoder or JSONDecoder) when working on Swift < 4.2
    public static var usePatchedJSONDecoder: Bool = true
    #if swift(>=5.1) || _runtime(_ObjC)
    case plist
    #endif
    case json
    case other(StandardDecoderType)
    
    public var description: String {
        #if swift(>=5.1) || _runtime(_ObjC)
        switch self {
            case .plist: return "Property List"
            case .json: return "JSON"
            case .other(let o): return "\(o)"
        }
        #else
        switch self {
            case .json: return "JSON"
            case .other(let o): return "\(o)"
        }
        #endif
    }
}

extension BasicEncoderChoice: BasicCodableHelperCaseIterable {
    /// Provides all simple encoder choices (excludes other)
    public static var allCases: [BasicEncoderChoice] {
        var rtn: [BasicEncoderChoice] = []
        #if swift(>=5.1) || _runtime(_ObjC)
        rtn.append(.xmlPList)
        rtn.append(.binaryPList)
        #endif
        rtn.append(.json)
        return rtn
    }
}
extension BasicDecoderChoice: BasicCodableHelperCaseIterable {
    /// Provides all simple decoder chocies (excludes other)
    public static var allCases: [BasicDecoderChoice] {
        var rtn: [BasicDecoderChoice] = []
        #if swift(>=5.1) || _runtime(_ObjC)
        rtn.append(.plist)
        #endif
        rtn.append(.json)
        return rtn
    }
}


public extension BasicEncoderChoice {
    /// Provides the standard encoder for the selected choice
    var encoder: StandardEncoderType {
        let rtn: StandardEncoderType
        #if swift(>=5.1) || _runtime(_ObjC)
        switch self {
            case .xmlPList:
                rtn = PropertyListEncoder()
                (rtn as! PropertyListEncoder).outputFormat = .xml
            case .binaryPList:
                rtn = PropertyListEncoder()
                (rtn as! PropertyListEncoder).outputFormat = .binary
            case .json: rtn = JSONEncoder()
            case .other(let obj): rtn = obj
        }
        #else
        switch self {
            case .json: rtn = JSONEncoder()
            case .other(let obj): rtn = obj
        }
        #endif
        
        return rtn
    }
    
    /// Provides the decoder choice equivilant to this encoder choice if one is available
    var decoderChoice: BasicDecoderChoice? {
        let rtn: BasicDecoderChoice?
        #if swift(>=5.1) || _runtime(_ObjC)
        switch self {
            case .xmlPList: rtn = .plist
            case .binaryPList: rtn = .plist
            case .json: rtn = .json
            case .other(_): rtn = nil
        }
        #else
        switch self {
            case .json: rtn = .json
            case .other(_): rtn = nil
        }
        #endif
        return rtn
    }
    
    /// Provides the standard decoder for the selected choice if one is available
    var decoder: StandardDecoderType? {
        return self.decoderChoice?.decoder
    }
}

public extension BasicDecoderChoice {
    /// Provides the standard decoder for the selected choice
    var decoder: StandardDecoderType {
        let rtn: StandardDecoderType
        #if swift(>=5.1) || _runtime(_ObjC)
        switch self {
            case .plist: rtn = PropertyListDecoder()
            case .json:
                if BasicDecoderChoice.usePatchedJSONDecoder {
                    rtn = BasicCodableHelperPatchedJSONDecoder()
                } else {
                    rtn = JSONDecoder()
                }
            case .other(let obj): rtn = obj
        }
        #else
        switch self {
            case .json:
                if BasicDecoderChoice.usePatchedJSONDecoder {
                    rtn = BasicCodableHelperPatchedJSONDecoder()
                } else {
                    rtn = JSONDecoder()
                }
            case .other(let obj): rtn = obj
        }
        #endif
        
        return rtn
    }
}
