///@param instance
///@param object
///@param [checkDescendants]

var instance = argument[0]
var object = argument[1]
var checkDescendants = (ARG_N == 3) ? argument[2] : false

var match = false

with (instance)
	match = is_object(object, checkDescendants)
	
return match