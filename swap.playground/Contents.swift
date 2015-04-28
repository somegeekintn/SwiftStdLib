// ---------------------------------------------------------------------------------------------------------------------
// Swift Standard Library examples (examples not guaranteed to be useful)
// ---------------------------------------------------------------------------------------------------------------------

/// Exchange the values of `a` and `b`

// ---------------------------------------------------------------------------------------------------------------------
// func swap<T>(inout a: T, inout b: T)
// ---------------------------------------------------------------------------------------------------------------------

var x = 23
var y = 42

swap(&x, &y)

println("x: \(x), y: \(y)")

var uglyAnimals = [ "dog", "cat", "duck", "chicken", "cow" ]
var cuteAnimals = [ "snake", "bee" ]

swap(&cuteAnimals, &uglyAnimals)

println("cuteAnimals: \(cuteAnimals)")
println("uglyAnimals: \(uglyAnimals)")
