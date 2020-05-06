///@param numList

var numList = argument0
var numN = ds_list_size(numList)
var total = 0

for (var i = 0; i < numN; i++)
	total += numList[| i]

return total