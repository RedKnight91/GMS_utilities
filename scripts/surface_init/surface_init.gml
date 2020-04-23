///@func	surface_init(width, height)
///@init	creates a surface and clears it
///
///@param [width]
///@param [height]
///@param [alpha]

var alpha	= (argument_count == 1) ? argument[0] : 0

var width	= (argument_count == 2) ? argument[0] : room_width
var height	= (argument_count == 2) ? argument[1] : room_height


var surface = surface_create(width, height)

surface_set_target(surface)
draw_clear_alpha(c_white, alpha)
surface_reset_target()

return surface