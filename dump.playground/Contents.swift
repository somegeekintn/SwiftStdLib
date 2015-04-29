/*: Select Editor -> Show Rendered Markup for rich comments

_Swift Standard Library examples (examples not guaranteed to be useful)_

# dump
----

    func dump<T, TargetStream : OutputStreamType>(x: T, inout targetStream: TargetStream, name: String? = default, indent: Int = default, maxDepth: Int = default, maxItems: Int = default) -> T

Dump an object's contents using its mirror to the specified output stream.

*/
let animals = [ "dog", "cat", "duck", "chicken", "cow", "snake", "bee" ]
var outputStream = String()

dump(animals, &outputStream, name: "Array of Strings", indent: 5, maxDepth: Int.max, maxItems: 4)
/*:
    func dump<T>(x: T, name: String? = default, indent: Int = default, maxDepth: Int = default, maxItems: Int = default) -> T

Dump an object's contents using its mirror to standard output.

*/
dump(animals, name: "Array of Strings", indent: 4, maxDepth: Int.max, maxItems: 4)
println("---")

var items : [[ String : [ String : String ] ]] = [
	[ "Item1" : [ "name" : "Fred", "desc" : "Caveman" ]],
	[ "Item2" : [ "name" : "Wilma", "desc" : "Cavewoman" ]],
	[ "Item3" : [ "name" : "Dino", "desc" : "Cavedog" ]]
]

dump(items, name: "Array of Strings", indent: 0, maxDepth: 0, maxItems: 8)
println("---")
dump(items, name: "Array of Strings", indent: 0, maxDepth: 1, maxItems: 8)
println("---")
dump(items, name: "Array of Strings", indent: 0, maxDepth: 2, maxItems: 8)
println("---")
