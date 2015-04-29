/*: Select Editor -> Show Rendered Markup for rich comments

_Swift Standard Library examples (examples not guaranteed to be useful)_

# contains
----

    func contains<S : SequenceType, L : BooleanType>(seq: S, predicate: @noescape (S.Generator.Element) -> L) -> Bool

Return `true` iff an element in `seq` satisfies `predicate`.

*/
let animals = [ "dog", "cat", "duck", "chicken", "cow", "snake" ]

contains(animals, "cat")
contains(animals, "somegeekintn")
/*:

    func contains<S : SequenceType where S.Generator.Element : Equatable>(seq: S, x: S.Generator.Element) -> Bool

Return `true` iff `x` is in `seq`.

*/
var result : Bool

contains(animals) { (animal) -> Bool in return animal == "cat" }
contains(animals) { (animal) -> Bool in return animal == "phone" }

// alternatively

contains(animals) { return $0 == "cat" }
contains(animals) { return $0 == "phone" }

// or even

contains(animals) { $0 == "cat" }
contains(animals) { $0 == "phone" }

