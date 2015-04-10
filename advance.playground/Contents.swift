// ---------------------------------------------------------------------------------------------------------------------
// Swift Standard Library examples (examples not guaranteed to be useful)
// ---------------------------------------------------------------------------------------------------------------------

/// Return the result of advancing start by `n` positions, or until it
/// equals `end`.  If `T` models `RandomAccessIndexType`, executes in
/// O(1).  Otherwise, executes in O(`abs(n)`).  If `T` does not model
/// `BidirectionalIndexType`, requires that `n` is non-negative.

// ---------------------------------------------------------------------------------------------------------------------
// func advance<T : ForwardIndexType>(start: T, n: T.Distance, end: T) -> T
// ---------------------------------------------------------------------------------------------------------------------

var intArray = [Int](1...20)

advance(intArray.startIndex, 30, intArray.endIndex)

/// Return the result of advancing `start` by `n` positions.  If `T`
/// models `RandomAccessIndexType`, executes in O(1).  Otherwise,
/// executes in O(`abs(n)`).  If `T` does not model
/// `BidirectionalIndexType`, requires that `n` is non-negative.

// ---------------------------------------------------------------------------------------------------------------------
// func advance<T : ForwardIndexType>(start: T, n: T.Distance) -> T
// ---------------------------------------------------------------------------------------------------------------------

advance(intArray.endIndex, -2)

