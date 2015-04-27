// ---------------------------------------------------------------------------------------------------------------------
// Swift Standard Library examples (examples not guaranteed to be useful)
// ---------------------------------------------------------------------------------------------------------------------

/// Return a slice, up to `maxLength` in length, containing the
/// initial elements of `s`.
///
/// If `maxLength` exceeds `count(s)`, the result contains all
/// the elements of `s`.
/// 
/// Complexity: O(1)+K when `S.Index` conforms to
/// `RandomAccessIndexType` and O(N)+K otherwise, where K is the cost
/// of slicing `s`.

// ---------------------------------------------------------------------------------------------------------------------
// func prefix<S : Sliceable>(s: S, maxLength: Int) -> S.SubSlice
// ---------------------------------------------------------------------------------------------------------------------

let animals = [ "dog", "cat", "duck", "chicken", "cow", "snake", "bee" ]
let honestPoliticians : [String] = [ ]

prefix(animals, 3)
prefix(animals, 10)

// prefix(honestPoliticians, 10)	// will crash, prefix requires isEmpty(C) == false
