/*: Select Editor -> Show Rendered Markup for rich comments

_Swift Standard Library examples (examples not guaranteed to be useful)_

# splice
----

    func splice<C : RangeReplaceableCollectionType, S : CollectionType where C.Generator.Element == C.Generator.Element>(inout x: C, newElements: S, atIndex i: C.Index)

Insert `newElements` into `x` at index `i`

Invalidates all indices with respect to `x`.

Complexity: O(`count(x) + count(newElements)`).
    
*/
var animals = [ "dog", "cat", "duck", "chicken", "cow", "snake", "bee" ]

splice(&animals, [ "monkey", "goat", "lemur" ], atIndex: 3)
