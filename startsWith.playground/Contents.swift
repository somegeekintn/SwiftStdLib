// ---------------------------------------------------------------------------------------------------------------------
// Swift Standard Library examples (examples not guaranteed to be useful)
// ---------------------------------------------------------------------------------------------------------------------

/// Return true iff the the initial elements of `s` are equal to `prefix`.

// ---------------------------------------------------------------------------------------------------------------------
// func startsWith<S0 : SequenceType, S1 : SequenceType where S0.Generator.Element == S0.Generator.Element, S0.Generator.Element : Equatable>(s: S0, prefix: S1) -> Bool
// ---------------------------------------------------------------------------------------------------------------------

let name = "Raymond Luxury-Yacht"

startsWith(name, "Raymond")
startsWith(name, "Throat Wobbler")


/// Return true iff `s` begins with elements equivalent to those of
/// `prefix`, using `isEquivalent` as the equivalence test.
///
/// Requires: `isEquivalent` is an `equivalence relation
/// <http://en.wikipedia.org/wiki/Equivalence_relation>`_

// ---------------------------------------------------------------------------------------------------------------------
// func startsWith<S0 : SequenceType, S1 : SequenceType where S0.Generator.Element == S0.Generator.Element>(s: S0, prefix: S1, isEquivalent: @noescape (S0.Generator.Element, S0.Generator.Element) -> Bool) -> Bool
// ---------------------------------------------------------------------------------------------------------------------

let isRaymond = startsWith(name, "Raymond") { $0 == $1 }
println("Raymond? \(isRaymond)")
let isThroatWobbler = startsWith(name, "Throat Wobbler") { $0 == $1 }
println("Throat Wobbler? \(isThroatWobbler)")
