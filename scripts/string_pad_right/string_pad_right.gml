///@param string
///@param paddingChar
///@param finalLength

var str = argument0
var pad = argument1
var finalLength = argument2

var amount = max(0, finalLength - string_length(str))
str += string_repeat(pad, amount)

return str