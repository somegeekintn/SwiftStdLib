// ---------------------------------------------------------------------------------------------------------------------
// Swift Standard Library examples (examples not guaranteed to be useful)
// ---------------------------------------------------------------------------------------------------------------------

/// Unconditionally print a `message` and stop execution.

// ---------------------------------------------------------------------------------------------------------------------
// @noreturn func fatalError(_ message: @autoclosure () -> String = default, file: StaticString = default, line: UWord = default)
// ---------------------------------------------------------------------------------------------------------------------

fatalError("I died", file: "fatalError.playground", line: __LINE__)
