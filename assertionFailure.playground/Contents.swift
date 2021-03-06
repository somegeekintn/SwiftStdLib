/*: Select Editor -> Show Rendered Markup for rich comments

_Swift Standard Library examples (examples not guaranteed to be useful)_

# assertionFailure
----

    @inline(__always) func assertionFailure(_ message: @autoclosure () -> String = default, file: StaticString = default, line: UWord = default)

Indicate that an internal sanity check failed.

Use this function to stop the program, without impacting the
performance of shipping code, when control flow is not expected to
reach the call (e.g. in the `default` case of a `switch` where you
have knowledge that one of the other cases must be satisfied). To
protect code from invalid usage in Release builds; see
`preconditionFailure`.

* In playgrounds and -Onone builds (the default for Xcode's Debug
  configuration) stop program execution in a debuggable state
  after printing `message`.

* In -O builds, has no effect.

* In -Ounchecked builds, the optimizer may assume that this
  function will never be called. Failure to satisfy that assumption
  is a serious programming error.

*/
println("excuting...")

assertionFailure("Something has gone horribly wrong", file: "assertionFailure.playground", line: __LINE__)	// See Timeline for details, also __FILE__ is useless in playgrounds

println("excuting...")
