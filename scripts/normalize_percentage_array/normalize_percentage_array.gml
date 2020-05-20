///@param [percentages]

var percentages = argument0
var percentageN = array_length_1d(percentages)
var total = sum_array(percentages)

for (var i = 0; i < percentageN; i++)
	percentages[i] = percentages[i] / total

return percentages