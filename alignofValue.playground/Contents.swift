/*: Select Editor -> Show Rendered Markup for rich comments

_Swift Standard Library examples (examples not guaranteed to be useful)_

# alignofValue
----

    func alignofValue<T>(_: T) -> Int

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

let exInt8 = Int8(8)
let exInt16 = Int16(16)
let exInt32 = Int32(32)
let exInt64 = Int64(64)
var exArray = [Int](1...20)
var exString = "Hello world"
var exStruct = ExampleStruct(intVar: 1, stringVar: "string", dictVal: [ "foo" : 42 ])
var exClass = ExampleClass()

alignofValue(exInt8)
alignofValue(exInt16)
alignofValue(exInt32)
alignofValue(exInt64)
alignofValue(exString)
alignofValue(exArray)
alignofValue(exClass)
alignofValue(exStruct)
