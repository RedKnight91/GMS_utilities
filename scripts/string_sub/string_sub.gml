///@param string
///@param indexStart[base_1]
///@param indexEnd[base_1]

var str = argument0
var first = argument1
var last = argument2

var substring = string_copy(str, first, (++last - first))

return substring