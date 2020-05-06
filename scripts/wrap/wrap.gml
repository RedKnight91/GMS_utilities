///@func	wrap()
///@desc	Returns the value wrapped.  If it is above or below the threshold it will wrap around
///
///@param value
///@param min
///@param max

var value	= argument0
var _min	= min(argument1, argument2)
var _max	= max(argument1, argument2)

if (value < _min) {
	var interval= (_max - _min)
	var diff	= (_min - value)
	var rest	= diff % interval
    value		= _max - rest
}
else if (value > _max) {
	var interval= (_max - _min)
	var diff	= (value - _min)
	var rest	= diff % interval
    value		= _min + rest
}

return value