/*: Select Editor -> Show Rendered Markup for rich comments

_Swift Standard Library examples (examples not guaranteed to be useful)_

# reverse
----

    func reverse<C : CollectionType where C.Index : BidirectionalIndexType>(source: C) -> [C.Generator.Element]

Return an `Array` containing the elements of `source` in reverse
order.

*/
var animals = [ "dog", "cat", "duck", "chicken", "cow", "snake", "bee" ]

animals.sort { $0 < $1 }

reverse(animals)
