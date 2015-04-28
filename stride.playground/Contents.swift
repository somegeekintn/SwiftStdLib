// ---------------------------------------------------------------------------------------------------------------------
// Swift Standard Library examples (examples not guaranteed to be useful)
// ---------------------------------------------------------------------------------------------------------------------

/// Return the sequence of values (`start`, `start + stride`, `start +
/// stride + stride`, ... *last*) where *last* is the last value in
/// the progression less than or equal to `end`.
///
/// .. Note:: There is no guarantee that `end` is an element of the
///      sequence.

// ---------------------------------------------------------------------------------------------------------------------
// func stride<T : Strideable>(from start: T, through end: T, by stride: T.Stride) -> StrideThrough<T>
// ---------------------------------------------------------------------------------------------------------------------

let through10 = [Int](stride(from: 0, through: 10, by: 2))

for idx in stride(from: 6, through: -6, by: -2) {
	println("idx: \(idx)")
}

/// Return the sequence of values (`start`, `start + stride`, `start +
/// stride + stride`, ... *last*) where *last* is the last value in
/// the progression that is less than `end`.

// ---------------------------------------------------------------------------------------------------------------------
// func stride<T : Strideable>(from start: T, to end: T, by stride: T.Stride) -> StrideTo<T>
// ---------------------------------------------------------------------------------------------------------------------

let to10 = [Int](stride(from: 0, to: 10, by: 2))

for idx in stride(from: 6, to: -6, by: -2) {
	println("idx: \(idx)")
}
