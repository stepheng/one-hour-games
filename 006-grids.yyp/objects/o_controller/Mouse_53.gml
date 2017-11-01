/// @description Insert description here
// You can write your code in this editor

x_pos = mouse_x - x
y_pos = mouse_y - y

tile_x = floor(x_pos / 32)
tile_y = floor(y_pos / 32)

if tile_x >= 0 && tile_x < 10 && tile_y >= 0 && tile_y < 10 {
	if revealed_tiles[tile_x, tile_y] == true {
		selected_x = tile_x
		selected_y = tile_y		
		right_tiles = scr_right_tiles()
		left_tiles = scr_left_tiles()
		up_tiles = scr_up_tiles()
		down_tiles = scr_down_tiles()	
		
		return	
	}
	if tiles[tile_x, tile_y] == current_color_index {
		selected_x = tile_x
		selected_y = tile_y
		right_tiles = scr_right_tiles()
		left_tiles = scr_left_tiles()
		up_tiles = scr_up_tiles()
		down_tiles = scr_down_tiles()	

		revealed_tiles[tile_x, tile_y] = true
		needs_redraw = true
	}
}
