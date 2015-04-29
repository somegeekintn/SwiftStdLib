/*: Select Editor -> Show Rendered Markup for rich comments

_Swift Standard Library examples (examples not guaranteed to be useful)_

# filter
----

    func filter<S : SequenceType>(source: S, includeElement: (S.Generator.Element) -> Bool) -> [S.Generator.Element]

Return an `Array` containing the elements of `source`,
in order, that satisfy the predicate `includeElement`.

*/
struct Animal {
	let name :		String
	let legCount :	Int
}

let animals = [
	Animal(name: "dog", legCount: 4),
	Animal(name: "cat", legCount: 4),
	Animal(name: "duck", legCount: 2),
	Animal(name: "chicken", legCount: 2),
	Animal(name: "cow", legCount: 4),
	Animal(name: "snake", legCount: 0),
	Animal(name: "bee", legCount: 6),
	Animal(name: "spider", legCount: 8)
]

let fourLegged = filter(animals, { (animal : Animal) -> Bool in
	return animal.legCount == 4
})

let twoLegged = filter(animals) { return $0.legCount == 2 }
