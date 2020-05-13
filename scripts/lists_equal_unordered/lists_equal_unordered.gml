///@param list1
///@param list2

var list1 = argument0
var list2 = argument1

if (ds_list_size(list1) != ds_list_size(list2))
	return false

var _list1 = list_create_copy(list1)
var _list2 = list_create_copy(list2)

ds_list_sort(_list1, true)
ds_list_sort(_list2, true)

var equal = lists_equal(_list1, _list2)

ds_list_destroy(_list1)
ds_list_destroy(_list2)

return equal