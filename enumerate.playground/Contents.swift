/*: Select Editor -> Show Rendered Markup for rich comments

_Swift Standard Library examples (examples not guaranteed to be useful)_

# enumerate
----

    func enumerate<Seq : SequenceType>(base: Seq) -> EnumerateSequence<Seq>

Return a lazy `SequenceType` containing pairs (*n*, *x*), where
*n*s are consecutive `Int`s starting at zero, and *x*s are
the elements of `base`::

    > for (n, c) in enumerate("Swift") { println("\(n): '\(c)'" )}
    0: 'S'
    1: 'w'
    2: 'i'
    3: 'f'
    4: 't'

*/
for (n, c) in enumerate("Swift") {	// Why not recreate the "official" example?
	println("\(n): '\(c)'" )
}

println("---")

let animals = [ "dog", "cat", "duck", "chicken", "cow", "snake", "bee" ]

for (index, item) in enumerate(animals) {
	println("\(index): \(item)")
}

println("---")

for item in enumerate(animals) {
	println("\(item) or (\(item.0), \(item.1))")
}
