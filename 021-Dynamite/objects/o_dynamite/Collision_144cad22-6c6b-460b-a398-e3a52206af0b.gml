/// @description Insert description here
// You can write your code in this editor

instance_destroy()

var xpos = x
var ypos = y
with other {
  surface_set_target(surface)
  gpu_set_blendmode(bm_subtract)
  draw_sprite(s_hole, 0, xpos, ypos)
  gpu_set_blendmode(bm_normal)
  surface_reset_target()
  sprite_delete(surface_sprite)	
  surface_sprite = sprite_create_from_surface(surface, 0, 0, room_width, room_height, false, true, 0, 0)
  sprite_collision_mask(surface_sprite, 1, 0, 0, 0, 0, 0, 0, 0)
  object_set_sprite(o_surface, surface_sprite)
  mask_index = surface_sprite
  
  alarm[0] = room_speed
}

