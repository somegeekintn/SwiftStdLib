/*: Select Editor -> Show Rendered Markup for rich comments

_Swift Standard Library examples (examples not guaranteed to be useful)_

# max
----

    func max<T : Comparable>(x: T, y: T) -> T

Return the greater of `x` and `y`

*/
max(8, 42)
max("8", "42")
/*:
    func max<T : Comparable>(x: T, y: T, z: T, rest: T...) -> T

Return the greatest argument passed

*/
max(4, 8, 15, 16, 23, 42)
max("4", "8", "15", "16", "23", "42")

