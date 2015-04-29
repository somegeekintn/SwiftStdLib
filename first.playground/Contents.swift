/*: Select Editor -> Show Rendered Markup for rich comments

_Swift Standard Library examples (examples not guaranteed to be useful)_

# first
----

    func first<C : CollectionType>(x: C) -> C.Generator.Element?

Returns the first element of `x`, or `nil` if `x` is empty.

*/
let animals = [ "dog", "cat", "duck", "chicken", "cow", "snake", "bee" ]
let honestPoliticians : [String] = [ ]

first(animals)
first(honestPoliticians)
