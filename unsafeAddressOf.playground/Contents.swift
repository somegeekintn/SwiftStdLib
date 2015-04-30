/*: Select Editor -> Show Rendered Markup for rich comments

_Swift Standard Library examples (examples not guaranteed to be useful)_

# unsafeAddressOf
----

    func unsafeAddressOf(object: AnyObject) -> UnsafePointer<Void>

Return an UnsafePointer to the storage used for `object`.  There's
not much you can do with this other than use it to identify the
object

*/
import Foundation

var obj = NSObject()
var key : NSString = "date"

objc_setAssociatedObject(obj, unsafeAddressOf(key), NSDate(), objc_AssociationPolicy(OBJC_ASSOCIATION_RETAIN_NONATOMIC))
objc_getAssociatedObject(obj, unsafeAddressOf(key))
