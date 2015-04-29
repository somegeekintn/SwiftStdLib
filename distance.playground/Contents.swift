/*: Select Editor -> Show Rendered Markup for rich comments

_Swift Standard Library examples (examples not guaranteed to be useful)_

# distance
----

    func distance<T : ForwardIndexType>(start: T, end: T) -> T.Distance

Measure the distance between `start` and `end`.

If `T` models `RandomAccessIndexType`, requires that `start` and `end` are
part of the same sequence, and executes in O(1).

Otherwise, requires that `end` is reachable from `start` by
incrementation, and executes in O(N), where N is the function's
result.

*/
let animals = [ "dog", "cat", "duck", "chicken", "cow", "snake", "bee" ]
let intArray = [Int](1...20)

distance(animals.startIndex, animals.endIndex)
distance(intArray.startIndex, intArray.endIndex)
