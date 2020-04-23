///@desc Returns a ds_list containing the indices of a given ds_list, scrambled (for randomized parsing)
///@param list
var list = argument0
var indexList = ds_list_create()

for (var i = 0; i < ds_list_size(list); i++)
	indexList[| i] = i

ds_list_shuffle(indexList)

return indexList