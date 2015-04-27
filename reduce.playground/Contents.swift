// ---------------------------------------------------------------------------------------------------------------------
// Swift Standard Library examples (examples not guaranteed to be useful)
// ---------------------------------------------------------------------------------------------------------------------

/// Return the result of repeatedly calling `combine` with an
/// accumulated value initialized to `initial` and each element of
/// `sequence`, in turn.

// ---------------------------------------------------------------------------------------------------------------------
// func reduce<S : SequenceType, U>(sequence: S, initial: U, combine: @noescape (U, S.Generator.Element) -> U) -> U
// ---------------------------------------------------------------------------------------------------------------------

// factorial
reduce(1...10, 1) { (accum, elem) -> Int in
	return accum * elem
}

// join by way of reduce
reduce(1...10, "") { (accum, elem) -> String in
	return accum.isEmpty ? "\(elem)" : "\(accum) x \(elem)"
}

// combined
reduce(1...10, (desc: "", accum: 1)) { (info, elem) -> (String, Int) in
	return (info.desc.isEmpty ? "\(elem)" : "\(info.desc) x \(elem)", info.accum * elem)
}

