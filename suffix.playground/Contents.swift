/*: Select Editor -> Show Rendered Markup for rich comments

_Swift Standard Library examples (examples not guaranteed to be useful)_

# suffix
----

    func suffix<S : Sliceable where S.Index : BidirectionalIndexType>(s: S, maxLength: Int) -> S.SubSlice

Return a slice, up to `maxLength` in length, containing the
final elements of `s`.

If `maxLength` exceeds `count(s)`, the result contains all
the elements of `s`.

Complexity: O(1)+K when `S.Index` conforms to
`RandomAccessIndexType` and O(N)+K otherwise, where K is the cost
of slicing `s`.

*/
let animals = [ "dog", "cat", "duck", "chicken", "cow", "snake", "bee" ]
let honestPoliticians : [String] = [ ]

suffix(animals, 3)
suffix(animals, 10)

// suffix(honestPoliticians, 10)	// will crash, prefix requires isEmpty(C) == false
