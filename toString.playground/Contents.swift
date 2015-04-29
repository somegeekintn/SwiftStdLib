/*: Select Editor -> Show Rendered Markup for rich comments

_Swift Standard Library examples (examples not guaranteed to be useful)_

# toString
----

    @inline(never) func toString<T>(x: T) -> String

Returns the result of `print`'ing `x` into a `String`

*/
let items = map(0..<10) { (val) -> String in
	return toString(val)
}

println(items)
