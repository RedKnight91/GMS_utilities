///@param keyArray
///@param valueArray
///@param map

var keyArray = argument0
var valueArray = argument1
var map = argument2

var keyN = array_length_1d(keyArray)

for (var i = 0; i < keyN; i++) {
	var key = keyArray[i]
	var value = valueArray[i]
	
	map[? key] = value
}

return map