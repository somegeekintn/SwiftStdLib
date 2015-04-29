/*: Select Editor -> Show Rendered Markup for rich comments

_Swift Standard Library examples (examples not guaranteed to be useful)_

# numericCast
----

    func numericCast<T : _UnsignedIntegerType, U : _SignedIntegerType>(x: T) -> U

Convert `x` to type `U`, trapping on overflow in -Onone and -O
builds.

Typically used to do conversion to any contextually-deduced
integer type::

    func f(x: Int32) {}
    func g(x: UInt64) { f(numericCast(x)) }

----

    func numericCast<T : _SignedIntegerType, U : _UnsignedIntegerType>(x: T) -> U

Convert `x` to type `U`, trapping on overflow in -Onone and -O
builds.

Typically used to do conversion to any contextually-deduced
integer type::

    func f(x: UInt32) {}
    func g(x: Int64) { f(numericCast(x)) }

----

    func numericCast<T : _UnsignedIntegerType, U : _UnsignedIntegerType>(x: T) -> U

Convert `x` to type `U`, trapping on overflow in -Onone and -O
builds.

Typically used to do conversion to any contextually-deduced
integer type::

    func f(x: UInt32) {}
    func g(x: UInt64) { f(numericCast(x)) }

----

    func numericCast<T : _SignedIntegerType, U : _SignedIntegerType>(x: T) -> U

Convert `x` to type `U`, trapping on overflow in -Onone and -O
builds.

Typically used to do conversion to any contextually-deduced
integer type::

    func f(x: Int32) {}
    func g(x: Int64) { f(numericCast(x)) }

*/
// numericCast test functions
func funcInt(x: Int8) -> Int8 { return x}
func funcUInt(x: UInt8) -> UInt8 { return numericCast(funcInt(numericCast(x))) }

// func numericCast<T : _UnsignedIntegerType, U : _SignedIntegerType>(x: T) -> U
// func numericCast<T : _SignedIntegerType, U : _UnsignedIntegerType>(x: T) -> U
// func numericCast<T : _UnsignedIntegerType, U : _UnsignedIntegerType>(x: T) -> U
// func numericCast<T : _SignedIntegerType, U : _SignedIntegerType>(x: T) -> U

let negInt32 = Int32(-42)
let posInt32 = Int32(42)
let posUInt32 = UInt32(42)

// funcInt(negInt32)				// balks
funcInt(numericCast(negInt32))
funcInt(numericCast(posInt32))
funcInt(numericCast(posUInt32))

// funcUInt(int32)					// balks
// funcUInt(numericCast(negInt32))	// overflow
funcUInt(numericCast(posInt32))
funcUInt(numericCast(posUInt32))
