/// @description choose_weighted((ret,weight)[1-n],[def_ret])
/// @function choose_weighted
/// @param [val1, weight1, val2, weight2,...]

var args = argument0
var argsN = array_length_1d(args)

if (argsN % 2 != 0)
	show_error("Error: Odd number of arguments provided.", true)

var chanceSum = 0
for (var i = 1; i < argsN; i += 2)
    chanceSum += args[i]


var rand = irandom_range(1, chanceSum)

for (var i = 1; i < argsN; i += 2) {
	var item = args[i - 1]
	var chance = args[i]
	
    rand -= chance
	
    if (rand <= 0)
		return item
}


//Return the first value (in case something goes wrong)
return args[0]