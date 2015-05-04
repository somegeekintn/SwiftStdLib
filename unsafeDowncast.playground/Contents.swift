/*: Select Editor -> Show Rendered Markup for rich comments

_Swift Standard Library examples (examples not guaranteed to be useful)_

# unsafeDowncast
----

    func unsafeDowncast<T>(x: AnyObject) -> T

Returns: `x as T`

Requires: `x is T`.  In particular, in -O builds, no test is
performed to ensure that `x` actually has dynamic type `T`.

  _Danger:_ trades safety for performance. Use `unsafeDowncast`
  only when `x as T` has proven to be a performance problem and you
  are confident that, always, `x is T`. It is better than an
  `unsafeBitCast` because it's more restrictive, and because
  checking is still performed in debug builds.

*/
import Foundation

func createString() -> NSString {
	return NSMutableString(string: "hello")
}

var str = createString()

//	str.appendString(", world")		// error

var mutableStr : NSMutableString = unsafeDowncast(str)

mutableStr.appendString(", world")
