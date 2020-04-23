///@param array
///@param trimLeft
///@param trimRight

var array = argument0
var trimStart = abs(argument1)
var trimEnd = abs(argument2)

var arrayLen = array_length_1d(array)
var trimmedLen = arrayLen - trimStart - trimEnd

var arrayTrimmed = array_create(trimmedLen)
array_copy(arrayTrimmed, 0, array, trimStart, trimmedLen)

return arrayTrimmed