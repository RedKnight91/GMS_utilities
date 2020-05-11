///@param boolean

var value = argument0

if (!is_boolean(value)) {
	var errorMessage = string_fill("Error at %%:\n    Assertion failed, %% is not a boolean\n\n", "%%", get_call_stack_origin(), string(value))
	show_error(errorMessage, true)
}
else if (!value) {
	var errorMessage = string_fill("Error at %%:\n    Assertion failed, %% is false\n\n", "%%", get_call_stack_origin(), string(value))
	show_error(errorMessage, true)
}