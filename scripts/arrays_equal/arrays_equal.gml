///@param array1
///@param array2

var array1 = argument0
var array2 = argument1

var size1 = array_length_1d(array1)
var size2 = array_length_1d(array2)

if (size1 != size2)
	return false

var equal = true

for (var i = 0; i < size1; i++) {
	if (array1[i] != array2[i]) {
		equal = false
		break
	}
}

return equal