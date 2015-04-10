// ---------------------------------------------------------------------------------------------------------------------
// Swift Standard Library examples (examples not guaranteed to be useful)
// ---------------------------------------------------------------------------------------------------------------------

/// Traditional C-style assert with an optional message.
///
/// Use this function for internal sanity checks that are active
/// during testing but do not impact performance of shipping code.
/// To check for invalid usage in Release builds; see `precondition`.
///
/// * In playgrounds and -Onone builds (the default for Xcode's Debug
///   configuration): if `condition` evaluates to false, stop program
///   execution in a debuggable state after printing `message`.
///
/// * In -O builds (the default for Xcode's Release configuration),
///   `condition` is not evaluated, and there are no effects.
///
/// * In -Ounchecked builds, `condition` is not evaluated, but the
///   optimizer may assume that it *would* evaluate to `true`. Failure
///   to satisfy that assumption in -Ounchecked builds is a serious
///   programming error.

// ---------------------------------------------------------------------------------------------------------------------
// func assert(condition: @autoclosure () -> Bool, _ message: @autoclosure () -> String = default, file: StaticString = default, line: UWord = default)
// ---------------------------------------------------------------------------------------------------------------------

println("excuting...")

assert(1 < 2, "No way", file: __FILE__, line: __LINE__)

println("excuting...")

assert(1 > 2, "Who saw that coming?", file: __FILE__, line: __LINE__)

println("excuting...")
