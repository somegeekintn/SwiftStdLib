// ---------------------------------------------------------------------------------------------------------------------
// Swift Standard Library examples (examples not guaranteed to be useful)
// ---------------------------------------------------------------------------------------------------------------------

/// Append elements from `newElements` to `x`.  Complexity:
/// O(N)

// ---------------------------------------------------------------------------------------------------------------------
// func extend<C : RangeReplaceableCollectionType, S : CollectionType where C.Generator.Element == C.Generator.Element>(inout x: C, newElements: S)
// ---------------------------------------------------------------------------------------------------------------------

var animals = [ "dog", "cat", "duck", "chicken", "cow", "snake", "bee" ]

extend(&animals, [ "goat", "pig" ])
