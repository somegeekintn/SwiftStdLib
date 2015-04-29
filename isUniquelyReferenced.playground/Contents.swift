/*: Select Editor -> Show Rendered Markup for rich comments

_Swift Standard Library examples (examples not guaranteed to be useful)_

# isUniquelyReferenced
----

    func isUniquelyReferenced<T : NonObjectiveCBase>(inout object: T) -> Bool

Returns `true` iff `object` is a non-`@objc` class instance with a single
strong reference.

* Does *not* modify `object`; the use of `inout` is an
  implementation artifact.
* Weak references do not affect the result of this function.
 
Useful for implementing the copy-on-write optimization for the
deep storage of value types::

    mutating func modifyMe(arg: X) {
      if isUniquelyReferenced(&myStorage) {
        myStorage.modifyInPlace(arg)
      }
      else {
        myStorage = myStorage.createModified(arg)
      }
    }

This function is safe to use for `mutating` functions in
multithreaded code because a false positive would imply that there
is already a user-level data race on the value being mutated.

----

See `ensureUnique` for `isUniquelyReferenced` usage

Hat tip to Mike Ash for inspiration: [Friday Q&A 2015-04-17: Let's Build Swift.Array](https://www.mikeash.com/pyblog/friday-qa-2015-04-17-lets-build-swiftarray.html)

*/
struct Stack<T> : Printable {
	typealias StackInfo = (space: Int, depth: Int)
	typealias StackBuffer = ManagedBuffer<StackInfo,T>
	private var buffer : StackBuffer
	
    var depth: Int {
        return self.buffer.value.depth
    }

    var description: String {
        var str = ""
		self.buffer.withUnsafeMutablePointerToElements { (ptr) -> Void in
			for index in (0..<self.depth).generate() {
				if !str.isEmpty {
					str += ", "
				}
				str += "\(ptr.advancedBy(index).memory)"
			}
		}

        return "(\(str))"
    }

	init() {
		self.buffer = StackBuffer.create(0, initialValue: { (protoBuf) -> StackInfo in return (space: 0, depth: 0) })
	}
	
    private mutating func ensureUnique() {
		if !isUniquelyReferenced(&self.buffer) {
			self.buffer = self.duplicateBuffer()
		}
    }
	
	private func duplicateBuffer() -> StackBuffer {
		let stackInfo = self.buffer.value

		return StackBuffer.create(stackInfo.space, initialValue: { (protoBuf) -> StackInfo in
			protoBuf.withUnsafeMutablePointerToElements { (dstPtr) -> Void in
				self.buffer.withUnsafeMutablePointerToElements { dstPtr.initializeFrom($0, count: stackInfo.depth) }
			}
			
			return (space: stackInfo.space, depth: stackInfo.depth)
		})
	}

	private func reallocBuffer(space: Int) -> StackBuffer {
		let stackInfo = self.buffer.value

		return StackBuffer.create(space, initialValue: { (protoBuf) -> StackInfo in
			protoBuf.withUnsafeMutablePointerToElements { (dstPtr) -> Void in
				self.buffer.withUnsafeMutablePointerToElements { dstPtr.moveInitializeFrom($0, count: stackInfo.depth) }
			}
			
			return (space: space, depth: stackInfo.depth)
		})
	}
	
	mutating func push(value: T) {
		let stackInfo = self.buffer.value

		if stackInfo.space == stackInfo.depth {
			self.buffer = self.reallocBuffer(max(stackInfo.space * 2, 16))
		}
		else {
			self.ensureUnique()
		}
		
		self.buffer.withUnsafeMutablePointerToElements { (ptr) -> Void in
			ptr.advancedBy(stackInfo.depth).initialize(value)
		}
		self.buffer.value.depth++
	}
	
    mutating func pop() -> T? {
		var result : T?
		
		if self.depth > 0 {
			let topLoc = self.depth - 1
			
			self.ensureUnique()
			result = self.buffer.withUnsafeMutablePointerToElements { (ptr) -> T in
				var top = ptr.advancedBy(topLoc)
				var value = top.memory

				return value;
			}
			self.buffer.value.depth--
		}
		
		return result
    }
}

var intStack = Stack<Int>()
intStack.push(4)
intStack.push(8)
intStack.push(15)
isUniquelyReferenced(&intStack.buffer)	/*-- TEST reference: true --*/

var intStackCopy = intStack
isUniquelyReferenced(&intStack.buffer)	/*-- TEST reference: false --*/
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

