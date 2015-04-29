/*: Select Editor -> Show Rendered Markup for rich comments

_Swift Standard Library examples (examples not guaranteed to be useful)_

# maxElement
----

    func maxElement<R : SequenceType where R.Generator.Element : Comparable>(elements: R) -> R.Generator.Element

Returns the maximum element in `elements`.  Requires:
`elements` is non-empty. O(count(elements))

*/
let numbers = [4, 8, 15, 16, 23, 42]
let strings = ["4", "8", "15", "16", "23", "42"]

maxElement(numbers)
maxElement(strings)
