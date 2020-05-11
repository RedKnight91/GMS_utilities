///@func	concatenate()
///@desc	Concatenates any number of strings from an array to an initial string

///@param string
///@param [strings]

var str = argument0
var strings = argument1
var stringN = array_length_1d(strings)
var i = 0

repeat(stringN)
	str += " " + string(strings[i++])

return str