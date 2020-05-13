///@param boolean

var value = argument0

if (!is_boolean(value)) {
	var errorMessage = string_fill("Error at %%:\n    Assertion failed, %% is not a boolean\n\n", "%%", get_callstack_top(), string(value))
	show_error(errorMessage, false)
}
else if (!value) {
	var errorMessage = string_fill("Error at %%:\n    Assertion failed, %% is false\n\n", "%%", get_callstack_top(), string(value))
	show_error(errorMessage, false)
}