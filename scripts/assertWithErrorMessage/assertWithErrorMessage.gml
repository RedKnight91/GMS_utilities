///@param boolean
///@param message
///@param [input1]
///@param [input2]
///@param [...]

var value = argument[0]

if (!is_bool(value) || !value) {
	var customMessage = string(argument[1])
	var errorMessage = string_fill("Error: %% \n    Tested values: ", "%%", customMessage)

	ARGUMENT_MAKE_ARRAY = argument[ARGUMENT_INDEX]
	var inputs = array_trim(ARGUMENT_ARRAY, 2, 0)
	errorMessage = concatenateArrayToStr(errorMessage, inputs)

	show_error(errorMessage, true)
}