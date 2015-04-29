/*: Select Editor -> Show Rendered Markup for rich comments

_Swift Standard Library examples (examples not guaranteed to be useful)_

# split
----

    func split<S : Sliceable, R : BooleanType>(elements: S, maxSplit: Int = default, allowEmptySlices: Bool = default, #isSeparator: @noescape (S.Generator.Element) -> R) -> [S.SubSlice]

Return the result of slicing `elements` into sub-sequences that
don't contain elements satisfying the predicate `isSeparator`.

:param: maxSplit the maximum number of slices to return, minus 1.
If `maxSplit + 1` slices would otherwise be returned, the
algorithm stops splitting and returns a suffix of `elements`

:param: allowEmptySlices if true, an empty slice is produced in
the result for each pair of consecutive 
    
*/
let adamsSays = "They  still  think  digital  watches  are  a  pretty  neat  idea"
var parts = split(adamsSays) { $0 == " " }
println(parts)

parts = split(adamsSays, maxSplit: 5) { $0 == " " }
println(parts)

parts = split(adamsSays, maxSplit: 5, allowEmptySlices: true) { $0 == " " }
println(parts)
