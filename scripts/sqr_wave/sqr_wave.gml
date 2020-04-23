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

var aboveThreshold = (pos >= 0.5)

if (half)
	var height = aboveThreshold
else
	var height = aboveThreshold - !aboveThreshold

return height * amplitude