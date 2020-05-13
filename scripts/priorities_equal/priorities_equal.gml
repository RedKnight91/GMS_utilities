///@param priority1
///@param priority2

var priority1 = argument0
var priority2 = argument1

var size1 = ds_priority_size(priority1)
var size2 = ds_priority_size(priority2)

if (size1 != size2)
	return false

var priorityMap1 = priority_to_map(priority1)
var priorityMap2 = priority_to_map(priority2)

var keys1 = map_get_key_list(priorityMap1)
var keys2 = map_get_key_list(priorityMap2)

ds_list_sort(keys1, true)
ds_list_sort(keys2, true)

var equal = lists_equal(keys1, keys2)

if (equal) {
	var keyN = ds_list_size(keys1)
	for (var i = 0; i < keyN; i++) {
		var key = keys1[| i]
		var values1 = priorityMap1[? key]
		var values2 = priorityMap2[? key]
	
		if (!lists_equal_unordered(values1, values2)) {
			equal = false
			break
		}
	}
}

//Cleanup
ds_list_destroy(keys1)
ds_list_destroy(keys2)
ds_map_destroy(priorityMap1)
ds_map_destroy(priorityMap2)

return equal