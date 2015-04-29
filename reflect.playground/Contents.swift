/*: Select Editor -> Show Rendered Markup for rich comments

_Swift Standard Library examples (examples not guaranteed to be useful)_

# reflect
----

    func reflect<T>(x: T) -> MirrorType

Produce a mirror for any value. If the value's type conforms to Reflectable,
invoke its getMirror() method; otherwise, fall back to an implementation
in the runtime that structurally reflects values of any type.

----

_Not really sure what you can/should do with `reflect` outside of diagnostics_

*/
var str = "Hello world"

let strMirror = reflect(str)

strMirror.value
strMirror.valueType
strMirror.objectIdentifier
strMirror.count
strMirror.summary
strMirror.quickLookObject
strMirror.disposition
