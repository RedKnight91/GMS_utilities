///@param val1
///@param val2
///@param step

var start = argument0
var _end = argument1
var step = abs(argument2)
 
var result = start

if (start < _end)
	result = min(start + step, _end)
else
	result = max(start - step, _end)

return result