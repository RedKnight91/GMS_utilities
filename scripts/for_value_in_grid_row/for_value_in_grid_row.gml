///@desc	Processes each entry of a ds_grid with a given script
///@param	ds_grid
///@param	row
///@param	processorScript
///@param	*arg
///@param	*arg
///@param	*...

var grid = argument[0]
var row = argument[1]
var processor = script_get_index(argument[2])

if (!grid_exists(grid))
	exit

ARG_MAKE_ARRAY = argument[ARG_INDEX]
var args = array_trim(ARG_ARRAY, 2, 0)
//Leaving one extra param at array start to replace later

for (var col = 0; grid_exists(grid) && col < ds_grid_width(grid); col++) {
	var value = grid[# col, row]
	args[0] = value
	
	execute_arg_array(processor, args)
}