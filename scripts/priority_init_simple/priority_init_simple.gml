///@param value
///@param value
///@param ...

var priority = ds_priority_create()

for (var i = 0; i < ARG_N; i++) {
	var _priority = ARG_N - 1 - i
	ds_priority_add(priority, argument[i], _priority)
}

return priority