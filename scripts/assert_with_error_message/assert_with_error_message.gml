///@param boolean
///@param message
///@param error
///@param *input1
///@param *input2
///@param *...

var value = argument[0]

if (!is_boolean(value)) {
	var errorMessage = string_fill("Error at %%:\n    Assertion failed, %% is not a boolean\n\n", "%%", get_callstack_top(), string(value))
	show_error(errorMessage, false)
	exit
}

if (!value) {
	var message = string(argument[1])
	var error = string(argument[2])
	var errorMessage = string_fill("Error at %%:\n    %% \n\n\n    %% \n    Tested values: ", "%%", get_callstack_top(), message, error)

	ARG_MAKE_ARRAY = argument[ARG_INDEX]
	var inputs = array_trim(ARG_ARRAY, 3, 0)
	errorMessage = concatenate_array_to(errorMessage, inputs) + "\n\n"

	show_error(errorMessage, false)
}