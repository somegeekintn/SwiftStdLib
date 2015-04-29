/*: Select Editor -> Show Rendered Markup for rich comments

_Swift Standard Library examples (examples not guaranteed to be useful)_

# isEmpty
----

    func isEmpty<C : CollectionType>(x: C) -> Bool

Returns `true` iff `x` is empty.

*/
let animals = [ "dog", "cat", "duck", "chicken", "cow", "snake", "bee" ]
let honestPoliticians : [String] = [ ]

isEmpty(animals)
isEmpty(honestPoliticians)
