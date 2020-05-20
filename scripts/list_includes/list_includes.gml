///@param list
///@param value

var list		= argument0
var searchValue	= argument1

assert_list_exists(list, true, "Searching a non-existent list")

var index = ds_list_find_index(list, searchValue)
var included = (index != -1)

return included