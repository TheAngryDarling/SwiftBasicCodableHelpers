//
//  BasicCoderChoice.swift
//  CoderTypeDefinition
//
//  Created by Tyler Anger on 2019-08-28.
//

import Foundation

public enum BasicEncoderChoice {
    #if _runtime(_ObjC)
    case xmlPList
    case binaryPList
    #endif
    case json
    case other(StandardEncoderType)
}

public enum BasicDecoderChoice {
    public static var usePatchedJSONDecoder: Bool = true
    #if _runtime(_ObjC)
    case plist
    #endif
    case json
    case other(StandardDecoderType)
}

extension BasicEncoderChoice: BasicCodableHelperCaseIterable {
    public static var allCases: [BasicEncoderChoice] {
        var rtn: [BasicEncoderChoice] = []
        #if _runtime(_ObjC)
        rtn.append(.xmlPList)
        rtn.append(.binaryPList)
        #endif
        rtn.append(.json)
        return rtn
    }
}
extension BasicDecoderChoice: BasicCodableHelperCaseIterable {
    public static var allCases: [BasicDecoderChoice] {
        var rtn: [BasicDecoderChoice] = []
        #if _runtime(_ObjC)
        rtn.append(.plist)
        #endif
        rtn.append(.json)
        return rtn
    }
}


public extension BasicEncoderChoice {
    
    var encoder: StandardEncoderType {
        let rtn: StandardEncoderType
        #if _runtime(_ObjC)
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
    
    var decoderChoice: BasicDecoderChoice? {
        let rtn: BasicDecoderChoice?
        #if _runtime(_ObjC)
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
    
    var decoder: StandardDecoderType? {
        return self.decoderChoice?.decoder
    }
}

public extension BasicDecoderChoice {
    var decoder: StandardDecoderType {
        let rtn: StandardDecoderType
        #if _runtime(_ObjC)
        switch self {
            case .plist: rtn = PropertyListDecoder()
            case .json: rtn = BasicCodableHelperPatchedJSONDecoder()
            case .other(let obj): rtn = obj
        }
        #else
        switch self {
            case .json: rtn = BasicCodableHelperPatchedJSONDecoder()
            case .other(let obj): rtn = obj
        }
        #endif
        
        return rtn
    }
}
