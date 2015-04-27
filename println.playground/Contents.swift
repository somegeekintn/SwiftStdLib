// ---------------------------------------------------------------------------------------------------------------------
// Swift Standard Library examples (examples not guaranteed to be useful)
// ---------------------------------------------------------------------------------------------------------------------

/// Writes the textual representation of `value` and a newline character into
/// the stream `target`.
///
/// The textual representation is obtained from the `value` using its protocol
/// conformances, in the following order of preference: `Streamable`,
/// `Printable`, `DebugPrintable`.
///
/// Do not overload this function for your type.  Instead, adopt one of the
/// protocols mentioned above.

// ---------------------------------------------------------------------------------------------------------------------
// @inline(never) func println<T, TargetStream : OutputStreamType>(value: T, inout target: TargetStream)
// ---------------------------------------------------------------------------------------------------------------------

let animals = [ "dog", "cat", "duck", "chicken", "cow", "snake", "bee" ]
var targetStream = String()

println(animals, &targetStream)

targetStream


/// Writes the textual representation of `value` and a newline character into
/// the standard output.
///
/// The textual representation is obtained from the `value` using its protocol
/// conformances, in the following order of preference: `Streamable`,
/// `Printable`, `DebugPrintable`.
///
/// Do not overload this function for your type.  Instead, adopt one of the
/// protocols mentioned above.

// ---------------------------------------------------------------------------------------------------------------------
// @inline(never) func println<T>(value: T)
// ---------------------------------------------------------------------------------------------------------------------

println(animals)


/// Writes a single newline character into the standard output.

// ---------------------------------------------------------------------------------------------------------------------
// @inline(never) func println()
// ---------------------------------------------------------------------------------------------------------------------

println()
