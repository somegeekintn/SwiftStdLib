// ---------------------------------------------------------------------------------------------------------------------
// Swift Standard Library examples (examples not guaranteed to be useful)
// ---------------------------------------------------------------------------------------------------------------------

/// Remove an element from the end of `x`  in O(1).
/// Requires: `x` is nonempty

// ---------------------------------------------------------------------------------------------------------------------
// func removeLast<C : RangeReplaceableCollectionType where C.Index : BidirectionalIndexType>(inout x: C) -> C.Generator.Element
// ---------------------------------------------------------------------------------------------------------------------

var animals = [ "dog", "cat", "duck", "chicken", "cow", "snake", "bee" ]

let removedItem = removeLast(&animals)

animals
