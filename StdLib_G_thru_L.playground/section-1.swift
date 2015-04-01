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

var stdStrList2 = [ "f", "g", "h", "i", "j" ]

// ---------------------------------------------------------------
// ---------------------------------------------------------------
// ---------------------------------------------------------------

// func getVaList(args: [CVarArgType]) -> CVaListPointer

func swiftF(format: String, arguments: CVarArgType...) {
	getVaList(arguments)

//	like? printf(format, getVaList(arguments))
}

swiftF("format", 1, 2, 3, 4)

// func indices<C : CollectionType>(x: C) -> Range<C.Index>

indices(stdStrList)

// func insert<C : RangeReplaceableCollectionType>(inout x: C, newElement: C.Generator.Element, atIndex i: C.Index)

insert(&stdStrList, "inserted", atIndex: 3)

// func isEmpty<C : CollectionType>(x: C) -> Bool

var stdStrListCopy = stdStrList
isEmpty(stdStrList)
stdStrListCopy.removeAll(keepCapacity: true)
isEmpty(stdStrListCopy)

// func join<C : ExtensibleCollectionType, S : SequenceType where C == C>(separator: C, elements: S) -> C

join(" | ", stdStrList)

// func last<C : CollectionType where C.Index : BidirectionalIndexType>(x: C) -> C.Generator.Element?

last(stdStrList)		// synonomous with stdStrList.last

//func lazy<S : CollectionType where S.Index : ForwardIndexType>(s: S) -> LazyForwardCollection<S>
//func lazy<S : CollectionType where S.Index : BidirectionalIndexType>(s: S) -> LazyBidirectionalCollection<S>
//func lazy<S : CollectionType where S.Index : RandomAccessIndexType>(s: S) -> LazyRandomAccessCollection<S>
//func lazy<S : SequenceType>(s: S) -> LazySequence<S>

var lazyItems = lazy(stdStrList).filter{ $0 > "d" }

// note the description of lazyItems with the following commented out versus uncommented
//lazyItems.array

// func lexicographicalCompare<S1 : SequenceType, S2 : SequenceType where S1.Generator.Element == S1.Generator.Element>(a1: S1, a2: S2, less: (S1.Generator.Element, S1.Generator.Element) -> Bool) -> Bool

lexicographicalCompare(stdStrList, stdStrList2) { (elem1, elem2) -> Bool in
	return elem1 < elem2	// same as default lexicographicalCompare
}

// func lexicographicalCompare<S1 : SequenceType, S2 : SequenceType where S1.Generator.Element == S1.Generator.Element, S1.Generator.Element : Comparable>(a1: S1, a2: S2) -> Bool

lexicographicalCompare(stdStrList, stdStrList2)
lexicographicalCompare(stdStrList2, stdStrList)

