/*: Select Editor -> Show Rendered Markup for rich comments

_Swift Standard Library examples (examples not guaranteed to be useful)_

# lexicographicalCompare
----

    func lexicographicalCompare<S1 : SequenceType, S2 : SequenceType where S1.Generator.Element == S1.Generator.Element>(a1: S1, a2: S2, isOrderedBefore less: @noescape (S1.Generator.Element, S1.Generator.Element) -> Bool) -> Bool

Return true iff `a1` precedes `a2` in a lexicographical ("dictionary")
ordering, using `isOrderedBefore` as the comparison between elements.

Requires: `isOrderedBefore` is a [`strict weak ordering`](http://en.wikipedia.org/wiki/Strict_weak_order#Strict_weak_orderings)
over the elements of `a1` and `a2`.

----
See also: [Lexicographical Order](http://en.wikipedia.org/wiki/Lexicographical_order)

Based on an example by Airspeed Velocity on [Stack Overflow](http://stackoverflow.com/questions/27932408/compare-two-version-strings-in-swift)

*/
let storeVersion = "3.14.10"
let currentVersion = "3.130.10"

func versionToArray(version: String) -> [Int] {
    return split(version){ $0 == "." }.map{ $0.toInt() ?? 0 }
}

storeVersion < currentVersion  // false

let storeVersionComponents = versionToArray(storeVersion)
let currentVersionComponents = versionToArray(currentVersion)

lexicographicalCompare(storeVersionComponents, currentVersionComponents) { $0 < $1 }	// same as built-in version below

/*:
    func lexicographicalCompare<S1 : SequenceType, S2 : SequenceType where S1.Generator.Element == S1.Generator.Element, S1.Generator.Element : Comparable>(a1: S1, a2: S2) -> Bool

Return true iff a1 precedes a2 in a lexicographical ("dictionary")
ordering, using "<" as the comparison between elements.

*/
lexicographicalCompare(storeVersionComponents, currentVersionComponents)				// true
