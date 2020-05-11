///@param index
///@param ds_type
///@param expected

var index = argument0
var ds_type = argument1
var expected = argument2

var condition = ds_type_exists(index, ds_type)
var result = (condition == expected)
assert_with_error_message(result, "ds_type " + __get_existence_message(condition), ds_type)