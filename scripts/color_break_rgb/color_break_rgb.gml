///@description Returns an [R,G,B] array with 0-1 color values for R, G and B
///@param hex	Note: pass in a regular RGB color (not BGR)

var color = argument0
var colorRgb = [color_get_red(color), color_get_green(color), color_get_blue(color)]

return colorRgb