///@func	ds_count(ds_type, ds_type, ...)
///@desc	Counts the number of data structures of a given type and prints them to the Output console.
///			You can specify more types at once
///			Possible types: ds_type_map, ds_type_list, ds_type_stack, ds_type_queue, ds_type_grid, ds_type_priority
///
///@param ds_type1,
///@param ds_type2,
///@param ...

var dsNames = ["none", "ds_maps", "ds_lists", "ds_stacks", "ds_queues", "ds_grids", "ds_priorities"]
var log = "Found: "

//Get all required ds types to look for
for (var i = 0; i < argument_count; i++) {
	var dsType = argument[i]
	assert_ds_type(dsType)

	var dsName = dsNames[dsType]
	var count = ds_count(dsType)

	log += string_fill("%% %%, ", "%%", string(count), dsName)
}

print(log)