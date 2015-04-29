/*: Select Editor -> Show Rendered Markup for rich comments

_Swift Standard Library examples (examples not guaranteed to be useful)_

# sizeofValue
----

    func sizeofValue<T>(_: T) -> Int

Returns the contiguous memory footprint of  `T`.

Does not include any dynamically-allocated or "remote" storage.
In particular, `sizeof(a)`, when `a` is a class instance, is the
same regardless of how many stored properties `a` has.

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

let int8 = Int8(4)
let int16 = Int16(8)
let int32 = Int32(15)
let exClass = ExampleClass()
let exStruct = ExampleStruct(intVar: 42, stringVar: "42", dictVal: [ "meaning" : 42 ])

sizeofValue(int8)
sizeofValue(int16)
sizeofValue(int32)
sizeofValue(exClass)
sizeofValue(exStruct)
