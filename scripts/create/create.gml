///@desc Creates an instance on a layer with varying sets of arguments
///
///@param *x
///@param *y
///@param *layer
///@param object_index

switch (ARG_N) {
	case 1: return instance_create_layer(0, 0, layer, argument[0])
	case 2: return instance_create_layer(0, 0, argument[0], argument[1])
	case 3: return instance_create_layer(argument[0], argument[1], layer, argument[2])
	case 4: return instance_create_layer(argument[0], argument[1], argument[2], argument[3])
	default:
		show_error("Wrong number of arguments to 'create()' script", true)
}