// ---------------------------------------------------------------------------------------------------------------------
// Swift Standard Library examples (examples not guaranteed to be useful)
// ---------------------------------------------------------------------------------------------------------------------

/// Return a slice containing all but the last element of `s`.
///
/// Requires: `s` is non-empty.

// ---------------------------------------------------------------------------------------------------------------------
// func dropLast<S : Sliceable where S.Index : BidirectionalIndexType>(s: S) -> S.SubSlice
// ---------------------------------------------------------------------------------------------------------------------

let animals = [ "dog", "cat", "duck", "chicken", "cow", "snake", "bee" ]
let intArray = [Int](1...20)

dropLast(animals)
dropLast(intArray)
