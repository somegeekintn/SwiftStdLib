// ---------------------------------------------------------------------------------------------------------------------
// Swift Standard Library examples (examples not guaranteed to be useful)
// ---------------------------------------------------------------------------------------------------------------------

/// Creates and returns a collection of type `C` that is the result of
/// interposing a given separator between the elements of the sequence
/// `elements`.
///
/// For example, this code excerpt writes "``here be dragons``" to the standard
/// output::
///
///   println(join(" ", [ "here", "be", "dragons" ]))

// ---------------------------------------------------------------------------------------------------------------------
// func join<C : ExtensibleCollectionType, S : SequenceType where C == C>(separator: C, elements: S) -> C
// ---------------------------------------------------------------------------------------------------------------------

join(" ", [ "here", "be", "dragons" ])

let animals = [ "dog", "cat", "duck", "chicken", "cow", "snake", "bee" ]

join(" | ", animals)
