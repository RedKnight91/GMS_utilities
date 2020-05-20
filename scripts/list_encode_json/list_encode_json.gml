var list = argument0
var json = ""

assert_list_exists(list, true, "Trying to encode a non-existent list")

var tempMap = ds_map_create()
ds_map_add_list(tempMap, "default", list)
	
json = json_encode(tempMap)
json = string_copy(json, 13, string_length(json) - 14)	//JSON without the '{ "default":' and final '}' parts
	
ds_map_delete(tempMap, "default")
ds_map_destroy(tempMap)

return json