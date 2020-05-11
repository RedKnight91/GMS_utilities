///@param uuidArray
///@param segmentStart
///@param segmentLngth

var uuidArray = argument0
var start = argument1
var length = argument2

var segment = ""

repeat (length)
	segment += uuidArray[start++]

return segment