/*: Select Editor -> Show Rendered Markup for rich comments

_Swift Standard Library examples (examples not guaranteed to be useful)_

# find
----

    func find<C : CollectionType where C.Generator.Element : Equatable>(domain: C, value: C.Generator.Element) -> C.Index?

Returns the first index where `value` appears in `domain` or `nil` if
`value` is not found.

Complexity: O(`count(domain)`)

*/
let animals = [ "dog", "cat", "duck", "chicken", "cow", "snake", "bee" ]

find(animals, "chicken")
find(animals, "bee")
find(animals, "monkey")
