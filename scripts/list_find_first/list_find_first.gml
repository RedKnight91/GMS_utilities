///@param list
///@param defaultValue

var list = argument0
var defaultValue = argument1
var firstItem = defaultValue

if (list_exists(list) && !ds_list_empty(list))
	firstItem = list[| 0]

return firstItem