/*: Select Editor -> Show Rendered Markup for rich comments

_Swift Standard Library examples (examples not guaranteed to be useful)_

# fatalError
----

    @noreturn func fatalError(_ message: @autoclosure () -> String = default, file: StaticString = default, line: UWord = default)

Unconditionally print a `message` and stop execution.

*/
fatalError("I died", file: "fatalError.playground", line: __LINE__)
