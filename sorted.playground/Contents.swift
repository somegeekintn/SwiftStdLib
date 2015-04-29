/*: Select Editor -> Show Rendered Markup for rich comments

_Swift Standard Library examples (examples not guaranteed to be useful)_

# sorted
----

    func sorted<C : SequenceType where C.Generator.Element : Comparable>(source: C) -> [C.Generator.Element]

Return an `Array` containing the sorted elements of `source`{according}.

The sorting algorithm is not stable (can change the relative order of
elements that compare equal).

Requires: The less-than operator (`func <`) defined in the `Comparable`
conformance is a [`strict weak ordering`](http://en.wikipedia.org/wiki/Strict_weak_order#Strict_weak_orderings)
over `elements`.
    
*/
var animals = [ "dog", "cat", "duck", "chicken", "cow", "snake", "bee" ]
var animalLegs : [(name : String, legs: Int)] = [ ("dog", 4), ("cat", 4), ("duck", 2), ("chicken", 2), ("cow", 4), ("snake", 0), ("bee", 6) ]

let sortedAnimals = sorted(animals)
/*:
    func sorted<C : SequenceType>(source: C, isOrderedBefore: (C.Generator.Element, C.Generator.Element) -> Bool) -> [C.Generator.Element]

Return an `Array` containing the sorted elements of `source`{according}.

The sorting algorithm is not stable (can change the relative order of
elements for which `isOrderedBefore` does not establish an order).

Requires: `isOrderedBefore` is a [`strict weak ordering`](http://en.wikipedia.org/wiki/Strict_weak_order#Strict_weak_orderings)
over `elements`.
    
*/
let sortedAnimalLegs = sorted(animalLegs) { $0.legs < $1.legs || ($0.legs == $1.legs && $0.name < $1.name) }
println(sortedAnimalLegs)

