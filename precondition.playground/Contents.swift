// ---------------------------------------------------------------------------------------------------------------------
// Swift Standard Library examples (examples not guaranteed to be useful)
// ---------------------------------------------------------------------------------------------------------------------

/// Check a necessary condition for making forward progress.
///
/// Use this function to detect conditions that must prevent the
/// program from proceeding even in shipping code.
///
/// * In playgrounds and -Onone builds (the default for Xcode's Debug
///   configuration): if `condition` evaluates to false, stop program
///   execution in a debuggable state after printing `message`.
///
/// * In -O builds (the default for Xcode's Release configuration):
///   if `condition` evaluates to false, stop program execution.
///
/// * In -Ounchecked builds, `condition` is not evaluated, but the
///   optimizer may assume that it *would* evaluate to `true`. Failure
///   to satisfy that assumption in -Ounchecked builds is a serious
///   programming error.

// ---------------------------------------------------------------------------------------------------------------------
// func precondition(condition: @autoclosure () -> Bool, _ message: @autoclosure () -> String = default, file: StaticString = default, line: UWord = default)
// ---------------------------------------------------------------------------------------------------------------------

// precondition is similar to assert except that it will stop program
// execution even when compiled for Release (-O)

println("excuting...")

precondition(1 < 2, "No way", file: "precondition.playground", line: __LINE__)

println("excuting...")

precondition(1 > 2, "Who saw that coming?", file: "precondition.playground", line: __LINE__)	// See Timeline for details

println("excuting...")
