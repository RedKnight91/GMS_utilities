///@param list
///@param defaultValue

var list = argument0
var defaultValue = argument1
var lastItem = defaultValue

if (list_exists(list) && !ds_list_empty(list)) {
	var index = ds_list_size(list) - 1
	lastItem = list[| index]
}

return lastItem