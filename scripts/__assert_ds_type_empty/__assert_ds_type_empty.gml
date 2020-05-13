///@param index
///@param ds_type
///@param expected
///@param emptyValue

var index = argument[0]
var ds_type = argument[1]
var expected = argument[2]
var emptyValue = (ARG_N == 4) ? argument[3] : 0 //Only used for ds_grid

__assert_ds_type_exists(index, ds_type, true)

var condition = ds_type_empty(index, ds_type, emptyValue)
var result = (condition == expected)
assert_with_error_message(result, ds_type_name(ds_type) + " " + __get_emptiness_message(condition), "Index: ", index)