/*: Select Editor -> Show Rendered Markup for rich comments

_Swift Standard Library examples (examples not guaranteed to be useful)_

# flatMap
----

    flatMap<S : SequenceType, T>(source: S, transform: @noescape (S.Generator.Element) -> [T]) -> [T]

Return an `Array` containing the results of mapping `transform`
over `source` and flattening the result.

See CollectionType variant examples below. 

    func flatMap<C : CollectionType, T>(source: C, transform: (C.Generator.Element) -> [T]) -> [T]

Return an `Array` containing the results of mapping `transform`
over `source` and flattening the result.

*/
struct ExampleStruct {
	let val: Int
	let items: [String]
}

let items = [[1,2],[3,4]]
let examples = [ExampleStruct(val: 42, items: ["The", "Answer"]), ExampleStruct(val: 11, items: ["One", "Louder"])]

println("items: \(flatMap(items) { $0 })")				// similar to the example Apple provided in the release notes
println("examples: \(flatMap(examples) { $0.items })")
println("-----")
/*:
    func flatMap<T, U>(x: T?, f: @noescape (T) -> U?) -> U?

Returns `f(self)!` iff `self` and `f(self)` are not nil.

see also `func map<T, U>(x: T?, f: @noescape (T) -> U) -> U?`

*/
println(map(first(items)) { find($0, 2) })		// notice that basic map returns an Int??
println(flatMap(first(items)) { find($0, 2) })	// the flatMap version returns Int?

println("-----")

var anyItems : [Any] = [ "This", 10, "nil" ]
var anyOptItems : [Any?] = [ "This", 10, nil ]

extension Array {
	func countItems() {
		for (idx, item) in enumerate(self) {

//		for item in self {
//			let optItem : T? = item
//			
//			println(item)
//			println(Swift.flatMap(optItem) { return $0 })
//			println(Swift.flatMap(item) { return $0 })
let test = Swift.flatMap(item) { return $0 }
println(test)
		}
	}
}

anyOptItems.countItems()
