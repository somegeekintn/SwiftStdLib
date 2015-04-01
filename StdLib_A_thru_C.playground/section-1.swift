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
// ---------------------------------------------------------------
// ---------------------------------------------------------------

// func abs<T : SignedNumberType>(x: T) -> T

abs(-1)
abs(-1.0)

// func advance<T : ForwardIndexType>(start: T, n: T.Distance) -> T

advance(stdStrList.endIndex, -2)

// func advance<T : ForwardIndexType>(start: T, n: T.Distance, end: T) -> T

advance(stdStrList.startIndex, 20, stdStrList.endIndex)

// func alignof<T>(_: T.Type) -> Int

alignof(Int8)
alignof(Int16)
alignof(Int32)
alignof(StdClass)
alignof(StdStruct)

// func alignofValue<T>(_: T) -> Int

alignofValue(stdInt8)
alignofValue(stdInt16)
alignofValue(stdInt32)
alignofValue(StdClass)
alignofValue(StdStruct)

// func assert(condition: @autoclosure () -> Bool, _ message: @autoclosure () -> String = default, file: StaticString = default, line: UWord = default)

assert(1 < 2, "darn", file: "this filename", line: 42)

// @noreturn func assertionFailure(_ message: @autoclosure () -> String = default, file: StaticString = default, line: UWord = default)

// assertionFailure("crap", file: "that filename", line: 42)

// func contains<S : SequenceType where S.Generator.Element : Equatable>(seq: S, x: S.Generator.Element) -> Bool

contains(stdStrList, "c")
contains(stdStrList, "x")

// func contains<S : SequenceType, L : BooleanType>(seq: S, predicate: (S.Generator.Element) -> L) -> Bool

contains(stdStrList) { (elem) -> Bool in return elem == "c" }
contains(stdStrList) { (elem) -> Bool in return elem == "x" }

// func count<I : RandomAccessIndexType>(r: Range<I>) -> I.Distance

count(10...100)
count(10..<100)

