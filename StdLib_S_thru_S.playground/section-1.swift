// ---------------------------------------------------------------
// ---------- An assortment of test values to work with ----------
// ---------------------------------------------------------------

class StdClass {
	var intVar = 1
	var stringVar = String("string")
	var dictVal = [ "foo" : 42 ]
}

struct StdStruct {
	var intVar : Int
	var stringVar : String
	var dictVal : [ String : Int ]
}

var stdStruct = StdStruct(intVar: 1, stringVar: "string", dictVal: [ "foo" : 42 ])
var stdClass = StdClass()
var stdStrList = [ "a", "b", "c", "d", "e" ]
var stdString = "abcde"
let stdInt8 = Int8(8)
let stdInt16 = Int16(16)
let stdInt32 = Int32(32)

// ---------------------------------------------------------------
// ---------- Some additional items for this playground ----------
// ---------------------------------------------------------------

var contiguousNumbers = ContiguousArray(arrayLiteral: 42, 16, 15, 4, 8, 24)
var numberList = [42, 16, 15, 4, 8, 24]
var altStrList = [ "a", "b", "A", "B", "c", "d", "C", "D" ]

// ---------------------------------------------------------------
// ---------------------------------------------------------------
// ---------------------------------------------------------------

// func sizeof<T>(_: T.Type) -> Int

sizeof(Int8.self)
sizeof(Int16.self)
sizeof(Int32.self)
sizeof(StdClass.self)
sizeof(StdStruct.self)

// func sizeofValue<T>(_: T) -> Int

sizeofValue(stdInt8)
sizeofValue(stdInt16)
sizeofValue(stdInt32)
sizeofValue(stdClass)
sizeofValue(stdStruct)

// func sort<T : Comparable>(inout array: ContiguousArray<T>)

var contiguousNumbersCopy = contiguousNumbers
sort(&contiguousNumbersCopy)
contiguousNumbersCopy

// func sort<T : Comparable>(inout array: [T])

var numberListCopy = numberList
sort(&numberListCopy)
numberListCopy

// func sort<C : MutableCollectionType where C.Index : RandomAccessIndexType, C.Generator.Element : Comparable>(inout collection: C)

var altStrListCopy = altStrList
sort(&altStrListCopy)
altStrListCopy

//func sort<T>(inout array: ContiguousArray<T>, isOrderedBefore: (T, T) -> Bool)

contiguousNumbersCopy = contiguousNumbers
sort(&contiguousNumbersCopy) { return $0 < $1 }
contiguousNumbersCopy

//func sort<T>(inout array: [T], isOrderedBefore: (T, T) -> Bool)

numberListCopy = numberList
sort(&numberListCopy) { return $0 < $1 }
numberListCopy


// func sort<C : MutableCollectionType where C.Index : RandomAccessIndexType>(inout collection: C, isOrderedBefore: (C.Generator.Element, C.Generator.Element) -> Bool)

altStrListCopy = altStrList
sort(&altStrListCopy) { return $0 < $1 }
altStrListCopy

//func sorted<C : SequenceType where C.Generator.Element : Comparable>(source: C) -> [C.Generator.Element]

sorted(numberList)
numberList

// func sorted<C : SequenceType>(source: C, isOrderedBefore: (C.Generator.Element, C.Generator.Element) -> Bool) -> [C.Generator.Element]

let sortedResult = sorted(numberList) { return $0 < $1 }
sortedResult
numberList

//func splice<C : RangeReplaceableCollectionType, S : CollectionType where S.Generator.Element == S.Generator.Element>(inout x: C, newElements: S, atIndex i: C.Index)

var stdStringCopy = stdString
splice(&stdStringCopy, " hello ", atIndex: advance(stdStringCopy.startIndex, 2))

//func split<S : Sliceable, R : BooleanType>(elements: S, maxSplit: Int = default, allowEmptySlices: Bool = default, #isSeparator: @noescape (S.Generator.Element) -> R) -> [S.SubSlice]
//func split<S : Sliceable, R : BooleanType>(elements: S, isSeparator: (S.Generator.Element) -> R, maxSplit: Int = default, allowEmptySlices: Bool = default) -> [S.SubSlice]

let splitText = "These  are  the  times  that  try  men's souls"
var parts = split(splitText) { $0 == " " }
parts

//parts = split(splitText, { $0 == " " }, maxSplit: 5)
//parts
//
//parts = split(splitText, { $0 == " " }, maxSplit: 5, allowEmptySlices: true)
//parts


//
///// Return true iff `s` begins with elements equivalent to those of
///// `prefix`, using `isEquivalent` as the equivalence test.  Requires:
///// `isEquivalent` is an `equivalence relation
///// <http://en.wikipedia.org/wiki/Equivalence_relation>`_
//func startsWith<S0 : SequenceType, S1 : SequenceType where S0.Generator.Element == S0.Generator.Element>(s: S0, prefix: S1, isEquivalent: (S0.Generator.Element, S0.Generator.Element) -> Bool) -> Bool
//
///// Return true iff the the initial elements of `s` are equal to `prefix`.
//func startsWith<S0 : SequenceType, S1 : SequenceType where S0.Generator.Element == S0.Generator.Element, S0.Generator.Element : Equatable>(s: S0, prefix: S1) -> Bool
//
//
///// Return the sequence of values (`start`, `start + stride`, `start +
///// stride + stride`, ... *last*) where *last* is the last value in
///// the progression less than or equal to `end`.
/////
///// .. Note:: There is no guarantee that `end` is an element of the
/////      sequence.
//func stride<T : Strideable>(from start: T, through end: T, by stride: T.Stride) -> StrideThrough<T>
//
//
///// Return the sequence of values (`start`, `start + stride`, `start +
///// stride + stride`, ... *last*) where *last* is the last value in
///// the progression that is less than `end`.
//func stride<T : Strideable>(from start: T, to end: T, by stride: T.Stride) -> StrideTo<T>
//
//
///// Returns the least possible interval between distinct instances of
///// `T` in memory.  The result is always positive.
//func strideof<T>(_: T.Type) -> Int
//
//
///// Returns the least possible interval between distinct instances of
///// `T` in memory.  The result is always positive.
//func strideofValue<T>(_: T) -> Int
//
//
///// Return a slice, up to `maxLength` in length, containing the
///// final elements of `s`.
/////
///// If `maxLength` exceeds `countElements(s)`, the result contains all
///// the elements of `s`.
///// 
///// Complexity: O(1)+K when `S.Index` conforms to
///// `RandomAccessIndexType` and O(N)+K otherwise, where K is the cost
///// of slicing `s`.
//func suffix<S : Sliceable where S.Index : BidirectionalIndexType>(s: S, maxLength: Int) -> S.SubSlice
//
//
///// Exchange the values of `a` and `b`
//func swap<T>(inout a: T, inout b: T)
