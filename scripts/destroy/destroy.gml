///@param instance
///@param execute_destroy_event

var instance		= (argument_count == 1 ) ? argument[0] : id
var execute_destroy	= (argument_count == 2) ? argument[1] : true

instance_destroy(instance, execute_destroy)