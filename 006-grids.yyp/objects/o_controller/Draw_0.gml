/// @description Insert description here
// You can write your code in this editor

if surface_exists(surface) == false {
	surface = surface_create(320, 320)
	needs_redraw = true
}

if needs_redraw == false {
	draw_surface(surface, x, y)
	draw_text((selected_x + 1) * 32, selected_y * 32, string(right_tiles))
	draw_text((selected_x - 1) * 32, selected_y * 32, string(left_tiles))
	draw_text((selected_x) * 32, (selected_y - 1) * 32, string(up_tiles))
	draw_text((selected_x) * 32, (selected_y + 1) * 32, string(down_tiles))
	return	
}

surface_set_target(surface)

draw_clear(c_blue)
for (i = 0; i < 10; i++) {
	for (j = 0; j < 10; j++) {
		index = tiles[i, j]
		color = colors[index]
		if revealed_tiles[i, j] == true {
			draw_set_color(color)
			draw_rectangle(i * 32, j * 32, (i + 1) * 32, (j + 1) * 32, false)	
		}
	}
}

surface_reset_target()

draw_surface(surface, x, y)
needs_redraw = false
