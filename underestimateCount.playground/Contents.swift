/*: Select Editor -> Show Rendered Markup for rich comments

_Swift Standard Library examples (examples not guaranteed to be useful)_

# underestimateCount
----

    func underestimateCount<T : SequenceType>(x: T) -> Int

Return an underestimate of the number of elements in the given
sequence, without consuming the sequence.  For Sequences that are
actually Collections, this will return count(x)

*/
let animals = [ "dog", "cat", "duck", "chicken", "cow", "snake", "bee" ]


func generateTo(limit: Int) -> GeneratorOf<Int> {
	var idx = 0

	return GeneratorOf<Int> {
		return idx < limit ? idx++ : nil
	}
}

underestimateCount(animals)
underestimateCount(animals.generate())
underestimateCount(0...100)
underestimateCount(generateTo(100))

// Not really sure the expectations of underestimateCount right now. Doesn't seem too useful for pure sequences
