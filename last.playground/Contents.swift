/*: Select Editor -> Show Rendered Markup for rich comments

_Swift Standard Library examples (examples not guaranteed to be useful)_

# last
----

    func last<C : CollectionType where C.Index : BidirectionalIndexType>(x: C) -> C.Generator.Element?

Returns the last element of `x`, or `nil` if `x` is empty.

*/
let animals = [ "dog", "cat", "duck", "chicken", "cow", "snake", "bee" ]
let honestPoliticians : [String] = [ ]

last(animals)
last(honestPoliticians)
