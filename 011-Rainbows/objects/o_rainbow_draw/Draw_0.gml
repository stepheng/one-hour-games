/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_black)
draw_rectangle(x - (192 / 2), y - (192 / 2), x + (192 / 2), y + (192 / 2), false)

x_pos = x
y_pos = y
size = 192 / 2

colors = [c_red, c_orange, c_yellow, c_green, c_blue, make_color_rgb(111, 0, 255), make_color_rgb(238, 130, 238)]

for (i = 0; i < array_length_1d(colors); i++) {
	draw_set_color(colors[i])	
	draw_circle(x_pos, y_pos, size, false)
	size -= 8
}

draw_set_color(c_black)
draw_circle(x_pos, y_pos, size, false)
draw_rectangle(x - (192 / 2), y, x + (192 / 2), y + (192 / 2), false)
