// ---------------------------------------------------------------------------------------------------------------------
// Swift Standard Library examples (examples not guaranteed to be useful)
// ---------------------------------------------------------------------------------------------------------------------

/// Write to the console the textual representation of `x` most suitable
/// for debugging, followed by a newline.
///
/// * If `T` conforms to `DebugPrintable`, write `x.debugDescription`
/// * Otherwise, if `T` conforms to `Printable`, write `x.description`
/// * Otherwise, if `T` conforms to `Streamable`, write `x`
/// * Otherwise, fall back to a default textual representation.
///
/// See also: `debugPrint(x)`

// ---------------------------------------------------------------------------------------------------------------------
// @inline(never) func debugPrintln<T>(x: T)
// ---------------------------------------------------------------------------------------------------------------------

let animals = [ "dog", "cat", "duck", "chicken", "cow", "snake", "bee" ]

debugPrintln("Hello world")
debugPrintln("Animals \(animals)")
debugPrintln("Goodbye world")


/// Write to `target` the textual representation of `x` most suitable
/// for debugging, followed by a newline.
///
/// * If `T` conforms to `DebugPrintable`, write `x.debugDescription`
/// * Otherwise, if `T` conforms to `Printable`, write `x.description`
/// * Otherwise, if `T` conforms to `Streamable`, write `x`
/// * Otherwise, fall back to a default textual representation.
///
/// See also: `debugPrint(x, &target)`

// ---------------------------------------------------------------------------------------------------------------------
// @inline(never) func debugPrintln<T, TargetStream : OutputStreamType>(x: T, inout target: TargetStream)
// ---------------------------------------------------------------------------------------------------------------------

var outputStream = String()

debugPrintln("Hello world", &outputStream)
debugPrintln("Animals \(animals)", &outputStream)
debugPrintln("Goodbye world", &outputStream)


