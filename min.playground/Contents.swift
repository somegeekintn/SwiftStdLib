/*: Select Editor -> Show Rendered Markup for rich comments

_Swift Standard Library examples (examples not guaranteed to be useful)_

# min
----

    func min<T : Comparable>(x: T, y: T) -> T

Return the lesser of `x` and `y`

*/
min(8, 42)
min("8", "42")
/*:
    func min<T : Comparable>(x: T, y: T, z: T, rest: T...) -> T

Return the least argument passed

*/
min(4, 8, 15, 16, 23, 42)
min("4", "8", "15", "16", "23", "42")

