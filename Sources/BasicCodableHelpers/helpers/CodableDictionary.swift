//
//  CodableDictionary.swift
//  BasicCodableHelpers
//
//  Created by Tyler Anger on 2021-03-18.
//

import Foundation

/// A dictionary wrapper that is automatically codable as key: value where Key is not a string
/// but encodes/deocdes as a single value of type String
public struct CodableDictionary<Key, Value> where Key: Codable,
                                                  Key: Hashable,
                                                  Value: Codable {
    public typealias CoreData = Dictionary<Key, Value>
    fileprivate var dictionary: CoreData
    
    public init(_ dictionary: Dictionary<Key, Value>) {
        self.dictionary = dictionary
    }
    /// Creates an empty dictionary.
    public init() { self.dictionary = CoreData() }
    /// Creates an empty dictionary with preallocated space for at least the
    /// specified number of elements.
    ///
    /// Use this initializer to avoid intermediate reallocations of a dictionary's
    /// storage buffer when you know how many key-value pairs you are adding to a
    /// dictionary after creation.
    ///
    /// - Parameter minimumCapacity: The minimum number of key-value pairs that
    ///   the newly created dictionary should be able to store without
    ///   reallocating its storage buffer.
    public init(minimumCapacity: Int) {
        self.dictionary = CoreData(minimumCapacity: minimumCapacity)
    }
    /// Creates a new dictionary from the key-value pairs in the given sequence.
    ///
    /// You use this initializer to create a dictionary when you have a sequence
    /// of key-value tuples with unique keys. Passing a sequence with duplicate
    /// keys to this initializer results in a runtime error. If your
    /// sequence might have duplicate keys, use the
    /// `Dictionary(_:uniquingKeysWith:)` initializer instead.
    ///
    /// The following example creates a new dictionary using an array of strings
    /// as the keys and the integers in a countable range as the values:
    ///
    ///     let digitWords = ["one", "two", "three", "four", "five"]
    ///     let wordToValue = Dictionary(uniqueKeysWithValues: zip(digitWords, 1...5))
    ///     print(wordToValue["three"]!)
    ///     // Prints "3"
    ///     print(wordToValue)
    ///     // Prints "["three": 3, "four": 4, "five": 5, "one": 1, "two": 2]"
    ///
    /// - Parameter keysAndValues: A sequence of key-value pairs to use for
    ///   the new dictionary. Every key in `keysAndValues` must be unique.
    /// - Returns: A new dictionary initialized with the elements of
    ///   `keysAndValues`.
    /// - Precondition: The sequence must not have duplicate keys.
    public init<S: Sequence>(
        uniqueKeysWithValues keysAndValues: S
    ) where S.Element == (Key, Value) {
        self.dictionary = CoreData(uniqueKeysWithValues: keysAndValues)
    }
    /// Creates a new dictionary from the key-value pairs in the given sequence,
    /// using a combining closure to determine the value for any duplicate keys.
    ///
    /// You use this initializer to create a dictionary when you have a sequence
    /// of key-value tuples that might have duplicate keys. As the dictionary is
    /// built, the initializer calls the `combine` closure with the current and
    /// new values for any duplicate keys. Pass a closure as `combine` that
    /// returns the value to use in the resulting dictionary: The closure can
    /// choose between the two values, combine them to produce a new value, or
    /// even throw an error.
    ///
    /// The following example shows how to choose the first and last values for
    /// any duplicate keys:
    ///
    ///     let pairsWithDuplicateKeys = [("a", 1), ("b", 2), ("a", 3), ("b", 4)]
    ///
    ///     let firstValues = Dictionary(pairsWithDuplicateKeys,
    ///                                  uniquingKeysWith: { (first, _) in first })
    ///     // ["b": 2, "a": 1]
    ///
    ///     let lastValues = Dictionary(pairsWithDuplicateKeys,
    ///                                 uniquingKeysWith: { (_, last) in last })
    ///     // ["b": 4, "a": 3]
    ///
    /// - Parameters:
    ///   - keysAndValues: A sequence of key-value pairs to use for the new
    ///     dictionary.
    ///   - combine: A closure that is called with the values for any duplicate
    ///     keys that are encountered. The closure returns the desired value for
    ///     the final dictionary.
    public init<S: Sequence>(
        _ keysAndValues: S,
        uniquingKeysWith combine: (Value, Value) throws -> Value
    ) rethrows where S.Element == (Key, Value) {
        self.dictionary = try CoreData(keysAndValues, uniquingKeysWith: combine)
    }
    
    /// Creates a new dictionary whose keys are the groupings returned by the
    /// given closure and whose values are arrays of the elements that returned
    /// each key.
    ///
    /// The arrays in the "values" position of the new dictionary each contain at
    /// least one element, with the elements in the same order as the source
    /// sequence.
    ///
    /// The following example declares an array of names, and then creates a
    /// dictionary from that array by grouping the names by first letter:
    ///
    ///     let students = ["Kofi", "Abena", "Efua", "Kweku", "Akosua"]
    ///     let studentsByLetter = Dictionary(grouping: students, by: { $0.first! })
    ///     // ["E": ["Efua"], "K": ["Kofi", "Kweku"], "A": ["Abena", "Akosua"]]
    ///
    /// The new `studentsByLetter` dictionary has three entries, with students'
    /// names grouped by the keys `"E"`, `"K"`, and `"A"`.
    ///
    /// - Parameters:
    ///   - values: A sequence of values to group into a dictionary.
    ///   - keyForValue: A closure that returns a key for each element in
    ///     `values`.
    public init<S: Sequence>(
        grouping values: S,
        by keyForValue: (S.Element) throws -> Key
    ) rethrows where Value == [S.Element] {
        self.dictionary = try CoreData(grouping: values, by: keyForValue)
    }
    
}

extension CodableDictionary: Codable {
    public init(from decoder: Decoder) throws {
        self.dictionary = try decoder.decodeDictionary(Dictionary<Key, Value>.self)
    }
    public func encode(to encoder: Encoder) throws {
        try encoder.encodeDictionary(self.dictionary)
    }
}

extension CodableDictionary: Sequence {
    public typealias Iterator = CoreData.Iterator
    /// Returns an iterator over the dictionary's key-value pairs.
    ///
    /// Iterating over a dictionary yields the key-value pairs as two-element
    /// tuples. You can decompose the tuple in a `for`-`in` loop, which calls
    /// `makeIterator()` behind the scenes, or when calling the iterator's
    /// `next()` method directly.
    ///
    ///     let hues = ["Heliotrope": 296, "Coral": 16, "Aquamarine": 156]
    ///     for (name, hueValue) in hues {
    ///         print("The hue of \(name) is \(hueValue).")
    ///     }
    ///     // Prints "The hue of Heliotrope is 296."
    ///     // Prints "The hue of Coral is 16."
    ///     // Prints "The hue of Aquamarine is 156."
    ///
    /// - Returns: An iterator over the dictionary with elements of type
    ///   `(key: Key, value: Value)`.
    public func makeIterator() -> Iterator {
        return self.dictionary.makeIterator()
    }
}

extension CodableDictionary: Collection {
    public typealias SubSequence = Slice<CoreData>
    public typealias Element = (key: Key, value: Value)
    public typealias Index = CoreData.Index
    /// The position of the first element in a nonempty dictionary.
      ///
      /// If the collection is empty, `startIndex` is equal to `endIndex`.
      ///
      /// - Complexity: Amortized O(1) if the dictionary does not wrap a bridged
      ///   `NSDictionary`. If the dictionary wraps a bridged `NSDictionary`, the
      ///   performance is unspecified.
      public var startIndex: Index {
        return self.dictionary.startIndex
      }

      /// The dictionary's "past the end" position---that is, the position one
      /// greater than the last valid subscript argument.
      ///
      /// If the collection is empty, `endIndex` is equal to `startIndex`.
      ///
      /// - Complexity: Amortized O(1) if the dictionary does not wrap a bridged
      ///   `NSDictionary`; otherwise, the performance is unspecified.
      public var endIndex: Index {
        return self.dictionary.endIndex
      }

      public func index(after i: Index) -> Index {
        return self.dictionary.index(after: i)
      }

      public func formIndex(after i: inout Index) {
        self.dictionary.formIndex(after: &i)
      }

      /// Returns the index for the given key.
      ///
      /// If the given key is found in the dictionary, this method returns an index
      /// into the dictionary that corresponds with the key-value pair.
      ///
      ///     let countryCodes = ["BR": "Brazil", "GH": "Ghana", "JP": "Japan"]
      ///     let index = countryCodes.index(forKey: "JP")
      ///
      ///     print("Country code for \(countryCodes[index!].value): '\(countryCodes[index!].key)'.")
      ///     // Prints "Country code for Japan: 'JP'."
      ///
      /// - Parameter key: The key to find in the dictionary.
      /// - Returns: The index for `key` and its associated value if `key` is in
      ///   the dictionary; otherwise, `nil`.
      public func index(forKey key: Key) -> Index? {
        // Complexity: amortized O(1) for native dictionary, O(*n*) when wrapping an
        // NSDictionary.
        return self.dictionary.index(forKey: key)
      }

      /// Accesses the key-value pair at the specified position.
      ///
      /// This subscript takes an index into the dictionary, instead of a key, and
      /// returns the corresponding key-value pair as a tuple. When performing
      /// collection-based operations that return an index into a dictionary, use
      /// this subscript with the resulting value.
      ///
      /// For example, to find the key for a particular value in a dictionary, use
      /// the `firstIndex(where:)` method.
      ///
      ///     let countryCodes = ["BR": "Brazil", "GH": "Ghana", "JP": "Japan"]
      ///     if let index = countryCodes.firstIndex(where: { $0.value == "Japan" }) {
      ///         print(countryCodes[index])
      ///         print("Japan's country code is '\(countryCodes[index].key)'.")
      ///     } else {
      ///         print("Didn't find 'Japan' as a value in the dictionary.")
      ///     }
      ///     // Prints "(key: "JP", value: "Japan")"
      ///     // Prints "Japan's country code is 'JP'."
      ///
      /// - Parameter position: The position of the key-value pair to access.
      ///   `position` must be a valid index of the dictionary and not equal to
      ///   `endIndex`.
      /// - Returns: A two-element tuple with the key and value corresponding to
      ///   `position`.
      public subscript(position: Index) -> Element {
        return self.dictionary[position]
      }

      /// The number of key-value pairs in the dictionary.
      ///
      /// - Complexity: O(1).
      public var count: Int {
        return self.dictionary.count
      }

      //
      // `Sequence` conformance
      //
      /// A Boolean value that indicates whether the dictionary is empty.
      ///
      /// Dictionaries are empty when created with an initializer or an empty
      /// dictionary literal.
      ///
      ///     var frequencies: [String: Int] = [:]
      ///     print(frequencies.isEmpty)
      ///     // Prints "true"
      public var isEmpty: Bool {
        return self.dictionary.isEmpty
      }
    
}


extension CodableDictionary {
  /// Accesses the value associated with the given key for reading and writing.
  ///
  /// This *key-based* subscript returns the value for the given key if the key
  /// is found in the dictionary, or `nil` if the key is not found.
  ///
  /// The following example creates a new dictionary and prints the value of a
  /// key found in the dictionary (`"Coral"`) and a key not found in the
  /// dictionary (`"Cerise"`).
  ///
  ///     var hues = ["Heliotrope": 296, "Coral": 16, "Aquamarine": 156]
  ///     print(hues["Coral"])
  ///     // Prints "Optional(16)"
  ///     print(hues["Cerise"])
  ///     // Prints "nil"
  ///
  /// When you assign a value for a key and that key already exists, the
  /// dictionary overwrites the existing value. If the dictionary doesn't
  /// contain the key, the key and value are added as a new key-value pair.
  ///
  /// Here, the value for the key `"Coral"` is updated from `16` to `18` and a
  /// new key-value pair is added for the key `"Cerise"`.
  ///
  ///     hues["Coral"] = 18
  ///     print(hues["Coral"])
  ///     // Prints "Optional(18)"
  ///
  ///     hues["Cerise"] = 330
  ///     print(hues["Cerise"])
  ///     // Prints "Optional(330)"
  ///
  /// If you assign `nil` as the value for the given key, the dictionary
  /// removes that key and its associated value.
  ///
  /// In the following example, the key-value pair for the key `"Aquamarine"`
  /// is removed from the dictionary by assigning `nil` to the key-based
  /// subscript.
  ///
  ///     hues["Aquamarine"] = nil
  ///     print(hues)
  ///     // Prints "["Coral": 18, "Heliotrope": 296, "Cerise": 330]"
  ///
  /// - Parameter key: The key to find in the dictionary.
  /// - Returns: The value associated with `key` if `key` is in the dictionary;
  ///   otherwise, `nil`.
  public subscript(key: Key) -> Value? {
    get { return self.dictionary[key] }
    set { self.dictionary[key] = newValue }
  }
}

extension CodableDictionary: ExpressibleByDictionaryLiteral {
    
    /// Creates a dictionary initialized with a dictionary literal.
    ///
    /// Do not call this initializer directly. It is called by the compiler to
    /// handle dictionary literals. To use a dictionary literal as the initial
    /// value of a dictionary, enclose a comma-separated list of key-value pairs
    /// in square brackets.
    ///
    /// For example, the code sample below creates a dictionary with string keys
    /// and values.
    ///
    ///     let countryCodes = ["BR": "Brazil", "GH": "Ghana", "JP": "Japan"]
    ///     print(countryCodes)
    ///     // Prints "["BR": "Brazil", "JP": "Japan", "GH": "Ghana"]"
    ///
    /// - Parameter elements: The key-value pairs that will make up the new
    ///   dictionary. Each key in `elements` must be unique.
    public init(dictionaryLiteral elements: (Key, Value)...) {
        self.init(uniqueKeysWithValues: elements)
    }
}

extension CodableDictionary {
  /// Accesses the value with the given key. If the dictionary doesn't contain
  /// the given key, accesses the provided default value as if the key and
  /// default value existed in the dictionary.
  ///
  /// Use this subscript when you want either the value for a particular key
  /// or, when that key is not present in the dictionary, a default value. This
  /// example uses the subscript with a message to use in case an HTTP response
  /// code isn't recognized:
  ///
  ///     var responseMessages = [200: "OK",
  ///                             403: "Access forbidden",
  ///                             404: "File not found",
  ///                             500: "Internal server error"]
  ///
  ///     let httpResponseCodes = [200, 403, 301]
  ///     for code in httpResponseCodes {
  ///         let message = responseMessages[code, default: "Unknown response"]
  ///         print("Response \(code): \(message)")
  ///     }
  ///     // Prints "Response 200: OK"
  ///     // Prints "Response 403: Access forbidden"
  ///     // Prints "Response 301: Unknown response"
  ///
  /// When a dictionary's `Value` type has value semantics, you can use this
  /// subscript to perform in-place operations on values in the dictionary.
  /// The following example uses this subscript while counting the occurrences
  /// of each letter in a string:
  ///
  ///     let message = "Hello, Elle!"
  ///     var letterCounts: [Character: Int] = [:]
  ///     for letter in message {
  ///         letterCounts[letter, default: 0] += 1
  ///     }
  ///     // letterCounts == ["H": 1, "e": 2, "l": 4, "o": 1, ...]
  ///
  /// When `letterCounts[letter, defaultValue: 0] += 1` is executed with a
  /// value of `letter` that isn't already a key in `letterCounts`, the
  /// specified default value (`0`) is returned from the subscript,
  /// incremented, and then added to the dictionary under that key.
  ///
  /// - Note: Do not use this subscript to modify dictionary values if the
  ///   dictionary's `Value` type is a class. In that case, the default value
  ///   and key are not written back to the dictionary after an operation.
  ///
  /// - Parameters:
  ///   - key: The key the look up in the dictionary.
  ///   - defaultValue: The default value to use if `key` doesn't exist in the
  ///     dictionary.
  /// - Returns: The value associated with `key` in the dictionary; otherwise,
  ///   `defaultValue`.
  public subscript(
    key: Key, default defaultValue: @autoclosure () -> Value
  ) -> Value {
    get {
        return self.dictionary[key, default: defaultValue()]
    }
  }

  /// Returns a new dictionary containing the keys of this dictionary with the
  /// values transformed by the given closure.
  ///
  /// - Parameter transform: A closure that transforms a value. `transform`
  ///   accepts each value of the dictionary as its parameter and returns a
  ///   transformed value of the same or of a different type.
  /// - Returns: A dictionary containing the keys and transformed values of
  ///   this dictionary.
  ///
  /// - Complexity: O(*n*), where *n* is the length of the dictionary.
  public func mapValues<T>(
    _ transform: (Value) throws -> T
  ) rethrows -> CodableDictionary<Key, T> where T: Codable {
    let newDict: Dictionary<Key, T> = try self.dictionary.mapValues(transform)
    return CodableDictionary<Key, T>(newDict)
  }

    #if swift(>=5.0)
  /// Returns a new dictionary containing only the key-value pairs that have
  /// non-`nil` values as the result of transformation by the given closure.
  ///
  /// Use this method to receive a dictionary with non-optional values when
  /// your transformation produces optional values.
  ///
  /// In this example, note the difference in the result of using `mapValues`
  /// and `compactMapValues` with a transformation that returns an optional
  /// `Int` value.
  ///
  ///     let data = ["a": "1", "b": "three", "c": "///4///"]
  ///
  ///     let m: [String: Int?] = data.mapValues { str in Int(str) }
  ///     // ["a": Optional(1), "b": nil, "c": nil]
  ///
  ///     let c: [String: Int] = data.compactMapValues { str in Int(str) }
  ///     // ["a": 1]
  ///
  /// - Parameter transform: A closure that transforms a value. `transform`
  ///   accepts each value of the dictionary as its parameter and returns an
  ///   optional transformed value of the same or of a different type.
  /// - Returns: A dictionary containing the keys and non-`nil` transformed
  ///   values of this dictionary.
  ///
  /// - Complexity: O(*m* + *n*), where *n* is the length of the original
  ///   dictionary and *m* is the length of the resulting dictionary.
  public func compactMapValues<T>(
    _ transform: (Value) throws -> T?
  ) rethrows -> CodableDictionary<Key, T> where T: Codable {
    let newDict: Dictionary<Key, T> = try self.dictionary.compactMapValues(transform)
    return CodableDictionary<Key, T>(newDict)
  }
  #endif

  /// Updates the value stored in the dictionary for the given key, or adds a
  /// new key-value pair if the key does not exist.
  ///
  /// Use this method instead of key-based subscripting when you need to know
  /// whether the new value supplants the value of an existing key. If the
  /// value of an existing key is updated, `updateValue(_:forKey:)` returns
  /// the original value.
  ///
  ///     var hues = ["Heliotrope": 296, "Coral": 16, "Aquamarine": 156]
  ///
  ///     if let oldValue = hues.updateValue(18, forKey: "Coral") {
  ///         print("The old value of \(oldValue) was replaced with a new one.")
  ///     }
  ///     // Prints "The old value of 16 was replaced with a new one."
  ///
  /// If the given key is not present in the dictionary, this method adds the
  /// key-value pair and returns `nil`.
  ///
  ///     if let oldValue = hues.updateValue(330, forKey: "Cerise") {
  ///         print("The old value of \(oldValue) was replaced with a new one.")
  ///     } else {
  ///         print("No value was found in the dictionary for that key.")
  ///     }
  ///     // Prints "No value was found in the dictionary for that key."
  ///
  /// - Parameters:
  ///   - value: The new value to add to the dictionary.
  ///   - key: The key to associate with `value`. If `key` already exists in
  ///     the dictionary, `value` replaces the existing associated value. If
  ///     `key` isn't already a key of the dictionary, the `(key, value)` pair
  ///     is added.
  /// - Returns: The value that was replaced, or `nil` if a new key-value pair
  ///   was added.
  public mutating func updateValue(
    _ value: Value,
    forKey key: Key
  ) -> Value? {
    return self.dictionary.updateValue(value, forKey: key)
  }

  /// Merges the key-value pairs in the given sequence into the dictionary,
  /// using a combining closure to determine the value for any duplicate keys.
  ///
  /// Use the `combine` closure to select a value to use in the updated
  /// dictionary, or to combine existing and new values. As the key-value
  /// pairs are merged with the dictionary, the `combine` closure is called
  /// with the current and new values for any duplicate keys that are
  /// encountered.
  ///
  /// This example shows how to choose the current or new values for any
  /// duplicate keys:
  ///
  ///     var dictionary = ["a": 1, "b": 2]
  ///
  ///     // Keeping existing value for key "a":
  ///     dictionary.merge(zip(["a", "c"], [3, 4])) { (current, _) in current }
  ///     // ["b": 2, "a": 1, "c": 4]
  ///
  ///     // Taking the new value for key "a":
  ///     dictionary.merge(zip(["a", "d"], [5, 6])) { (_, new) in new }
  ///     // ["b": 2, "a": 5, "c": 4, "d": 6]
  ///
  /// - Parameters:
  ///   - other:  A sequence of key-value pairs.
  ///   - combine: A closure that takes the current and new values for any
  ///     duplicate keys. The closure returns the desired value for the final
  ///     dictionary.
  public mutating func merge<S: Sequence>(
    _ other: S,
    uniquingKeysWith combine: (Value, Value) throws -> Value
  ) rethrows where S.Element == (Key, Value) {
    try self.dictionary.merge(other, uniquingKeysWith: combine)
  }

  /// Merges the given dictionary into this dictionary, using a combining
  /// closure to determine the value for any duplicate keys.
  ///
  /// Use the `combine` closure to select a value to use in the updated
  /// dictionary, or to combine existing and new values. As the key-values
  /// pairs in `other` are merged with this dictionary, the `combine` closure
  /// is called with the current and new values for any duplicate keys that
  /// are encountered.
  ///
  /// This example shows how to choose the current or new values for any
  /// duplicate keys:
  ///
  ///     var dictionary = ["a": 1, "b": 2]
  ///
  ///     // Keeping existing value for key "a":
  ///     dictionary.merge(["a": 3, "c": 4]) { (current, _) in current }
  ///     // ["b": 2, "a": 1, "c": 4]
  ///
  ///     // Taking the new value for key "a":
  ///     dictionary.merge(["a": 5, "d": 6]) { (_, new) in new }
  ///     // ["b": 2, "a": 5, "c": 4, "d": 6]
  ///
  /// - Parameters:
  ///   - other:  A dictionary to merge.
  ///   - combine: A closure that takes the current and new values for any
  ///     duplicate keys. The closure returns the desired value for the final
  ///     dictionary.
  public mutating func merge(
    _ other: [Key: Value],
    uniquingKeysWith combine: (Value, Value) throws -> Value
  ) rethrows {
    try self.dictionary.merge(other, uniquingKeysWith: combine)
  }
    
    /// Merges the given dictionary into this dictionary, using a combining
    /// closure to determine the value for any duplicate keys.
    ///
    /// Use the `combine` closure to select a value to use in the updated
    /// dictionary, or to combine existing and new values. As the key-values
    /// pairs in `other` are merged with this dictionary, the `combine` closure
    /// is called with the current and new values for any duplicate keys that
    /// are encountered.
    ///
    /// This example shows how to choose the current or new values for any
    /// duplicate keys:
    ///
    ///     var dictionary = ["a": 1, "b": 2]
    ///
    ///     // Keeping existing value for key "a":
    ///     dictionary.merge(["a": 3, "c": 4]) { (current, _) in current }
    ///     // ["b": 2, "a": 1, "c": 4]
    ///
    ///     // Taking the new value for key "a":
    ///     dictionary.merge(["a": 5, "d": 6]) { (_, new) in new }
    ///     // ["b": 2, "a": 5, "c": 4, "d": 6]
    ///
    /// - Parameters:
    ///   - other:  A dictionary to merge.
    ///   - combine: A closure that takes the current and new values for any
    ///     duplicate keys. The closure returns the desired value for the final
    ///     dictionary.
    public mutating func merge(
      _ other: CodableDictionary<Key,Value>,
      uniquingKeysWith combine: (Value, Value) throws -> Value
    ) rethrows {
        try self.dictionary.merge(other.dictionary, uniquingKeysWith: combine)
    }

  /// Creates a dictionary by merging key-value pairs in a sequence into the
  /// dictionary, using a combining closure to determine the value for
  /// duplicate keys.
  ///
  /// Use the `combine` closure to select a value to use in the returned
  /// dictionary, or to combine existing and new values. As the key-value
  /// pairs are merged with the dictionary, the `combine` closure is called
  /// with the current and new values for any duplicate keys that are
  /// encountered.
  ///
  /// This example shows how to choose the current or new values for any
  /// duplicate keys:
  ///
  ///     let dictionary = ["a": 1, "b": 2]
  ///     let newKeyValues = zip(["a", "b"], [3, 4])
  ///
  ///     let keepingCurrent = dictionary.merging(newKeyValues) { (current, _) in current }
  ///     // ["b": 2, "a": 1]
  ///     let replacingCurrent = dictionary.merging(newKeyValues) { (_, new) in new }
  ///     // ["b": 4, "a": 3]
  ///
  /// - Parameters:
  ///   - other:  A sequence of key-value pairs.
  ///   - combine: A closure that takes the current and new values for any
  ///     duplicate keys. The closure returns the desired value for the final
  ///     dictionary.
  /// - Returns: A new dictionary with the combined keys and values of this
  ///   dictionary and `other`.
  public func merging<S: Sequence>(
    _ other: S,
    uniquingKeysWith combine: (Value, Value) throws -> Value
  ) rethrows -> CodableDictionary<Key,Value> where S.Element == (Key, Value) {
    var result = self.dictionary
    try result.merge(other, uniquingKeysWith: combine)
    return CodableDictionary<Key, Value>(result)
  }

  /// Creates a dictionary by merging the given dictionary into this
  /// dictionary, using a combining closure to determine the value for
  /// duplicate keys.
  ///
  /// Use the `combine` closure to select a value to use in the returned
  /// dictionary, or to combine existing and new values. As the key-value
  /// pairs in `other` are merged with this dictionary, the `combine` closure
  /// is called with the current and new values for any duplicate keys that
  /// are encountered.
  ///
  /// This example shows how to choose the current or new values for any
  /// duplicate keys:
  ///
  ///     let dictionary = ["a": 1, "b": 2]
  ///     let otherDictionary = ["a": 3, "b": 4]
  ///
  ///     let keepingCurrent = dictionary.merging(otherDictionary)
  ///           { (current, _) in current }
  ///     // ["b": 2, "a": 1]
  ///     let replacingCurrent = dictionary.merging(otherDictionary)
  ///           { (_, new) in new }
  ///     // ["b": 4, "a": 3]
  ///
  /// - Parameters:
  ///   - other:  A dictionary to merge.
  ///   - combine: A closure that takes the current and new values for any
  ///     duplicate keys. The closure returns the desired value for the final
  ///     dictionary.
  /// - Returns: A new dictionary with the combined keys and values of this
  ///   dictionary and `other`.
  public func merging(
    _ other: [Key: Value],
    uniquingKeysWith combine: (Value, Value) throws -> Value
  ) rethrows -> CodableDictionary<Key, Value> {
    var result = self.dictionary
    try result.merge(other, uniquingKeysWith: combine)
    return CodableDictionary<Key, Value>(result)
  }
    
    /// Creates a dictionary by merging the given dictionary into this
    /// dictionary, using a combining closure to determine the value for
    /// duplicate keys.
    ///
    /// Use the `combine` closure to select a value to use in the returned
    /// dictionary, or to combine existing and new values. As the key-value
    /// pairs in `other` are merged with this dictionary, the `combine` closure
    /// is called with the current and new values for any duplicate keys that
    /// are encountered.
    ///
    /// This example shows how to choose the current or new values for any
    /// duplicate keys:
    ///
    ///     let dictionary = ["a": 1, "b": 2]
    ///     let otherDictionary = ["a": 3, "b": 4]
    ///
    ///     let keepingCurrent = dictionary.merging(otherDictionary)
    ///           { (current, _) in current }
    ///     // ["b": 2, "a": 1]
    ///     let replacingCurrent = dictionary.merging(otherDictionary)
    ///           { (_, new) in new }
    ///     // ["b": 4, "a": 3]
    ///
    /// - Parameters:
    ///   - other:  A dictionary to merge.
    ///   - combine: A closure that takes the current and new values for any
    ///     duplicate keys. The closure returns the desired value for the final
    ///     dictionary.
    /// - Returns: A new dictionary with the combined keys and values of this
    ///   dictionary and `other`.
    public func merging(
      _ other: CodableDictionary<Key, Value>,
      uniquingKeysWith combine: (Value, Value) throws -> Value
    ) rethrows -> CodableDictionary<Key, Value> {
        var result = self.dictionary
        try result.merge(other.dictionary, uniquingKeysWith: combine)
        return CodableDictionary<Key, Value>(result)
    }

  /// Removes and returns the key-value pair at the specified index.
  ///
  /// Calling this method invalidates any existing indices for use with this
  /// dictionary.
  ///
  /// - Parameter index: The position of the key-value pair to remove. `index`
  ///   must be a valid index of the dictionary, and must not equal the
  ///   dictionary's end index.
  /// - Returns: The key-value pair that correspond to `index`.
  ///
  /// - Complexity: O(*n*), where *n* is the number of key-value pairs in the
  ///   dictionary.
  @discardableResult
  public mutating func remove(at index: Index) -> Element {
    return self.dictionary.remove(at: index)
  }

  /// Removes the given key and its associated value from the dictionary.
  ///
  /// If the key is found in the dictionary, this method returns the key's
  /// associated value. On removal, this method invalidates all indices with
  /// respect to the dictionary.
  ///
  ///     var hues = ["Heliotrope": 296, "Coral": 16, "Aquamarine": 156]
  ///     if let value = hues.removeValue(forKey: "Coral") {
  ///         print("The value \(value) was removed.")
  ///     }
  ///     // Prints "The value 16 was removed."
  ///
  /// If the key isn't found in the dictionary, `removeValue(forKey:)` returns
  /// `nil`.
  ///
  ///     if let value = hues.removeValue(forKey: "Cerise") {
  ///         print("The value \(value) was removed.")
  ///     } else {
  ///         print("No value found for that key.")
  ///     }
  ///     // Prints "No value found for that key.""
  ///
  /// - Parameter key: The key to remove along with its associated value.
  /// - Returns: The value that was removed, or `nil` if the key was not
  ///   present in the dictionary.
  ///
  /// - Complexity: O(*n*), where *n* is the number of key-value pairs in the
  ///   dictionary.
  @discardableResult
  public mutating func removeValue(forKey key: Key) -> Value? {
    return self.dictionary.removeValue(forKey: key)
  }

  /// Removes all key-value pairs from the dictionary.
  ///
  /// Calling this method invalidates all indices with respect to the
  /// dictionary.
  ///
  /// - Parameter keepCapacity: Whether the dictionary should keep its
  ///   underlying buffer. If you pass `true`, the operation preserves the
  ///   buffer capacity that the collection has, otherwise the underlying
  ///   buffer is released.  The default is `false`.
  ///
  /// - Complexity: O(*n*), where *n* is the number of key-value pairs in the
  ///   dictionary.
  public mutating func removeAll(keepingCapacity keepCapacity: Bool = false) {
    // The 'will not decrease' part in the documentation comment is worded very
    // carefully.  The capacity can increase if we replace Cocoa dictionary with
    // native dictionary.
    self.dictionary.removeAll(keepingCapacity: keepCapacity)
  }
}

extension CodableDictionary {
    @available(swift, introduced: 4.0)
    public typealias Keys = CoreData.Keys
    @available(swift, introduced: 4.0)
    public typealias Values = CoreData.Values
  /// A collection containing just the keys of the dictionary.
  ///
  /// When iterated over, keys appear in this collection in the same order as
  /// they occur in the dictionary's key-value pairs. Each key in the keys
  /// collection has a unique value.
  ///
  ///     let countryCodes = ["BR": "Brazil", "GH": "Ghana", "JP": "Japan"]
  ///     print(countryCodes)
  ///     // Prints "["BR": "Brazil", "JP": "Japan", "GH": "Ghana"]"
  ///
  ///     for k in countryCodes.keys {
  ///         print(k)
  ///     }
  ///     // Prints "BR"
  ///     // Prints "JP"
  ///     // Prints "GH"
  @available(swift, introduced: 4.0)
  public var keys: Keys {
    get { return self.dictionary.keys }
  }

  /// A collection containing just the values of the dictionary.
  ///
  /// When iterated over, values appear in this collection in the same order as
  /// they occur in the dictionary's key-value pairs.
  ///
  ///     let countryCodes = ["BR": "Brazil", "GH": "Ghana", "JP": "Japan"]
  ///     print(countryCodes)
  ///     // Prints "["BR": "Brazil", "JP": "Japan", "GH": "Ghana"]"
  ///
  ///     for v in countryCodes.values {
  ///         print(v)
  ///     }
  ///     // Prints "Brazil"
  ///     // Prints "Japan"
  ///     // Prints "Ghana"
  @available(swift, introduced: 4.0)
  public var values: Values {
    get { return self.dictionary.values }
  }
  
}

public func ==<Key, Value>(lhs: CodableDictionary<Key, Value>,
                           rhs: CodableDictionary<Key, Value>) -> Bool where Value: Equatable {
      return lhs.dictionary == rhs.dictionary
}
public func ==<Key, Value>(lhs: CodableDictionary<Key, Value>,
                           rhs: Dictionary<Key, Value>) -> Bool where Value: Equatable {
      return lhs.dictionary == rhs
}
public func ==<Key, Value>(lhs: Dictionary<Key, Value>,
                           rhs: CodableDictionary<Key, Value>) -> Bool where Value: Equatable {
      return lhs == rhs.dictionary
}

#if swift(>=4.1)
extension CodableDictionary: Equatable where Value: Equatable { }
#endif

#if swift(>=4.2)
extension CodableDictionary: Hashable where Value: Hashable {
  /// Hashes the essential components of this value by feeding them into the
  /// given hasher.
  ///
  /// - Parameter hasher: The hasher to use when combining the components
  ///   of this instance.
  public func hash(into hasher: inout Hasher) {
    self.dictionary.hash(into: &hasher)
  }
}
#endif

extension CodableDictionary: CustomStringConvertible, CustomDebugStringConvertible {
  /// A string that represents the contents of the dictionary.
  public var description: String {
    return self.dictionary.description
  }

  /// A string that represents the contents of the dictionary, suitable for
  /// debugging.
  public var debugDescription: String {
    return self.dictionary.debugDescription
  }
}

extension CodableDictionary: CustomReflectable {
  /// A mirror that reflects the dictionary.
  public var customMirror: Mirror {
    let style = Mirror.DisplayStyle.dictionary
    return Mirror(self, unlabeledChildren: self.dictionary, displayStyle: style)
  }
}

extension CodableDictionary {
  /// Removes and returns the first key-value pair of the dictionary if the
  /// dictionary isn't empty.
  ///
  /// The first element of the dictionary is not necessarily the first element
  /// added. Don't expect any particular ordering of key-value pairs.
  ///
  /// - Returns: The first key-value pair of the dictionary if the dictionary
  ///   is not empty; otherwise, `nil`.
  ///
  /// - Complexity: Averages to O(1) over many calls to `popFirst()`.
  public mutating func popFirst() -> Element? {
    return self.dictionary.popFirst()
  }

  /// The total number of key-value pairs that the dictionary can contain without
  /// allocating new storage.
  public var capacity: Int {
    return self.dictionary.capacity
  }

  /// Reserves enough space to store the specified number of key-value pairs.
  ///
  /// If you are adding a known number of key-value pairs to a dictionary, use this
  /// method to avoid multiple reallocations. This method ensures that the
  /// dictionary has unique, mutable, contiguous storage, with space allocated
  /// for at least the requested number of key-value pairs.
  ///
  /// Calling the `reserveCapacity(_:)` method on a dictionary with bridged
  /// storage triggers a copy to contiguous storage even if the existing
  /// storage has room to store `minimumCapacity` key-value pairs.
  ///
  /// - Parameter minimumCapacity: The requested number of key-value pairs to
  ///   store.
  public // FIXME(reserveCapacity): Should be inlinable
  mutating func reserveCapacity(_ minimumCapacity: Int) {
    self.dictionary.reserveCapacity(minimumCapacity)
  }
}

public extension Dictionary where Key: Codable, Value: Codable {
    init(_ dictionary: CodableDictionary<Key, Value>) {
        self = dictionary.dictionary
    }
}
public extension Dictionary where Key: Codable, Value: Codable, Value: Equatable {
    static func == (lhs: Dictionary<Key, Value>,
                    rhs: CodableDictionary<Key, Value>) -> Bool {
        return lhs == rhs.dictionary
    }
}
