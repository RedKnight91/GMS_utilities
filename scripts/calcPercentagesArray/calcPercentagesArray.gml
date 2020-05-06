///@param total
///@param [percentages]

var total = argument0
var percentages = argument1
var percentageN = array_length_1d(percentages)
percentages = normalizePercentageArray(percentages)

for (var i = 0; i < percentageN; i++)
	percentages[i] = floor(percentages[i] * total)

return percentages