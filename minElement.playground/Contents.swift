/*: Select Editor -> Show Rendered Markup for rich comments

_Swift Standard Library examples (examples not guaranteed to be useful)_

# minElement
----

    func minElement<R : SequenceType where R.Generator.Element : Comparable>(elements: R) -> R.Generator.Element

Returns the minimum element in `elements`.  Requires:
`elements` is non-empty. O(count(elements))

*/
let numbers = [4, 8, 15, 16, 23, 42]
let strings = ["4", "8", "15", "16", "23", "42"]

minElement(numbers)
minElement(strings)
