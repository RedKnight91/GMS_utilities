///@param index1
///@param index2
///@param ds_type
///@param expected

var index1	 = argument0
var index2	 = argument1
var ds_type	 = argument2
var expected = argument3

var condition = ds_type_equals(index1, index2, ds_type)
var result = (condition == expected)

var error = ds_type_name(ds_type) + "s " + __get_equality_message(condition)
assert_with_error_message(result, error, "DS index:", index1, "DS index:", index2)