/*: Select Editor -> Show Rendered Markup for rich comments

_Swift Standard Library examples (examples not guaranteed to be useful)_

# dropLast
----

    func dropLast<S : Sliceable where S.Index : BidirectionalIndexType>(s: S) -> S.SubSlice

Return a slice containing all but the last element of `s`.

Requires: `s` is non-empty.

*/
let animals = [ "dog", "cat", "duck", "chicken", "cow", "snake", "bee" ]
let intArray = [Int](1...20)

dropLast(animals)
dropLast(intArray)
