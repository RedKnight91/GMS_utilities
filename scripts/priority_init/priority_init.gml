///@param value
///@param value
///@param ...

var priority = ds_priority_create()

for (var i = 0; i < argument_count; i++)
	ds_priority_add(priority, argument[i++], argument[i])

return priority