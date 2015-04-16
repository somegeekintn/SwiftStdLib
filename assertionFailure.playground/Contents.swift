// ---------------------------------------------------------------------------------------------------------------------
// Swift Standard Library examples (examples not guaranteed to be useful)
// ---------------------------------------------------------------------------------------------------------------------

/// Indicate that an internal sanity check failed.
///
/// Use this function to stop the program, without impacting the
/// performance of shipping code, when control flow is not expected to
/// reach the call (e.g. in the `default` case of a `switch` where you
/// have knowledge that one of the other cases must be satisfied). To
/// protect code from invalid usage in Release builds; see
/// `preconditionFailure`.
///
/// * In playgrounds and -Onone builds (the default for Xcode's Debug
///   configuration) stop program execution in a debuggable state
///   after printing `message`.
///
/// * In -O builds, has no effect.
///
/// * In -Ounchecked builds, the optimizer may assume that this
///   function will never be called. Failure to satisfy that assumption
///   is a serious programming error.

// ---------------------------------------------------------------------------------------------------------------------
// @inline(__always) func assertionFailure(_ message: @autoclosure () -> String = default, file: StaticString = default, line: UWord = default)
// ---------------------------------------------------------------------------------------------------------------------

println("excuting...")

assertionFailure("Something has gone horribly wrong", file: __FILE__, line: __LINE__)	// See Timeline for details

println("excuting...")
