///@func	print()
///@desc	Concatenates and prints in the output panel any number of input strings

///@param string
///@param string
///@param ...

var str = ""
var i = 0

repeat(ARG_N - 1)
	str += string(argument[i++]) + " "

str += string(argument[i])

show_debug_message(str)