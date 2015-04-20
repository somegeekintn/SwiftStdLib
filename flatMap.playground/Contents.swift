// ---------------------------------------------------------------------------------------------------------------------
// Swift Standard Library examples (examples not guaranteed to be useful)
// ---------------------------------------------------------------------------------------------------------------------

/// Return an `Array` containing the results of mapping `transform`
/// over `source` and flattening the result.

// ---------------------------------------------------------------------------------------------------------------------
// flatMap<S : SequenceType, T>(source: S, transform: @noescape (S.Generator.Element) -> [T]) -> [T]
// ---------------------------------------------------------------------------------------------------------------------

// See CollectionType variant examples below. 


/// Return an `Array` containing the results of mapping `transform`
/// over `source` and flattening the result.

// ---------------------------------------------------------------------------------------------------------------------
// func flatMap<C : CollectionType, T>(source: C, transform: (C.Generator.Element) -> [T]) -> [T]
// ---------------------------------------------------------------------------------------------------------------------

let items = [[1,2],[3,4]]

println(flatMap(items) { $0 })					// similar to the example Apple provided in the release notes


/// Returns `f(self)!` iff `self` and `f(self)` are not nil.

// ---------------------------------------------------------------------------------------------------------------------
// func flatMap<T, U>(x: T?, f: @noescape (T) -> U?) -> U?
// ---------------------------------------------------------------------------------------------------------------------

// see also func map<T, U>(x: T?, f: @noescape (T) -> U) -> U?

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
