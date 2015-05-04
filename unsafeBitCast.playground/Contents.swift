/*: Select Editor -> Show Rendered Markup for rich comments

_Swift Standard Library examples (examples not guaranteed to be useful)_

# unsafeBitCast
----

    func unsafeBitCast<T, U>(x: T, _: U.Type) -> U

Returns the the bits of `x`, interpreted as having type `U`.

   _Caution:_ Breaks the guarantees of Swift's type system; use
   with extreme care.  There's almost always a better way to do
   anything.

*/
import Foundation

func dumpMem<T>(inout arg: T) {
	let dumpLen = sizeofValue(arg)
	let mirror = reflect(T)
	
	println("dump \(dumpLen) bytes for type: \(mirror.valueType)")

	withUnsafePointer(&arg) { (ptr) -> Void in
		var addr = unsafeBitCast(ptr, Word.self)
		var str = ""
		
		let bytePtr = unsafeBitCast(ptr, UnsafePointer<UInt8>.self)
		for idx in 0..<dumpLen {
			if idx % 16 == 0 {
				if idx > 0 {
					str += "\n"
				}
				str += NSString(format: "0x%0llx: ", addr + idx) as String
			}
			str += NSString(format: "%02x", bytePtr[idx]) as String
		}
		
		println(str)
	}
	
	println("---")
}

var theAnwser = 42
dumpMem(&theAnwser)

var timeVal = time_t()
var tmVal = tm()

time(&timeVal)
localtime_r(&timeVal, &tmVal)

println("tm_sec: \(tmVal.tm_sec)")
println("tm_min: \(tmVal.tm_min)")
println("tm_hour: \(tmVal.tm_hour)")
println("tm_mday: \(tmVal.tm_mday)")
println("tm_mon: \(tmVal.tm_mon)")
println("tm_year: \(tmVal.tm_year)")
println("tm_wday: \(tmVal.tm_wday)")
println("tm_yday: \(tmVal.tm_yday)")
println("tm_isdst: \(tmVal.tm_isdst)")
println("tm_gmtoff: \(tmVal.tm_gmtoff)")
println("---")

dumpMem(&tmVal)
