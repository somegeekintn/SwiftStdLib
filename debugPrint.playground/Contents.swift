/*: Select Editor -> Show Rendered Markup for rich comments

_Swift Standard Library examples (examples not guaranteed to be useful)_

# debugPrint
----

    @inline(never) func debugPrint<T, TargetStream : OutputStreamType>(value: T, inout target: TargetStream)

Write to `target` the textual representation of `x` most suitable
for debugging.

* If `T` conforms to `DebugPrintable`, write `x.debugDescription`
* Otherwise, if `T` conforms to `Printable`, write `x.description`
* Otherwise, if `T` conforms to `Streamable`, write `x`
* Otherwise, fall back to a default textual representation.

See also: `debugPrintln(x, &target)`

*/
var outputStream = String()
let animals = [ "dog", "cat", "duck", "chicken", "cow", "snake", "bee" ]

debugPrint("Hello world", &outputStream)
debugPrint("Animals \(animals)", &outputStream)
debugPrint("Goodbye world", &outputStream)
/*:
    @inline(never) func debugPrint<T>(x: T)

Write to the console the textual representation of `x` most suitable
for debugging.
* If `T` conforms to `DebugPrintable`, write `x.debugDescription`
* Otherwise, if `T` conforms to `Printable`, write `x.description`
* Otherwise, if `T` conforms to `Streamable`, write `x`
* Otherwise, fall back to a default textual representation.

See also: `debugPrintln(x)`

*/
debugPrint("Hello world")
debugPrint("Animals \(animals)")
debugPrint("Goodbye world")
