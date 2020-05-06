///@param variable
///@param expected

var variable = argument0
var expected = argument1

var condition = global_variable_exists(variable)
var result = (condition == expected)
assertWithErrorMessage(result, "Global Variable " + getExistenceMessage(condition), variable)