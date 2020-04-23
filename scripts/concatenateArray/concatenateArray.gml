///@func	concatenate()
///@desc	Concatenates any number of strings from an array

///@param [strings]

var strings = argument0
var stringN = array_length_1d(strings)
var str = ""
var i = 0

repeat(stringN - 1)
	str += string(strings[i++]) + " "
	
str += string(strings[i])

return str