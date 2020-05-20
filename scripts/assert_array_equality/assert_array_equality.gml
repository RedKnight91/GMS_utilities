///@param array1
///@param array2
///@param expected
///@param *message

var array1	 = argument[0]
var array2	 = argument[1]
var expected = argument[2]
var message = (ARG_N > 3) ? argument[3] : ""

var condition = arrays_equal(array1, array2)
var result = (condition == expected)

var error = "Arrays " + __get_equality_message(condition)
assert_with_error_message(result, message, error, "Array:", array1, "Array:", array2)