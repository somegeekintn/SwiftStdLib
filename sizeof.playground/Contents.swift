/*: Select Editor -> Show Rendered Markup for rich comments

_Swift Standard Library examples (examples not guaranteed to be useful)_

# sizeof
----

    func sizeof<T>(_: T.Type) -> Int

Returns the contiguous memory footprint of `T`.

Does not include any dynamically-allocated or "remote" storage.
In particular, `sizeof(X.self)`, when `X` is a class type, is the
same regardless of how many stored properties `X` has.

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

sizeof(Int8.self)
sizeof(Int16.self)
sizeof(Int32.self)
sizeof(ExampleClass.self)
sizeof(ExampleStruct.self)
