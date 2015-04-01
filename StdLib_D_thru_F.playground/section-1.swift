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

var stdStrList2 = [ "a", "b", "c", "d", "e" ]
var stdOutStream = String()

// ---------------------------------------------------------------
// ---------------------------------------------------------------
// ---------------------------------------------------------------

// func debugPrint<T, TargetStream : OutputStreamType>(x: T, inout target: TargetStream)

debugPrint(stdString, &stdOutStream)

stdOutStream

// func debugPrint<T>(x: T)

debugPrint(stdStrList)

// func debugPrintln<T, TargetStream : OutputStreamType>(x: T, inout target: TargetStream)

debugPrintln(stdString, &stdOutStream)

stdOutStream

// func debugPrintln<T>(x: T)

debugPrintln(stdString)

// func distance<T : ForwardIndexType>(start: T, end: T) -> T.Distance

distance(stdStrList.startIndex, stdStrList.endIndex)

// func dropFirst<Seq : Sliceable>(s: Seq) -> Seq.SubSlice

dropFirst(stdStrList)

// func dropLast<S : Sliceable where S.Index : BidirectionalIndexType>(s: S) -> S.SubSlice

dropLast(stdStrList)

// func dump<T>(x: T, name: String? = default, indent: Int = default, maxDepth: Int = default, maxItems: Int = default) -> T

dump(stdStrList, name: "Array of Strings", indent: 5, maxDepth: Int.max, maxItems: 4)

// func dump<T, TargetStream : OutputStreamType>(x: T, inout targetStream: TargetStream, name: String? = default, indent: Int = default, maxDepth: Int = default, maxItems: Int = default) -> T

dump(stdStrList, &stdOutStream, name: "Array of Strings", indent: 5, maxDepth: Int.max, maxItems: 4)

stdOutStream

// func enumerate<Seq : SequenceType>(base: Seq) -> EnumerateSequence<Seq>

for (index, item) in enumerate(stdStrList) {
	println("\(index): \(item)")
}

// func equal<S1 : SequenceType, S2 : SequenceType where S1.Generator.Element == S1.Generator.Element, S1.Generator.Element : Equatable>(a1: S1, a2: S2) -> Bool

equal(stdStrList, stdStrList2)

// func equal<S1 : SequenceType, S2 : SequenceType where S1.Generator.Element == S1.Generator.Element>(a1: S1, a2: S2, isEquivalent: (S1.Generator.Element, S1.Generator.Element) -> Bool) -> Bool

equal(stdStrList, stdStrList2) { (item1, item2) -> Bool in
	return item1.hashValue == item2.hashValue
}

// func extend<C : RangeReplaceableCollectionType, S : CollectionType where S.Generator.Element == S.Generator.Element>(inout x: C, newElements: S)

extend(&stdStrList, [ "f", "g", "h", "i"])

// @noreturn func fatalError(_ message: @autoclosure () -> String = default, file: StaticString = default, line: UWord = default)

// fatalError("ERROR!", file: "This file", line: __LINE__)

// func filter<S : SequenceType>(source: S, includeElement: (S.Generator.Element) -> Bool) -> [S.Generator.Element]

filter(stdStrList, { (item : String) -> Bool in		// Use (item : String) -> Bool and autocomplete works in the block. Use (item) -> Bool and it does not
	// filter odd numbered unicode values or something
	return item.unicodeScalars[item.unicodeScalars.startIndex].value % 2 == 1
})


// func find<C : CollectionType where C.Generator.Element : Equatable>(domain: C, value: C.Generator.Element) -> C.Index?

find(stdStrList, "d")

// func first<C : CollectionType>(x: C) -> C.Generator.Element?

first(stdStrList.reverse())


