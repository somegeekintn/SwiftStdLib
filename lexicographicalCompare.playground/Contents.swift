// ---------------------------------------------------------------------------------------------------------------------
// Swift Standard Library examples (examples not guaranteed to be useful)
// ---------------------------------------------------------------------------------------------------------------------

/// Return true iff `a1` precedes `a2` in a lexicographical ("dictionary")
/// ordering, using `isOrderedBefore` as the comparison between elements.
///
/// Requires: isOrderedBefore` is a `strict weak ordering
/// <http://en.wikipedia.org/wiki/Strict_weak_order#Strict_weak_orderings>`__
/// over the elements of `a1` and `a2`.

// See also: http://en.wikipedia.org/wiki/Lexicographical_order

// based on an example by Airspeed Velocity at http://stackoverflow.com/questions/27932408/compare-two-version-strings-in-swift

let storeVersion = "3.14.10"
let currentVersion = "3.130.10"

func versionToArray(version: String) -> [Int] {
    return split(version){ $0 == "." }.map{ $0.toInt() ?? 0 }
}

storeVersion < currentVersion  // false

let storeVersionComponents = versionToArray(storeVersion)
let currentVersionComponents = versionToArray(currentVersion)

// ---------------------------------------------------------------------------------------------------------------------
// func lexicographicalCompare<S1 : SequenceType, S2 : SequenceType where S1.Generator.Element == S1.Generator.Element>(a1: S1, a2: S2, isOrderedBefore less: @noescape (S1.Generator.Element, S1.Generator.Element) -> Bool) -> Bool
// ---------------------------------------------------------------------------------------------------------------------

lexicographicalCompare(storeVersionComponents, currentVersionComponents) { $0 < $1 }	// same as built-in version below

/// Return true iff a1 precedes a2 in a lexicographical ("dictionary")
/// ordering, using "<" as the comparison between elements.

// ---------------------------------------------------------------------------------------------------------------------
// func lexicographicalCompare<S1 : SequenceType, S2 : SequenceType where S1.Generator.Element == S1.Generator.Element, S1.Generator.Element : Comparable>(a1: S1, a2: S2) -> Bool

// ---------------------------------------------------------------------------------------------------------------------


lexicographicalCompare(storeVersionComponents, currentVersionComponents)	// true
