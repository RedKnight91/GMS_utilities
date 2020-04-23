/// @func		tri_wave(amplitude, period, phase, half)
/// @desc		Produces a value oscillating in a triangle wave between amplitude and -amplitude (or between 0 and amplitude).
///				Oscillation speed is set by period, phase determines the starting point.
///
/// @param amplitude	[n]			Maximum wave value
/// @param period		[Seconds]	Time to reach a full wave (either a full positive/negative one, or just one if half is true)
/// @param phase		[Seconds]	Point of the period sine-wave starts from
/// @param half			[bool]		Value will only go from 0 to the positive maximum and back
 
var amplitude	= argument0
var period		= argument1
var phase		= argument2
var half		= argument3

//Time in seconds
var time = (current_time / 1000) + phase

if (half) {
	var pos = time
	var height = abs(period - abs((pos % (2 * period)) - period)) / period
}
else {
	var pos = time + (period / 2)
	var height = (((period - abs(pos % (2 * period) - period)) / period) - 0.5) * 2
}

return height * amplitude