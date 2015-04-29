/*: Select Editor -> Show Rendered Markup for rich comments

_Swift Standard Library examples (examples not guaranteed to be useful)_

# alignof
----

    func alignof<T>(_: T.Type) -> Int

Returns the minimum memory alignment of `T`.

*/
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
