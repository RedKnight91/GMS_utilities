///@param scriptIndex
///@param expected

var script = argument0
var expected = argument1

var condition = is_real(script) && script_exists(script)
var result = (condition == expected)
assertWithErrorMessage(result, "Script index " + getExistenceMessage(condition), script)