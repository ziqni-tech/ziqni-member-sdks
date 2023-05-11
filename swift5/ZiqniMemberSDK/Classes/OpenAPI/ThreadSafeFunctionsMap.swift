import Foundation

// This implementation stores and retrieves functions. The Value type is defined as () -> Value to represent the function.
// ---------------
// The function method retrieves a function from the map:
// ---------------
// let function = myThreadSafeMap.function(key: "key")
// ---------------
// The addFunction method adds a function to the map:
// ---------------
// myThreadSafeMap.addFunction(key: "key") {
//     // Function implementation
//     return // Function result
// }
// ---------------
// The remove method removes a function from the map:
// ---------------
// myThreadSafeMap.remove(key: "key")
// ---------------
// Note that this implementation assumes that the same key will not be used to store both a function and a non-function value. If this is a possibility, you may want to consider using a different implementation or data structure.
class ThreadSafeFunctionsMap<Key: Hashable, Value> {
    private var dictionary: [Key: Value] = [:]
    private let queue = DispatchQueue(label: "ThreadSafeMap", attributes: .concurrent)

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

    func remove(key: Key) {
        queue.async(flags: .barrier) {
            self.dictionary.removeValue(forKey: key)
        }
    }

    func function(key: Key) -> (() -> Value)? {
        var result: (() -> Value)?
        queue.sync {
            result = dictionary[key]
        }
        return result
    }

    func addFunction(key: Key, function: @escaping () -> Value) {
        queue.async(flags: .barrier) {
            self.dictionary[key] = function
        }
    }
}
