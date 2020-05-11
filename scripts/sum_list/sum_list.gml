///@param numList

var list = argument0
var numN = ds_list_size(list)
var total = 0

for (var i = 0; i < numN; i++)
	total += list[| i]

return total