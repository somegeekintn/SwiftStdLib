// ---------------------------------------------------------------------------------------------------------------------
// Swift Standard Library examples (examples not guaranteed to be useful)
// ---------------------------------------------------------------------------------------------------------------------

/// Return an `Array` containing the elements of `source` in reverse
/// order.

// ---------------------------------------------------------------------------------------------------------------------
// func reverse<C : CollectionType where C.Index : BidirectionalIndexType>(source: C) -> [C.Generator.Element]
// ---------------------------------------------------------------------------------------------------------------------

var animals = [ "dog", "cat", "duck", "chicken", "cow", "snake", "bee" ]

animals.sort { $0 < $1 }

reverse(animals)
