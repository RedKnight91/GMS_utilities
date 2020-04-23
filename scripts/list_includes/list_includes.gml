///@param list
///@param value

var list = argument0
var searchValue = argument1

if (!list_exists(list))
	show_error("Error: Searching a non-existent list. List argument: " + string(list), true)

var index = ds_list_find_index(list, searchValue)
var included = (index != -1)

return included