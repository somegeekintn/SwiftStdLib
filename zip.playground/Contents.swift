/*: Select Editor -> Show Rendered Markup for rich comments

_Swift Standard Library examples (examples not guaranteed to be useful)_

# zip
----

    func zip<S0 : SequenceType, S1 : SequenceType>(s0: S0, s1: S1) -> Zip2<S0, S1>

A sequence of pairs built out of two underlying sequences, where
the elements of the `i`th pair are the `i`th elements of each
underlying sequence.

*/
var animals = [ "dog", "cat", "duck", "chicken", "cow", "snake", "bee" ]
var animalLegs = [ 4, 4, 2, 2, 4, 0, 6 ]

let animalsWithLegs = [(String, Int)](zip(animals, animalLegs))
animalsWithLegs

for item in animalsWithLegs {
	println(item)
}
