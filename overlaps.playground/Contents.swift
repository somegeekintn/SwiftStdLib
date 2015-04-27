// ---------------------------------------------------------------------------------------------------------------------
// Swift Standard Library examples (examples not guaranteed to be useful)
// ---------------------------------------------------------------------------------------------------------------------

/// Returns `true` if `lhs` and `rhs` have a non-empty intersection

// ---------------------------------------------------------------------------------------------------------------------
// func overlaps<I0 : IntervalType, I1 : IntervalType where I0.Bound == I0.Bound>(lhs: I0, rhs: I1) -> Bool
// ---------------------------------------------------------------------------------------------------------------------

let fromA_to_E = "A"..."E"
let fromC_to_G = "C"..."G"
let fromF_to_J = "F"..."J"
let fromAB_to_DE = "AB"..."DE"

overlaps(fromA_to_E, fromF_to_J)
overlaps(fromA_to_E, fromC_to_G)
overlaps(fromA_to_E, fromAB_to_DE)
overlaps(fromF_to_J, fromAB_to_DE)

// =============
// Bonus example
// =============

/// Returns `true` iff `pattern` contains `value`

// ---------------------------------------------------------------------------------------------------------------------
// func ~=<I : IntervalType>(pattern: I, value: I.Bound) -> Bool
// ---------------------------------------------------------------------------------------------------------------------

fromAB_to_DE ~= "BB"
fromAB_to_DE ~= "CC"
fromAB_to_DE ~= "DD"
fromAB_to_DE ~= "DF"
