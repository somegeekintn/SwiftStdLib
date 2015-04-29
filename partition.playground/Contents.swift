/*: Select Editor -> Show Rendered Markup for rich comments

_Swift Standard Library examples (examples not guaranteed to be useful)_

# partition
----

    func partition<C : MutableCollectionType where C.Index : RandomAccessIndexType, C.Generator.Element : Comparable>(inout elements: C, range: Range<C.Index>) -> C.Index

Re-order the given `range` of `elements` and return a pivot index
*p*.  

Postcondition: for all *i* in `range.startIndex..<`*p*, and *j*
in *p*`..<range.endIndex`, `less(elements[`*i*`],
elements[`*j*`]) && !less(elements[`*j*`], 
elements[`*p*`])`.  Only returns `range.endIndex` when 
`elements` is empty.

Requires: The less-than operator (`func <`) defined in the `Comparable`
conformance is a [`strict weak ordering`](http://en.wikipedia.org/wiki/Strict_weak_order#Strict_weak_orderings)
over `elements`.

*/
import Foundation

func quickSort(inout array: [Int], range: Range<Int>) {
    if (range.startIndex < range.endIndex) {
        let p = partition(&array, range)
		quickSort(&array, Range(start: range.startIndex, end: p))
		quickSort(&array, Range(start: p + 1, end: range.endIndex))
    }
}

var numbers = [Int]()
for _ in 0...15 {
    numbers.append(Int(arc4random_uniform(100)))
}

quickSort(&numbers, Range<Int>(start: numbers.startIndex, end: numbers.endIndex))
/*:
    func partition<C : MutableCollectionType where C.Index : RandomAccessIndexType>(inout elements: C, range: Range<C.Index>, isOrderedBefore: (C.Generator.Element, C.Generator.Element) -> Bool) -> C.Index

Re-order the given `range` of `elements` and return a pivot index
*p*.  

Postcondition: for all *i* in `range.startIndex..<`*p*, and *j*
in *p*`..<range.endIndex`, `less(elements[`*i*`],
elements[`*j*`]) && !less(elements[`*j*`], 
elements[`*p*`])`.  Only returns `range.endIndex` when 
`elements` is empty.

Requires: The less-than operator (`func <`) defined in the `Comparable`
conformance is a [`strict weak ordering`](http://en.wikipedia.org/wiki/Strict_weak_order#Strict_weak_orderings)
over `elements`.

*/
func quickSort2(inout array: [Int], range: Range<Int>) {
    if (range.startIndex < range.endIndex) {
        let p = partition(&array, range) { $0 < $1 }
		quickSort2(&array, Range(start: range.startIndex, end: p))
		quickSort2(&array, Range(start: p + 1, end: range.endIndex))
    }
}

var numbers2 = [Int]()
for _ in 0...15 {
    numbers2.append(Int(arc4random_uniform(100)))
}

quickSort2(&numbers2, Range<Int>(start: numbers2.startIndex, end: numbers2.endIndex))

