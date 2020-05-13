///@param value
///@param priority
///@param value
///@param priority
///@param ...

var priority = ds_priority_create()

for (var i = 0; i < ARG_N; i++) {
	var value = argument[i++]
	var _priority = argument[i]
	ds_priority_add(priority, value, _priority)
}

return priority