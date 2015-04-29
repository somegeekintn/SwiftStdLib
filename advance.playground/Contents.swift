/*: Select Editor -> Show Rendered Markup for rich comments

_Swift Standard Library examples (examples not guaranteed to be useful)_

# advance
----

    func advance<T : ForwardIndexType>(start: T, n: T.Distance, end: T) -> T

Return the result of advancing start by `n` positions, or until it
equals `end`.  If `T` models `RandomAccessIndexType`, executes in
O(1).  Otherwise, executes in O(`abs(n)`).  If `T` does not model
`BidirectionalIndexType`, requires that `n` is non-negative.

*/
var intArray = [Int](1...20)

advance(intArray.startIndex, 30, intArray.endIndex)
/*: Select Editor -> Show Rendered Markup for rich comments

    func advance<T : ForwardIndexType>(start: T, n: T.Distance) -> T

Return the result of advancing `start` by `n` positions.  If `T`
models `RandomAccessIndexType`, executes in O(1).  Otherwise,
executes in O(`abs(n)`).  If `T` does not model
`BidirectionalIndexType`, requires that `n` is non-negative.

*/
advance(intArray.endIndex, -2)

