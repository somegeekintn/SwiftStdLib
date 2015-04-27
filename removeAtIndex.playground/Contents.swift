// ---------------------------------------------------------------------------------------------------------------------
// Swift Standard Library examples (examples not guaranteed to be useful)
// ---------------------------------------------------------------------------------------------------------------------

/// Remove from `x` and return the element at index `i` 
///
/// Invalidates all indices with respect to `x`.
///
/// Complexity: O(\ `count(x)`\ ).

// ---------------------------------------------------------------------------------------------------------------------
// func removeAtIndex<C : RangeReplaceableCollectionType>(inout x: C, index: C.Index) -> C.Generator.Element
// ---------------------------------------------------------------------------------------------------------------------

var animals = [ "dog", "cat", "duck", "chicken", "cow", "snake", "bee" ]

let removedItem = removeAtIndex(&animals, 2)

animals
