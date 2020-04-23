/// @func		sin_wave(amplitude, period, phase, half)
/// @desc		Produces a value oscillating in a sine-wave between amplitude and -amplitude (or between 0 and amplitude).
///				Oscillation speed is set by period, phase determines the starting point.
///
/// @param amplitude	[n]			Maximum wave value
/// @param period		[Seconds]	Time to reach a full wave (either a full positive/negative one, or just one if half is true)
/// @param phase		[Seconds]	Point of the period sine-wave starts from
/// @param half			[bool]		If half is true, the value will range [0 - amplitude], otherwise it will range [-amplitude, amplitude]
 
var amplitude	= argument0
var period		= argument1
var phase		= argument2
var half		= argument3

//Time in seconds
var time = (current_time / 1000) + phase

if (half) {
	var pos = (pi / period) * time			//Time hits period every half circle
	var height = abs(sin(pos))
}
else {
	var pos = ((2 * pi) / period) * time	//Position in a circle [0 to 6.14]
	var height = sin(pos)					//Sin of the position in the circle (0 ... 1)
}

return height * amplitude