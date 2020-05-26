///@param percentageList

var percentages = argument0
var percentageN = ds_list_size(percentages)
var total = sum_list(percentages)

for (var i = 0; i < percentageN; i++)
	percentages[| i] /= total

return percentages