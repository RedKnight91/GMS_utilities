///@func	wrap()
///@desc	Returns the value wrapped.  If it is above or below the threshold it will wrap around
///
///@param value
///@param min
///@param max

var value	= argument0
var _min	= min(argument1, argument2)
var _max	= max(argument1, argument2)

var isInt	= (value mod 1 == 0)
var interval= (isInt) + abs(_max - _min)
var wrapCost= (isInt) ? 1 : 0

if (value > _max) {
	var diff = value - _max
	var rest = (diff - wrapCost) % interval
	value = _min + rest
}
else if (value < _min) {
	var diff = _min - value
	var rest = (diff - wrapCost) % interval
	value = _max - rest
}

return value