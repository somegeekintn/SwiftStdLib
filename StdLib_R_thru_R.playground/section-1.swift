// ---------------------------------------------------------------
// ---------- An assortment of test values to work with ----------
// ---------------------------------------------------------------

class StdClass {
	var intVar = 1
	var stringVar = String("string")
	var dictVal = [ "foo" : 42 ]
}

struct StdStruct {
	var intVar : Int
	var stringVar : String
	var dictVal : [ String : Int ]
}

var stdStruct = StdStruct(intVar: 1, stringVar: "string", dictVal: [ "foo" : 42 ])
var stdClass = StdClass()
var stdStrList = [ "a", "b", "c", "d", "e" ]
var stdString = "abcde"
let stdInt8 = Int8(8)
let stdInt16 = Int16(16)
let stdInt32 = Int32(32)

// ---------------------------------------------------------------
// ---------- Some additional items for this playground ----------
// ---------------------------------------------------------------

var dupStrList = [String]()

// ---------------------------------------------------------------
// ---------------------------------------------------------------
// ---------------------------------------------------------------

// func reduce<S : SequenceType, U>(sequence: S, initial: U, combine: (U, S.Generator.Element) -> U) -> U

// factorial
reduce(1...10, 1) { (val, elem) -> Int in
	return val * elem
}

// func reflect<T>(x: T) -> MirrorType

let reflection = reflect(stdString)

// func removeAll<C : RangeReplaceableCollectionType>(inout x: C, keepCapacity: Bool = default)

dupStrList = stdStrList
removeAll(&dupStrList)
dupStrList
dupStrList.capacity

dupStrList = stdStrList
removeAll(&dupStrList, keepCapacity: true)
dupStrList
dupStrList.capacity

// func removeAtIndex<C : RangeReplaceableCollectionType>(inout x: C, index: C.Index) -> C.Generator.Element

dupStrList = stdStrList
removeAtIndex(&dupStrList, 2)
dupStrList

//func removeLast<C : RangeReplaceableCollectionType where C.Index : BidirectionalIndexType>(inout x: C) -> C.Generator.Element

removeLast(&dupStrList)
dupStrList

// func removeRange<C : RangeReplaceableCollectionType>(inout x: C, subRange: Range<C.Index>)
removeRange(&dupStrList, 1...2)

// func reverse<C : CollectionType where C.Index : BidirectionalIndexType>(source: C) -> [C.Generator.Element]

reverse(stdString)

