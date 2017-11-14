/// @description Insert description here
// You can write your code in this editor

if !surface_exists(surface) {
	surface = surface_create(room_width, room_height)
	
	surface_set_target(surface)
	draw_clear_alpha(c_black, 0)
	draw_set_color(c_green)
	for (var i = 0; i < point_count; i++) {		
		draw_set_color(c_green)
		var x1 = xpoints[i]
		var x2 = x1
		var x3 = xpoints[i + 1]
		var x4 = x3
		var y1 = room_height
		var y2 = ypoints[i]
		var y3 = room_height
		var y4 = ypoints[i + 1]
		draw_triangle(x1, y1, x2, y2, x3, y3, false)	
		draw_triangle(x2, y2, x4, y4, x3, y3, false)
	}	
	
	surface_reset_target()
	sprite_delete(surface_sprite)	
	surface_sprite = sprite_create_from_surface(surface, 0, 0, room_width, room_height, false, true, 0, 0)
	sprite_collision_mask(surface_sprite, 1, 0, 0, 0, 0, 0, 0, 0)
	object_set_sprite(o_surface, surface_sprite)
	mask_index = surface_sprite
}

draw_surface(surface, 0, 0)
//draw_sprite_ext(mask_index,0,x,y,1,1,0,c_aqua,0.5)

