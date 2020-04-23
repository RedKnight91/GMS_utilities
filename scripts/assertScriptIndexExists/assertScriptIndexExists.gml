///@param scriptIndex

var script = argument0

var condition = is_real(script) && script_exists(script)
assertWithErrorMessage(condition, "Script index does not exist", script)