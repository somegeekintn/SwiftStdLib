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

let stdInervalA_E = "A"..."E"
let stdInervalC_G = "C"..."G"
let stdInervalF_J = "F"..."J"
let stdInervalHuh = "AB"..."DE"
var stdOutStream = String()

// ---------------------------------------------------------------
// ---------------------------------------------------------------
// ---------------------------------------------------------------

// func overlaps<I0 : IntervalType, I1 : IntervalType where I0.Bound == I0.Bound>(lhs: I0, rhs: I1) -> Bool

overlaps(stdInervalA_E, stdInervalF_J)
overlaps(stdInervalA_E, stdInervalC_G)
overlaps(stdInervalA_E, stdInervalHuh)
overlaps(stdInervalF_J, stdInervalHuh)

// See also ~=
stdInervalHuh ~= "BB"
stdInervalHuh ~= "CC"
stdInervalHuh ~= "DD"
stdInervalHuh ~= "DF"


// func partition<C : MutableCollectionType where C.Index : RandomAccessIndexType>(inout elements: C, range: Range<C.Index>, isOrderedBefore: (C.Generator.Element, C.Generator.Element) -> Bool) -> C.Index

var pStrList = [ "a", "b", "A", "B", "c", "d", "C", "D" ]
let pListRange = Range(start: pStrList.startIndex, end: pStrList.endIndex)

partition(&pStrList, pListRange) { (elem1, elem2) -> Bool in
	return elem1 < elem2
}
pStrList

// func partition<C : MutableCollectionType where C.Index : RandomAccessIndexType, C.Generator.Element : Comparable>(inout elements: C, range: Range<C.Index>) -> C.Index

partition(&pStrList, pListRange)
pStrList

// func precondition(condition: @autoclosure () -> Bool, _ message: @autoclosure () -> String = default, file: StaticString = default, line: UWord = default)

precondition(numericCast(stdInt16) > stdInt8, "Condition failed")

// @noreturn func preconditionFailure(_ message: @autoclosure () -> String = default, file: StaticString = default, line: UWord = default)

// preconditionFailure("Pre-condition failed")

// func prefix<S : Sliceable>(s: S, maxLength: Int) -> S.SubSlice


prefix(stdStrList, 3)
prefix(stdStrList, 100)

// func print<T>(object: T)

print(stdStrList)

// func print<T, TargetStream : OutputStreamType>(object: T, inout target: TargetStream)

print(stdStrList, &stdOutStream)
stdOutStream

// func println()

println()

// func println<T>(object: T)

println(stdStrList)

// func println<T, TargetStream : OutputStreamType>(object: T, inout target: TargetStream)

// stdOutStream = ""
println(stdStrList, &stdOutStream)
stdOutStream
