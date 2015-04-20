// ---------------------------------------------------------------------------------------------------------------------
// Swift Standard Library examples (examples not guaranteed to be useful)
// ---------------------------------------------------------------------------------------------------------------------

/// Returns the first element of `x`, or `nil` if `x` is empty.

// ---------------------------------------------------------------------------------------------------------------------
// func first<C : CollectionType>(x: C) -> C.Generator.Element?
// ---------------------------------------------------------------------------------------------------------------------

let animals = [ "dog", "cat", "duck", "chicken", "cow", "snake", "bee" ]
let honestPoliticians : [String] = [ ]

first(animals)
first(honestPoliticians)
