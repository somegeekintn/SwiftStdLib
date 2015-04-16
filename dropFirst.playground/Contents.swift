// ---------------------------------------------------------------------------------------------------------------------
// Swift Standard Library examples (examples not guaranteed to be useful)
// ---------------------------------------------------------------------------------------------------------------------

/// Return a slice containing all but the first element of `s`.
///
/// Requires: `s` is non-empty.

// ---------------------------------------------------------------------------------------------------------------------
// func dropFirst<Seq : Sliceable>(s: Seq) -> Seq.SubSlice
// ---------------------------------------------------------------------------------------------------------------------

let animals = [ "dog", "cat", "duck", "chicken", "cow", "snake", "bee" ]
let intArray = [Int](1...20)

dropFirst(animals)
dropFirst(intArray)
