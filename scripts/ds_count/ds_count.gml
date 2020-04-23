///@func	ds_count(ds_type, ds_type, ...)
///@desc	Counts the number of data structures of a given type and prints them to the Output console.
///			You can specify more types at once
///			Possible types: ds_type_map, ds_type_list, ds_type_stack, ds_type_queue, ds_type_grid, ds_type_priority
///
///@param ds_type1,
///@param ds_type2,
///@param ...

var _names = ["none", "ds_maps", "ds_lists", "ds_stacks", "ds_queues", "ds_grids", "ds_priorities"]
var _type, _i, _j, _count, _limit = 500, _result_str = "Found "

//Get all required ds types to look for
for (_i = 0; _i < argument_count; _i++)
{
	_type = argument[_i]
	_count = 0

	//Iterate indices looking for ds (carry on research when a ds is found)
	for (var _j = 0; _j < _count + _limit; _j++)
		_count += ds_exists(_j, _type)

	_result_str += string(_names[_type]) + ": " + string(_count) + ", "
}

show_debug_message(_result_str)