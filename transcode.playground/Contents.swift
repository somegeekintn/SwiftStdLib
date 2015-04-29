/*: Select Editor -> Show Rendered Markup for rich comments

_Swift Standard Library examples (examples not guaranteed to be useful)_

# transcode
----

    func transcode<Input : GeneratorType, Output : SinkType, InputEncoding : UnicodeCodecType, OutputEncoding : UnicodeCodecType where Input.Element == Input.Element, Output.Element == Output.Element>(inputEncoding: InputEncoding.Type, outputEncoding: OutputEncoding.Type, input: Input, inout output: Output, #stopOnError: Bool) -> Bool

Translate `input`, in the given `InputEncoding`, into `output`, in
the given `OutputEncoding`.

:param: `stopOnError` causes encoding to stop when an encoding
error is detected in `input`, if `true`.  Otherwise, U+FFFD
replacement characters are inserted for each detected error.

*/

import Foundation

let dogString = "Dog‼🐶"
let utf16Generator = dogString.utf16.generate()
var utf8Array = [UInt8]()
var utf8Sink = SinkOf<UInt8>{ utf8Array.append($0) }

transcode(UTF16.self, UTF8.self, utf16Generator, &utf8Sink, stopOnError: true)
println("utf8Array: \(utf8Array) (\(count(utf8Array)) elements)")

// the following works intermittently, so a possible misstep above

//let utf8String = NSString(bytes: utf8Array, length: count(utf8Array), encoding: NSUTF8StringEncoding)
//println("utf8String: \(utf8String)")

