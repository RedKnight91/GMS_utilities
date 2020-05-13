///@param list1
///@param list2

var list1 = argument0
var list2 = argument1

var size1 = ds_list_size(list1)
var size2 = ds_list_size(list2)

if (size1 != size2)
	return false
	
var equal = true

for (var i = 0; i < size1; i++) {
	if (list1[| i] != list2[| i]) {
		equal = false
		break
	}
}

return equal