/// @param amplitude
/// @param period	
/// @param phase	
/// @param half		

var amplitude	= argument0
var period		= argument1
var phase		= argument2
var half		= argument3

//Time in seconds
var time = (current_time / 1000) + phase
var pos = (time % period)

if (half)
	var height = pos
else
	var height = 2 * pos - 1

return height * amplitude