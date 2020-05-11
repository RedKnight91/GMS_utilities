///@param int

var int = argument0

var condition = is_int32(int) || is_int64(int)
assert_with_error_message(condition, "Not an int", int)