///@param string
///@param index[base_1]

var str = argument0
var index = argument1
var length = string_length(str)

var substring1 = string_copy(str, 1, (index - 1))
var substring2 = string_copy(str, index, (++length - index))

return [substring1, substring2]