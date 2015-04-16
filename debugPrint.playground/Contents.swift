// ---------------------------------------------------------------------------------------------------------------------
// Swift Standard Library examples (examples not guaranteed to be useful)
// ---------------------------------------------------------------------------------------------------------------------

/// Write to `target` the textual representation of `x` most suitable
/// for debugging.
///
/// * If `T` conforms to `DebugPrintable`, write `x.debugDescription`
/// * Otherwise, if `T` conforms to `Printable`, write `x.description`
/// * Otherwise, if `T` conforms to `Streamable`, write `x`
/// * Otherwise, fall back to a default textual representation.
///
/// See also: `debugPrintln(x, &target)`

// ---------------------------------------------------------------------------------------------------------------------
// @inline(never) func debugPrint<T, TargetStream : OutputStreamType>(value: T, inout target: TargetStream)
// ---------------------------------------------------------------------------------------------------------------------

var outputStream = String()
let animals = [ "dog", "cat", "duck", "chicken", "cow", "snake", "bee" ]

debugPrint("Hello world", &outputStream)
debugPrint("Animals \(animals)", &outputStream)
debugPrint("Goodbye world", &outputStream)


/// Write to the console the textual representation of `x` most suitable
/// for debugging.
///
/// * If `T` conforms to `DebugPrintable`, write `x.debugDescription`
/// * Otherwise, if `T` conforms to `Printable`, write `x.description`
/// * Otherwise, if `T` conforms to `Streamable`, write `x`
/// * Otherwise, fall back to a default textual representation.
///
/// See also: `debugPrintln(x)`

// ---------------------------------------------------------------------------------------------------------------------
// @inline(never) func debugPrint<T>(x: T)
// ---------------------------------------------------------------------------------------------------------------------

debugPrint("Hello world")
debugPrint("Animals \(animals)")
debugPrint("Goodbye world")
