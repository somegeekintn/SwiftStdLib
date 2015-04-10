// ---------------------------------------------------------------------------------------------------------------------
// Swift Standard Library examples (examples not guaranteed to be useful)
// ---------------------------------------------------------------------------------------------------------------------

/// Return `true` iff an element in `seq` satisfies `predicate`.

// ---------------------------------------------------------------------------------------------------------------------
// func contains<S : SequenceType, L : BooleanType>(seq: S, predicate: @noescape (S.Generator.Element) -> L) -> Bool
// ---------------------------------------------------------------------------------------------------------------------

let animals = [ "dog", "cat", "duck", "chicken", "cow", "snake" ]

/// Return `true` iff `x` is in `seq`.

// ---------------------------------------------------------------------------------------------------------------------
// func contains<S : SequenceType where S.Generator.Element : Equatable>(seq: S, x: S.Generator.Element) -> Bool
// ---------------------------------------------------------------------------------------------------------------------

contains(animals, "cat")
contains(animals, "somegeekintn")

// func contains<S : SequenceType, L : BooleanType>(seq: S, predicate: @noescape (S.Generator.Element) -> L) -> Bool

var result : Bool

contains(animals) { (animal) -> Bool in return animal == "cat" }
contains(animals) { (animal) -> Bool in return animal == "phone" }

// alternatively

contains(animals) { return $0 == "cat" }
contains(animals) { return $0 == "phone" }

// or even

contains(animals) { $0 == "cat" }
contains(animals) { $0 == "phone" }
