/*: Select Editor -> Show Rendered Markup for rich comments

_Swift Standard Library examples (examples not guaranteed to be useful)_

# extend
----

    func extend<C : RangeReplaceableCollectionType, S : CollectionType where C.Generator.Element == C.Generator.Element>(inout x: C, newElements: S)

Append elements from `newElements` to `x`.  Complexity:
O(N)

*/
var animals = [ "dog", "cat", "duck", "chicken", "cow", "snake", "bee" ]

extend(&animals, [ "goat", "pig" ])
