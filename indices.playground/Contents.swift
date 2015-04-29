/*: Select Editor -> Show Rendered Markup for rich comments

_Swift Standard Library examples (examples not guaranteed to be useful)_

# indices
----

    func indices<C : CollectionType>(x: C) -> Range<C.Index>

Return the range of `x` 's valid index values.

The result's `endIndex` is the same as that of `x`.  Because
`Range` is half-open, iterating the values of the result produces
all valid subscript arguments for `x`, omitting its `endIndex`.

*/
let animals = [ "dog", "cat", "duck", "chicken", "cow", "snake", "bee" ]
let animalRange = indices(animals)

for index in animalRange {
	println("\(index): \(animals[index])")
}

let cliche = "Hellö world"
let clicheRange = indices(cliche)

for index in clicheRange {
	println("\(index): \(cliche[index])")
}

