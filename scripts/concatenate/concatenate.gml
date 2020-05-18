///@func	concatenate()
///@desc	Concatenates any number of input strings

///@param string
///@param string
///@param ...

var str = ""
var i = 0

repeat(ARG_N - 1)
	str += string(argument[i++]) + " "

if (ARG_N > 0)
	str += string(argument[i])

return str