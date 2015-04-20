// ---------------------------------------------------------------------------------------------------------------------
// Swift Standard Library examples (examples not guaranteed to be useful)
// ---------------------------------------------------------------------------------------------------------------------

/// Returns the first index where `value` appears in `domain` or `nil` if
/// `value` is not found.
///
/// Complexity: O(\ `count(domain)`\ )

// ---------------------------------------------------------------------------------------------------------------------
// func find<C : CollectionType where C.Generator.Element : Equatable>(domain: C, value: C.Generator.Element) -> C.Index?
// ---------------------------------------------------------------------------------------------------------------------

let animals = [ "dog", "cat", "duck", "chicken", "cow", "snake", "bee" ]

find(animals, "chicken")
find(animals, "bee")
find(animals, "monkey")
