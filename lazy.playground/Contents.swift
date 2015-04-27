// ---------------------------------------------------------------------------------------------------------------------
// Swift Standard Library examples (examples not guaranteed to be useful)
// ---------------------------------------------------------------------------------------------------------------------

/// Augment `s` with lazy methods such as `map`, `filter`, etc.

// ---------------------------------------------------------------------------------------------------------------------
// func lazy<S : CollectionType where S.Index : RandomAccessIndexType>(s: S) -> LazyRandomAccessCollection<S>
// ---------------------------------------------------------------------------------------------------------------------

/// Augment `s` with lazy methods such as `map`, `filter`, etc.

// ---------------------------------------------------------------------------------------------------------------------
// func lazy<S : SequenceType>(s: S) -> LazySequence<S>
// ---------------------------------------------------------------------------------------------------------------------

class FibonacciSeq : SequenceType {
	func generate() -> GeneratorOf<Int> {
		var index = 0, current = 0, next = 1
		
		return GeneratorOf<Int> {
			var ret = current
			current = next
			next = next + ret
			index++
			
			return ret
		}
	}
}

var fibSeq = FibonacciSeq()
// let eagerSeqFilter = filter(fibSeq) { $0 % 2 == 0 }		// this will blow up
let lazySeqFilter = lazy(fibSeq).filter { $0 % 2 == 0 }		// this will not
var fibSeqGen = lazySeqFilter.generate()

for _ in 1..<5 {
	println(fibSeqGen.next())
}


/// Augment `s` with lazy methods such as `map`, `filter`, etc.

// ---------------------------------------------------------------------------------------------------------------------
// func lazy<S : CollectionType where S.Index : ForwardIndexType>(s: S) -> LazyForwardCollection<S>
// ---------------------------------------------------------------------------------------------------------------------

class FibonacciCol : CollectionType {
	var results = [Int : Int]()

	var startIndex : Int {
		return 0
	}
	
	var endIndex : Int {
		return Int.max
	}
	
	subscript (index: Int) -> Int {
		return self.results[index] ?? self.performCalc(index)
	}

	func generate() -> GeneratorOf<Int> {
		var index = 0
		
		return GeneratorOf<Int> {
			return self[index++]
		}
	}

	private func performCalc(index: Int) -> Int {
		var result : Int
		
		switch index {
			case 0: result = 0
			case 1: result = 1
			default:
				result = self[index - 1] + self[index - 2]
		}
		
		self.results[index] = result
		
		return result
	}
}

var fibCol = FibonacciCol()
//	let eagerFilter = filter(fibCol) { $0 % 2 == 0 }		// this will blow up
let lazyColFilter = lazy(fibCol).filter { $0 % 2 == 0 }		// this will not
var fibColGen = lazyColFilter.generate()

for _ in 1..<5 {
	println(fibColGen.next())
}

/// Augment `s` with lazy methods such as `map`, `filter`, etc.

// ---------------------------------------------------------------------------------------------------------------------
// func lazy<S : CollectionType where S.Index : BidirectionalIndexType>(s: S) -> LazyBidirectionalCollection<S>
// ---------------------------------------------------------------------------------------------------------------------

