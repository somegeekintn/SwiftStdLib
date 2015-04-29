/*: Select Editor -> Show Rendered Markup for rich comments

_Swift Standard Library examples (examples not guaranteed to be useful)_

# join
----

    func join<C : ExtensibleCollectionType, S : SequenceType where C == C>(separator: C, elements: S) -> C

Creates and returns a collection of type `C` that is the result of
interposing a given separator between the elements of the sequence
`elements`.

For example, this code excerpt writes "``here be dragons``" to the standard
output::

    println(join(" ", [ "here", "be", "dragons" ]))

*/
println(join(" ", [ "here", "be", "dragons" ]))

let animals = [ "dog", "cat", "duck", "chicken", "cow", "snake", "bee" ]

join(" | ", animals)
