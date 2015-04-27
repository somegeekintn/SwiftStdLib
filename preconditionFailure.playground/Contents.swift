// ---------------------------------------------------------------------------------------------------------------------
// Swift Standard Library examples (examples not guaranteed to be useful)
// ---------------------------------------------------------------------------------------------------------------------

/// Indicate that a precondition was violated.
///
/// Use this function to stop the program when control flow can only
/// reach the call if your API was improperly used.
///
/// * In playgrounds and -Onone builds (the default for Xcode's Debug
///   configuration), stop program execution in a debuggable state
///   after printing `message`.
///
/// * In -O builds (the default for Xcode's Release configuration),
///   stop program execution.
///
/// * In -Ounchecked builds, the optimizer may assume that this
///   function will never be called. Failure to satisfy that assumption
///   is a serious programming error.

// ---------------------------------------------------------------------------------------------------------------------
// @noreturn func preconditionFailure(_ message: @autoclosure () -> String = default, file: StaticString = default, line: UWord = default)
// ---------------------------------------------------------------------------------------------------------------------

// preconditionFailure is similar to assertFailure except that it will
// stop program execution even when compiled for Release (-O)

println("excuting...")

preconditionFailure("Something has gone horribly wrong", file: "preconditionFailure.playground", line: __LINE__)	// See Timeline for details, also __FILE__ is useless in playgrounds

println("excuting...")
