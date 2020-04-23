///@param scriptName

var script = argument0

var condition = is_string(script) && script_exists(script)
assertWithErrorMessage(condition, "Script name does not exist", script)