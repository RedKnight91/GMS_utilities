///@param string
///@param trimLeft
///@param trimRight

var str = argument0
var trimStart = abs(argument1) + 1
var trimEnd = abs(argument2)

var len = string_length(str)
var trimmedLen = len - trimStart - trimEnd + 1

var strTrimmed = string_copy(str, trimStart, trimmedLen)

return strTrimmed