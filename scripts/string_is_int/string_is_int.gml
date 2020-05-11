///@param str

var str = argument0

assert_string(str)

//Check if string is signed integer
var digitN		= string_length(string_digits(str))
var hasDigits	= (digitN > 0)

var headChar	= string_char_at(str, 1)
var hasMinus	= (headChar == "-")

var hasChars	= (digitN < (string_length(str) - hasMinus))

var isInt = (hasDigits && !hasChars)

return isInt