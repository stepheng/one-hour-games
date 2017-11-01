/// @description Insert description here
// You can write your code in this editor

if surface_exists(object_surface) {
	if needs_refresh == false { 
		draw_surface(object_surface, x, y)
		return 
	}
} else {
	object_surface = surface_create(room_width, room_height)
}
j_offset = floor(y / 768) * 12
surface_set_target(object_surface)
draw_clear(c_black)
for (i = 0; i < 16; i++) {
	for (j = 0; j < 12; j++) {
		tile = global.tiles[i, j + j_offset]
		if tile == 1 {
			draw_sprite(s_dirt_tile, 0, (i * 64) - 448, (j * 64) - 192)
		}
	}
}
needs_refresh = false
surface_reset_target();

draw_surface(object_surface, x, y)
