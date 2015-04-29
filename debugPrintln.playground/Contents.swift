/*: Select Editor -> Show Rendered Markup for rich comments

_Swift Standard Library examples (examples not guaranteed to be useful)_

# debugPrintln
----

    @inline(never) func debugPrintln<T>(x: T)

Write to the console the textual representation of `x` most suitable
for debugging, followed by a newline.

* If `T` conforms to `DebugPrintable`, write `x.debugDescription`
* Otherwise, if `T` conforms to `Printable`, write `x.description`
* Otherwise, if `T` conforms to `Streamable`, write `x`
* Otherwise, fall back to a default textual representation.

See also: `debugPrint(x)`

*/
let animals = [ "dog", "cat", "duck", "chicken", "cow", "snake", "bee" ]

debugPrintln("Hello world")
debugPrintln("Animals \(animals)")
debugPrintln("Goodbye world")
/*:
    @inline(never) func debugPrintln<T, TargetStream : OutputStreamType>(x: T, inout target: TargetStream)

Write to `target` the textual representation of `x` most suitable
for debugging, followed by a newline.

* If `T` conforms to `DebugPrintable`, write `x.debugDescription`
* Otherwise, if `T` conforms to `Printable`, write `x.description`
* Otherwise, if `T` conforms to `Streamable`, write `x`
* Otherwise, fall back to a default textual representation.

See also: `debugPrint(x, &target)`

*/
var outputStream = String()

debugPrintln("Hello world", &outputStream)
debugPrintln("Animals \(animals)", &outputStream)
debugPrintln("Goodbye world", &outputStream)

