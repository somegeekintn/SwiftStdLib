/*: Select Editor -> Show Rendered Markup for rich comments

_Swift Standard Library examples (examples not guaranteed to be useful)_

# insert
----

    func insert<C : RangeReplaceableCollectionType>(inout x: C, newElement: C.Generator.Element, atIndex i: C.Index)

Insert `newElement` into `x` at index `i`.

Invalidates all indices with respect to `x`.

Complexity: O(`count(x)`).

*/
var animals = [ "cat", "duck", "chicken", "cow", "snake" ]

insert(&animals, "dog", atIndex: animals.startIndex)
insert(&animals, "bee", atIndex: animals.endIndex)
insert(&animals, "horse", atIndex: 3)
