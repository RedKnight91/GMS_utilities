///@param array1
///@param array2
///@param expected

var array1	 = argument0
var array2	 = argument1
var expected = argument2

var condition = arrays_equal(array1, array2)
var result = (condition == expected)

var error = "Arrays " + __get_equality_message(condition)
assert_with_error_message(result, error, "Array:", array1, "Array:", array2)