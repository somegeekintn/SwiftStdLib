/*: Select Editor -> Show Rendered Markup for rich comments

_Swift Standard Library examples (examples not guaranteed to be useful)_

# strideof
----

    func strideof<T>(_: T.Type) -> Int

Returns the least possible interval between distinct instances of
`T` in memory.  The result is always positive.

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

strideof(Int8.self)
strideof(Int16.self)
strideof(Int32.self)
strideof(ExampleClass.self)
strideof(ExampleStruct.self)
