///@param string
///@param paddingChar
///@param finalLength

var str = argument0
var pad = argument1
var finalLength = argument2

var amount = max(0, finalLength - string_length(str)) / 2
str = string_repeat(pad, ceil(amount)) + str + string_repeat(pad, floor(amount))

return str