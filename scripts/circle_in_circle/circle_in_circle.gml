///@param inX
///@param inY
///@param inRadius
///@param outX
///@param outY
///@param outRadius

var x1		= argument0
var y1		= argument1
var radius1	= argument2
var x2		= argument3
var y2		= argument4
var radius2	= argument5

var distFromCenter = point_distance(x1, y1, x2, y2)
var inCircle = ((distFromCenter + radius1) <= radius2)

return inCircle