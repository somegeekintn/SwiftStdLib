// ---------------------------------------------------------------------------------------------------------------------
// Swift Standard Library examples (examples not guaranteed to be useful)
// ---------------------------------------------------------------------------------------------------------------------

/// O(1) if T.Index is RandomAccessIndexType; O(N) otherwise.

// ---------------------------------------------------------------------------------------------------------------------
// func count<T : _CollectionType>(x: T) -> T.Index.Distance
// ---------------------------------------------------------------------------------------------------------------------

var intArray = [Int](1...20)
let animals = [ "dog", "cat", "duck", "chicken", "cow", "snake", "bee" ]
let animalLegs = [ "dog" : 4, "cat" : 4, "duck" : 2, "chicken" : 2, "cow" : 4, "snake" : 0, "bee" : 6 ]

count(intArray)
count(animals)
count(animalLegs)
count(10...100)
count(10..<100)
