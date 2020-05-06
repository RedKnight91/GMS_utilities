///@param scriptName
///@param expected

var script = argument0
var expected = argument1

var condition = is_string(script) && script_exists(script)
var result = (condition == expected)
assertWithErrorMessage(result, "Script name " + getExistenceMessage(condition), script)