///@param instance
///@param execute_destroy_event

var instance		= (ARG_N == 1 ) ? argument[0] : id
var execute_destroy	= (ARG_N == 2) ? argument[1] : true

instance_destroy(instance, execute_destroy)