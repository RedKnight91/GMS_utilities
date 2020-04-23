///@param instance
///@param varName

var instance = argument0
var varName = argument1

var exists = is_string(varName) && variable_instance_exists(instance, varName)
return exists