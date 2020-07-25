# Basic Codable Helpers

![swift >= 4.0](https://img.shields.io/badge/swift-%3E%3D4.0-brightgreen.svg)
![macOS](https://img.shields.io/badge/os-macOS-green.svg?style=flat)
![Linux](https://img.shields.io/badge/os-linux-green.svg?style=flat)
[![Apache 2.0](https://img.shields.io/badge/License-Apache%202.0-blue.svg?style=flat)](LICENSE.md)

Helper methods for Encoding and Decoding Containers

### Extensions

#### KeyedDecodingContainerProtocol / UnkeyedDecodingContainer

* **decodeIfPresent** - New decode if present with default value: decodeIfPresent(..., withDefaultValue: @autoclosure () -> ...) throws -> ...
* **decodeFromSingleOrArray** - New decode for arrays where the object could be a single value or Array: decodeSingleOrArray\<T\>(...) throws -> [T] where T: Decodable
* **decodeFromSingleOrArrayIfPresent** - New decode for arrays where the object could be a single value or Array: decodeFromSingleOrArrayIfPresent\<T\>(...) throws -> [T] where T: Decodable

#### KeyedEncodingContainerProtocol / UnkeyedEncodingContainer

* **encode** - New encode if not method.  Encodes an object only if it does not equal a given value: encode(..., ifNot...) throws
* **encodeIfPresent** - New encode if present and not method.  Encodes an object only if its not nil, and not equals a given value: encodeIfPresent(..., andNot: ...) throws
* **encodeToSingleOrArray** - New encode to single object or array.  Encodes a collection to either a single object (if only one object is in the collection), OR an array: encodeToSingleOrArray(...) throws
* **encodeToSingleOrArrayIfPresent** - New encode to single object or array.  Encodes a collection if not nil to either a single object (if only one object is in the collection), OR an array: encodeToSingleOrArrayIfPresent(...) throws
* **encodeIfNotEmpty** - New encode method.  Encodes the collection only if the collection has elements
* **encodeIfPresentAndNotEmpty** - New encode if present method.  Encodes the collection only if its not nil AND the collection has elements

### Protocols

* **DecoderType** - Basic definition of any decoder with any data storage.  Provides decode method
* **DataDecoderType** - Inherits DecoderType where EncodedData type is Data
* **StandardDecoderType** - Its the same structure as DataDecoderType but has no associated types so can be used as a variable type

* **EncoderType** - Basic definition of any encoder with any data storage.  Provides encode method
* **DataEncoderType** - Inherits EncoderType where EncodedData type is Data
* **StandardEncoderType** - Its the same structure as DataEncoderType but has no associated types so can be used as a variable type

* **BasicCodableHelperCaseIterable** - A copy of CaseIterable protocol OR a alias to CaseIterable depending on the version of Swift.  Used with Choice Enums


### Structures

* **CodableKey** - Basic Coding Key for use when working with unknown keys

### Choice Enums

* **BasicEncoderChoice** - Provides a programmatic way of choosing which encoder to use. This is nice when providing end users with the choice of what type file to encode to
  * **xmlPList** - Use the standard PropertyListEncoder for xml (ObjectiveC runtime ONLY)
  * **binaryPList** - Use the standard PropertyListEncoder for binary (ObjectiveC runtime ONLY)
  * **json** - Use the standard JSONEncoder
  * **other** - You can specify your own instance of an encoder

* **BasicDecoderChoice** - Provides a programmatic way of choosing which decoder to use.
  * **plist** -  Use the standard PropertyListDecoder (ObjectiveC runtime ONLY)
  * **json** - If swift < 4.2 and BasicDecoderChoice.usePatchedJSONDecoder enabled, will use BasicCodableHelperPatchedJSONDecoder otherwise will use standard JSONDecoder
  * **other** - You can specify your own instance of a decoder

### Patches

* **BasicCodableHelperPatchedJSONDecoder** - This class is a patched version of JSONDecoder for [SR-7109](https://bugs.swift.org/browse/SR-7109)

## Author

* **Tyler Anger** - *Initial work*  - [TheAngryDarling](https://github.com/TheAngryDarling)

## License

This project is licensed under Apache License v2.0 - see the [LICENSE.md](LICENSE.md) file for details.

## Acknowledgments

Modified version of  [JSONDecoder](https://github.com/apple/swift-corelibs-foundation/blob/master/Foundation/JSONEncoder.swift)
