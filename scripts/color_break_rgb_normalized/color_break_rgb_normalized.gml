///@description Returns an [R,G,B] array with 0-1 color values for R, G and B
///@param hex	Note: pass in a regular RGB color (not BGR)

var color = argument0
var colorRgb = color_break_rgb(color)
var colorRgbNormal = [colorRgb[0] / 255, colorRgb[1] / 255, colorRgb[2] / 255]

return colorRgbNormal