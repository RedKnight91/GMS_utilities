///@param list

var list = argument0
var listUnique = ds_list_create()

for (var i = 0; i < ds_list_size(list); i++) {
	var item = list[| i]

	var duplicate = (ds_list_find_index(listUnique, item) != -1)
	if (duplicate)
		continue
	
	ds_list_add(listUnique, item)
}

ds_list_copy(list, listUnique)
list_destroy(listUnique)