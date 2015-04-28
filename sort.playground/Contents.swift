// ---------------------------------------------------------------------------------------------------------------------
// Swift Standard Library examples (examples not guaranteed to be useful)
// ---------------------------------------------------------------------------------------------------------------------

/// Sort `collection` in-place according to `isOrderedBefore`.
///
/// The sorting algorithm is not stable (can change the relative order of
/// elements for which `isOrderedBefore` does not establish an order).
///
/// Requires: `isOrderedBefore` is a `strict weak ordering
/// <http://en.wikipedia.org/wiki/Strict_weak_order#Strict_weak_orderings>`__
/// over `elements`.

// ---------------------------------------------------------------------------------------------------------------------
// func sort<C : MutableCollectionType where C.Index : RandomAccessIndexType>(inout collection: C, isOrderedBefore: (C.Generator.Element, C.Generator.Element) -> Bool)
// ---------------------------------------------------------------------------------------------------------------------

// ---------------------------------------------------------------------------------------------------------------------
// func sort<T>(inout array: [T], isOrderedBefore: (T, T) -> Bool)
// ---------------------------------------------------------------------------------------------------------------------

// ---------------------------------------------------------------------------------------------------------------------
// func sort<T>(inout array: ContiguousArray<T>, isOrderedBefore: (T, T) -> Bool)
// ---------------------------------------------------------------------------------------------------------------------

var animals = [ "dog", "cat", "duck", "chicken", "cow", "snake", "bee" ]
var animalLegs : [(name : String, legs: Int)] = [ ("dog", 4), ("cat", 4), ("duck", 2), ("chicken", 2), ("cow", 4), ("snake", 0), ("bee", 6) ]
var animalsCopy = animals

sort(&animals) { $0 < $1 }
println(animals)

sort(&animalLegs) { $0.legs < $1.legs || ($0.legs == $1.legs && $0.name < $1.name) }
println(animalLegs)


/// Sort `collection` in-place.
///
/// The sorting algorithm is not stable (can change the relative order of
/// elements that compare equal).
///
/// Requires: The less-than operator (`func <`) defined in the `Comparable`
/// conformance is a `strict weak ordering
/// <http://en.wikipedia.org/wiki/Strict_weak_order#Strict_weak_orderings>`__
/// over `elements`.

// ---------------------------------------------------------------------------------------------------------------------
// func sort<C : MutableCollectionType where C.Index : RandomAccessIndexType, C.Generator.Element : Comparable>(inout collection: C)
// ---------------------------------------------------------------------------------------------------------------------

// ---------------------------------------------------------------------------------------------------------------------
// func sort<T : Comparable>(inout array: [T])
// ---------------------------------------------------------------------------------------------------------------------

// ---------------------------------------------------------------------------------------------------------------------
// func sort<T : Comparable>(inout array: ContiguousArray<T>)
// ---------------------------------------------------------------------------------------------------------------------

sort(&animalsCopy)
println(animalsCopy)

