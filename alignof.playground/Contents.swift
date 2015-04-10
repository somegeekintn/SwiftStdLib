// ---------------------------------------------------------------------------------------------------------------------
// Swift Standard Library examples (examples not guaranteed to be useful)
// ---------------------------------------------------------------------------------------------------------------------

/// Returns the minimum memory alignment of `T`.

// ---------------------------------------------------------------------------------------------------------------------
// func alignof<T>(_: T.Type) -> Int
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

alignof(Int8)
alignof(Int16)
alignof(Int32)
alignof(ExampleClass)
alignof(ExampleStruct)

