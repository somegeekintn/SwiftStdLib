// ---------------------------------------------------------------------------------------------------------------------
// Swift Standard Library examples (examples not guaranteed to be useful)
// ---------------------------------------------------------------------------------------------------------------------

/// Remove all elements from `x`
///
/// Invalidates all indices with respect to `x`.
///
/// :param: `keepCapacity`, if `true`, is a non-binding request to
///    avoid releasing storage, which can be a useful optimization
///    when `x` is going to be grown again.
///
/// Complexity: O(\ `count(x)`\ ).

// ---------------------------------------------------------------------------------------------------------------------
// func removeAll<C : RangeReplaceableCollectionType>(inout x: C, keepCapacity: Bool = default)
// ---------------------------------------------------------------------------------------------------------------------

var animals = [ "dog", "cat", "duck", "chicken", "cow", "snake", "bee" ]
var dupAnimals = animals

removeAll(&dupAnimals)
dupAnimals.capacity

removeAll(&animals, keepCapacity: true)
animals.capacity
