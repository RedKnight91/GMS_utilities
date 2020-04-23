///@param boolean

var value = argument0
var errorMessage = string_fill("Error: Assertion failed, %% is not boolean or is false", "%%", string(value))

if (!is_bool(value) || !value)
	show_error(errorMessage, true)