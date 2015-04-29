/*: Select Editor -> Show Rendered Markup for rich comments

_Swift Standard Library examples (examples not guaranteed to be useful)_

# removeLast
----

    func removeLast<C : RangeReplaceableCollectionType where C.Index : BidirectionalIndexType>(inout x: C) -> C.Generator.Element

Remove an element from the end of `x`  in O(1).
Requires: `x` is nonempty

*/
var animals = [ "dog", "cat", "duck", "chicken", "cow", "snake", "bee" ]

let removedItem = removeLast(&animals)

animals
