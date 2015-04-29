/*: Select Editor -> Show Rendered Markup for rich comments

_Swift Standard Library examples (examples not guaranteed to be useful)_

# removeRange
----

    func removeRange<C : RangeReplaceableCollectionType>(inout x: C, subRange: Range<C.Index>)

Remove from `x` the indicated `subRange` of elements

Invalidates all indices with respect to `x`.

Complexity: O(`count(x)`).

*/
var animals = [ "dog", "cat", "duck", "chicken", "cow", "snake", "bee" ]

removeRange(&animals, 2...4)
