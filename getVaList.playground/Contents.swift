/*: Select Editor -> Show Rendered Markup for rich comments

_Swift Standard Library examples (examples not guaranteed to be useful)_

# getVaList
----

    func getVaList(args: [CVarArgType]) -> CVaListPointer

Returns a `CVaListPointer` built from `args` that's backed by
autoreleased storage.

.. Warning:: This function is best avoided in favor of
   `withVaList`, but occasionally (i.e. in a `class` initializer) you
   may find that the language rules don't allow you to use
   `withVaList` as intended.

*/
import Foundation

func exampleVarArgsFunction(format: String, arguments: CVarArgType...) {
	let formattedString = NSString(format: format, arguments: getVaList(arguments))
	
	// See also withVaList for additional details
}

exampleVarArgsFunction("format %d %@ %@", 42, "hello", NSDate())
