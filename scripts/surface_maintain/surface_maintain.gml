///@func	surface_maintain(srf, width, height)
///@init	Recreates a surface if it was destroyed
///
///@param surface	Surface ID
///@param width		Surface width
///@param height	Surface height
///@param alpha		Surface alpha

var surface = argument[0]

if (surface_exists(surface))
	return surface

switch(ARG_N) {
	case 3:		return surface_init(argument[1], argument[2])
	case 2:		return surface_init(argument[1])
	default:	return surface_init()
}