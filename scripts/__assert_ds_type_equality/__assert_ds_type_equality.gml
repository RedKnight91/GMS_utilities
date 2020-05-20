///@param index1
///@param index2
///@param ds_type
///@param expected
///@param *message

var index1	 = argument[0]
var index2	 = argument[1]
var ds_type	 = argument[2]
var expected = argument[3]
var message = (ARG_N > 4) ? argument[4] : ""

var condition = ds_type_equals(index1, index2, ds_type)
var result = (condition == expected)

var error = ds_type_name(ds_type) + "s " + __get_equality_message(condition)
assert_with_error_message(result, message, error, "DS index:", index1, "DS index:", index2)