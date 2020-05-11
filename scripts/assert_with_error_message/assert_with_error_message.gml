///@param boolean
///@param message
///@param [input1]
///@param [input2]
///@param [...]

var value = argument[0]

if (!is_boolean(value)) {
	var errorMessage = string_fill("Error at %%:\n    Assertion failed, %% is not a boolean\n\n", "%%", get_call_stack_origin(), string(value))
	show_error(errorMessage, true)
}
else if (!value) {
	var customMessage = string(argument[1])
	var errorMessage = string_fill("Error at %%:\n    %% \n    Tested values: ", "%%", get_call_stack_origin(), customMessage)

	ARGUMENT_MAKE_ARRAY = argument[ARGUMENT_INDEX]
	var inputs = array_trim(ARGUMENT_ARRAY, 2, 0)
	errorMessage = concatenate_array_to(errorMessage, inputs) + "\n\n"

	show_error(errorMessage, true)
}