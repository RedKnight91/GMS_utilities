///@param size

var size = argument0
var priority = ds_priority_create()

for (var i = 0; i < size; ++i)
	ds_priority_add(priority, letter_random(), irandom(10))

return priority