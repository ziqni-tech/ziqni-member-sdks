import Foundation

// This implementation uses a concurrent DispatchQueue to ensure that read and write operations are thread-safe.
// The subscript uses queue.sync to read from the dictionary, and queue.async(flags: .barrier) to write to the dictionary with a barrier flag,
// which ensures that all read and write operations complete before the dictionary is modified.
// The count property and removeAll() method also use queue.sync and queue.async(flags: .barrier) to ensure that they are thread-safe.
// Note that while this implementation is thread-safe, it may not be the most performant for all use cases. Depending on your specific needs,
// you may want to consider other data structures or synchronization techniques.
class ThreadSafeDictionary<Key: Hashable, Value> {
    private var dictionary: [Key: Value] = [:]
    private let queue = DispatchQueue(label: "ThreadSafeDictionary", attributes: .concurrent)

    subscript(key: Key) -> Value? {
        get {
            var result: Value?
            queue.sync {
                result = dictionary[key]
            }
            return result
        }
        set(newValue) {
            queue.async(flags: .barrier) {
                self.dictionary[key] = newValue
            }
        }
    }

    var count: Int {
        var result = 0
        queue.sync {
            result = dictionary.count
        }
        return result
    }

    func removeAll() {
        queue.async(flags: .barrier) {
            self.dictionary.removeAll()
        }
    }

    // Add other dictionary methods here, if needed.
}