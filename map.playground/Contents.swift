// ---------------------------------------------------------------------------------------------------------------------
// Swift Standard Library examples (examples not guaranteed to be useful)
// ---------------------------------------------------------------------------------------------------------------------

/// Return an `Array` containing the results of mapping `transform`
/// over `source`.

// ---------------------------------------------------------------------------------------------------------------------
// func map<C : CollectionType, T>(source: C, transform: (C.Generator.Element) -> T) -> [T]
// ---------------------------------------------------------------------------------------------------------------------

let strings = [ "4", "8", "15", "16", "23", "42" ]
let numbers = map(strings) { $0.toInt() ?? 0 }

numbers


/// Return an `Array` containing the results of mapping `transform`
/// over `source`.

// ---------------------------------------------------------------------------------------------------------------------
// func map<S : SequenceType, T>(source: S, transform: (S.Generator.Element) -> T) -> [T]
// ---------------------------------------------------------------------------------------------------------------------

let generatedNumbers = map(strings.generate()) { $0.toInt() ?? 0 }

generatedNumbers


/// Haskell's fmap for Optionals.

// ---------------------------------------------------------------------------------------------------------------------
// func map<T, U>(x: T?, f: @noescape (T) -> U) -> U?
// ---------------------------------------------------------------------------------------------------------------------

// Similar to optional chaining

let optStringA : String? = "cat"
let optStringB : String? = nil

map(optStringA) { println("\($0) not nil. Do things") }
map(optStringB) { println("\($0) not nil. Do things") }		// Things are not done
