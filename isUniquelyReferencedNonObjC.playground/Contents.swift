/*: Select Editor -> Show Rendered Markup for rich comments

_Swift Standard Library examples (examples not guaranteed to be useful)_

# isUniquelyReferencedNonObjC
----

    func isUniquelyReferenced<T : NonObjectiveCBase>(inout object: T) -> Bool

Returns `true` iff `object` is a non-`@objc` class instance with
a single strong reference.

* Does *not* modify `object`; the use of `inout` is an
  implementation artifact.
* If `object` is an Objective-C class instance, returns `false`.
* Weak references do not affect the result of this function.
 
Useful for implementing the copy-on-write optimization for the
deep storage of value types::

    mutating func modifyMe(arg: X) {
      if isUniquelyReferencedNonObjC(&myStorage) {
        myStorage.modifyInPlace(arg)
      }
      else {
        myStorage = self.createModified(myStorage, arg)
      }
    }

This function is safe to use for `mutating` functions in
multithreaded code because a false positive would imply that there
is already a user-level data race on the value being mutated.

    func isUniquelyReferencedNonObjC<T>(inout object: T?) -> Bool
    
Returns `true` iff `object` is a non-\ `@objc` class instance with
a single strong reference.

* Does *not* modify `object`; the use of `inout` is an
  implementation artifact.
* If `object` is an Objective-C class instance, returns `false`.
* Weak references do not affect the result of this function.
 
Useful for implementing the copy-on-write optimization for the
deep storage of value types::

    mutating func modifyMe(arg: X) {
      if isUniquelyReferencedNonObjC(&myStorage) {
        myStorage.modifyInPlace(arg)
      }
      else {
        myStorage = self.createModified(myStorage, arg)
      }
    }

This function is safe to use for `mutating` functions in
multithreaded code because a false positive would imply that there
is already a user-level data race on the value being mutated.

----
A similar example to that in `isUniquelyReferenced` except here we're using optionals
Not shown is the non-optional version or testing it with Objective-C objects

*/
struct Stack<T> : Printable {
	typealias StackInfo = (space: Int, depth: Int)
	typealias StackBuffer = ManagedBuffer<StackInfo,T>
	private var buffer : StackBuffer?
	
    var depth: Int {
        return self.buffer?.value.depth ?? 0
    }

    var space: Int {
        return self.buffer?.value.space ?? 0
    }

    var description: String {
        var str = ""
		self.buffer?.withUnsafeMutablePointerToElements { (ptr) -> Void in
			for index in (0..<self.depth).generate() {
				if !str.isEmpty {
					str += ", "
				}
				str += "\(ptr.advancedBy(index).memory)"
			}
		}

        return "(\(str))"
    }

    private mutating func ensureUnique() {
		if !isUniquelyReferencedNonObjC(&self.buffer) {
			self.buffer = self.duplicateBuffer()
		}
    }
	
	private func duplicateBuffer() -> StackBuffer? {
		var dupBuffer : StackBuffer?
		
		if let buffer = self.buffer {
			let stackInfo = buffer.value

			return StackBuffer.create(stackInfo.space, initialValue: { (protoBuf) -> StackInfo in
				protoBuf.withUnsafeMutablePointerToElements { (dstPtr) -> Void in
					buffer.withUnsafeMutablePointerToElements { dstPtr.initializeFrom($0, count: stackInfo.depth) }
				}
				
				return (space: stackInfo.space, depth: stackInfo.depth)
			})
		}
		
		return dupBuffer
	}

	private func reallocBuffer(space: Int) -> StackBuffer {
		return StackBuffer.create(space, initialValue: { (protoBuf) -> StackInfo in
			protoBuf.withUnsafeMutablePointerToElements { (dstPtr) -> Void in
				if let buffer = self.buffer {
					buffer.withUnsafeMutablePointerToElements { dstPtr.moveInitializeFrom($0, count: buffer.value.depth) }
				}
			}
			
			return (space: space, depth: self.depth)
		})
	}
	
	mutating func push(value: T) {
		if self.space == self.depth {
			self.buffer = self.reallocBuffer(max(self.space * 2, 16))
		}
		else {
			self.ensureUnique()
		}
		
		if let buffer = self.buffer {
			let curDepth = self.depth
			
			buffer.withUnsafeMutablePointerToElements { (ptr) -> Void in
				ptr.advancedBy(curDepth).initialize(value)
			}
			buffer.value.depth++
		}
	}
	
    mutating func pop() -> T? {
		var result : T?
		
		if self.depth > 0 {
			let topLoc = self.depth - 1
			
			self.ensureUnique()
			if let buffer = self.buffer {
				result = buffer.withUnsafeMutablePointerToElements { (ptr) -> T in
					var top = ptr.advancedBy(topLoc)
					var value = top.memory

					return value;
				}
				buffer.value.depth--
			}
		}
		
		return result
    }
}

var intStack = Stack<Int>()
intStack.push(4)
intStack.push(8)
intStack.push(15)
isUniquelyReferencedNonObjC(&intStack.buffer)	/*-- TEST reference: true --*/

var intStackCopy = intStack
isUniquelyReferencedNonObjC(&intStack.buffer)	/*-- TEST reference: false --*/
intStackCopy.push(16)
intStackCopy.push(24)
intStackCopy.push(42)

println(intStack)
println(intStackCopy)

var strStack = Stack<String>()
strStack.push("four")
strStack.push("eight")
strStack.push("fifteen")

var strStackCopy = strStack
strStackCopy.push("sixteen")
strStackCopy.push("twenty-four")
strStackCopy.push("forty-two")

println(strStack)
println(strStackCopy)

