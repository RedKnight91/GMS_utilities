///@param str

var str = argument0

assert_string(str)

//Check if string is signed
var digitN		= string_length(string_digits(str))
var hasDigits	= (digitN > 0)

var headChar	= string_char_at(str, 1)
var hasMinus	= (headChar == "-")
var points		= string_count(".", str)
var hasPoint	= (points >= 1)

var hasChars	= (digitN < (string_length(str) - hasMinus - hasPoint))

var isInt = (hasDigits && !hasChars)

return isInt