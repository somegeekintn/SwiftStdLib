/*: Select Editor -> Show Rendered Markup for rich comments

_Swift Standard Library examples (examples not guaranteed to be useful)_

# dropFirst
----

    func dropFirst<Seq : Sliceable>(s: Seq) -> Seq.SubSlice

Return a slice containing all but the first element of `s`.
Requires: `s` is non-empty.

*/
let animals = [ "dog", "cat", "duck", "chicken", "cow", "snake", "bee" ]
let intArray = [Int](1...20)

dropFirst(animals)
dropFirst(intArray)
