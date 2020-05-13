///@param array
///@param pos
///@param value

var array = argument0
var pos = argument1
var value = argument2

var length = array_length_1d(array)
for (var i = length; i > pos; --i)
    array[@ i] = array[i - 1]
	
array[@ pos] = value

return array