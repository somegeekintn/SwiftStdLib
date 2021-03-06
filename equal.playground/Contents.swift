/*: Select Editor -> Show Rendered Markup for rich comments

_Swift Standard Library examples (examples not guaranteed to be useful)_

# equal
----

    func equal<S1 : SequenceType, S2 : SequenceType where S1.Generator.Element == S1.Generator.Element, S1.Generator.Element : Equatable>(a1: S1, a2: S2) -> Bool

Return `true` iff `a1` and `a2` contain the same elements in the
same order.

*/
let animals = [ "dog", "cat", "duck", "chicken", "cow", "snake", "bee" ]
let animalsCopy = animals
let animalsSorted = animals.sorted { $0 < $1 }

equal(animals, animalsCopy)
equal(animals, animalsSorted)
/*:
    func equal<S1 : SequenceType, S2 : SequenceType where S1.Generator.Element == S1.Generator.Element>(a1: S1, a2: S2, isEquivalent: @noescape (S1.Generator.Element, S1.Generator.Element) -> Bool) -> Bool

Return true iff `a1` and `a2` contain equivalent elements, using
`isEquivalent` as the equivalence test.  Requires: `isEquivalent`
is an [equivalence relation](http://en.wikipedia.org/wiki/Equivalence_relation)

*/
equal(animals, animalsCopy) { (item1, item2) -> Bool in
	return item1.hashValue == item2.hashValue
}

equal(animals, animalsSorted) { (item1, item2) -> Bool in
	return item1.hashValue == item2.hashValue
}
