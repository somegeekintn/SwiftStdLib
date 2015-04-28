// ---------------------------------------------------------------------------------------------------------------------
// Swift Standard Library examples (examples not guaranteed to be useful)
// ---------------------------------------------------------------------------------------------------------------------

/// Returns the least possible interval between distinct instances of
/// `T` in memory.  The result is always positive.

// ---------------------------------------------------------------------------------------------------------------------
// func strideofValue<T>(_: T) -> Int
// ---------------------------------------------------------------------------------------------------------------------

class ExampleClass {
	var intVar = 1
	var stringVar = String("string")
	var dictVal = [ "foo" : 42 ]
}

struct ExampleStruct {
	let intConst = 10
	let stringConst = "Hello world"
	
	var intVar : Int
	var stringVar : String
	var dictVal : [ String : Int ]
}

let int8 = Int8(4)
let int16 = Int16(8)
let int32 = Int32(15)
let exClass = ExampleClass()
let exStruct = ExampleStruct(intVar: 42, stringVar: "42", dictVal: [ "meaning" : 42 ])

strideofValue(int8)
strideofValue(int16)
strideofValue(int32)
strideofValue(exClass)
strideofValue(exStruct)
