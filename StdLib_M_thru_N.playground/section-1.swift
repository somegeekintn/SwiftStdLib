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

var altIntList = [ 4, 8, 15, 16, 23, 42 ]
var altStrList = [ "4", "8", "15", "16", "23", "42" ]
var optStrings = [String?](arrayLiteral: "42", nil )
var optInts = [Int?]()

// ---------------------------------------------------------------
// ---------------------------------------------------------------
// ---------------------------------------------------------------

// func map<T, U>(x: T?, f: (T) -> U) -> U?

for optString in optStrings {
	optInts.append(map(optString, { (item) -> Int in
		return item.toInt() ?? 0
	}))
}

println(optInts)

// func map<C : CollectionType, T>(source: C, transform: (C.Generator.Element) -> T) -> [T]

map(stdStrList, { (elem) -> String in
	return "map: " + elem
})

// func map<S : SequenceType, T>(source: S, transform: (S.Generator.Element) -> T) -> [T]

let seq = stdStrList.generate()
map(seq, { (elem) -> String in
	return "map: " + elem
})

// func max<T : Comparable>(x: T, y: T, z: T, rest: T...) -> T

max(4, 8, 15, 16, 23, 42)
max("4", "8", "15", "16", "23", "42")

//func max<T : Comparable>(x: T, y: T) -> T

max(4, 8)
max("4", "8")

// func maxElement<R : SequenceType where R.Generator.Element : Comparable>(elements: R) -> R.Generator.Element

maxElement(altIntList)
maxElement(altStrList)

// func min<T : Comparable>(x: T, y: T) -> T

min(4, 8, 15, 16, 23, 42)
min("4", "8", "15", "16", "23", "42")

// func min<T : Comparable>(x: T, y: T, z: T, rest: T...) -> T

min(4, 8)
min("4", "8")

// func minElement<R : SequenceType where R.Generator.Element : Comparable>(elements: R) -> R.Generator.Element

minElement(altIntList)
minElement(altStrList)

// numericCast test functions
func funcInt(x: Int8) -> Int8 { return x}
func funcUInt(x: UInt8) -> UInt8 { return numericCast(funcInt(numericCast(x))) }

// func numericCast<T : _UnsignedIntegerType, U : _SignedIntegerType>(x: T) -> U
// func numericCast<T : _SignedIntegerType, U : _UnsignedIntegerType>(x: T) -> U
// func numericCast<T : _UnsignedIntegerType, U : _UnsignedIntegerType>(x: T) -> U
// func numericCast<T : _SignedIntegerType, U : _SignedIntegerType>(x: T) -> U

let x = funcInt(numericCast(-42))
let y = funcUInt(numericCast(Int32(42)))

