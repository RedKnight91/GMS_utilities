///@desc	Processes each entry of a ds_grid with a given script
///@param	ds_grid
///@param	processorScript
///@param	*arg
///@param	*arg
///@param	*...

var grid = argument[0]
var processor = script_get_index(argument[1])

if (!grid_exists(grid))
	exit

ARG_MAKE_ARRAY = argument[ARG_INDEX]
var args = ARG_ARRAY
//Leaving two extra params at array start to replace later

for (var col = 0; grid_exists(grid) && col < ds_grid_width(grid); col++) {
	for (var row = 0; grid_exists(grid) && row < ds_grid_height(grid); row++) {
		args[0] = col
		args[1] = row
	
		execute_arg_array(processor, args)
	}
}