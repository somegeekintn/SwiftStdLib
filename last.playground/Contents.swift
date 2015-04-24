// ---------------------------------------------------------------------------------------------------------------------
// Swift Standard Library examples (examples not guaranteed to be useful)
// ---------------------------------------------------------------------------------------------------------------------

/// Returns the last element of `x`, or `nil` if `x` is empty.

// ---------------------------------------------------------------------------------------------------------------------
// func last<C : CollectionType where C.Index : BidirectionalIndexType>(x: C) -> C.Generator.Element?
// ---------------------------------------------------------------------------------------------------------------------

let animals = [ "dog", "cat", "duck", "chicken", "cow", "snake", "bee" ]
let honestPoliticians : [String] = [ ]

last(animals)
last(honestPoliticians)
