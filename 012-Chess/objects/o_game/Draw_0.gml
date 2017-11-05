/// @description Insert description here
// You can write your code in this editor

for (i = 0; i < 4; i++) {
	for (j = 0; j < 4; j++) {
		if tiles[i, j] == 1 {
			draw_sprite(s_white_knight, 0, x + (i * 64), y + (j * 64))	
		} else if tiles[i, j] == 2 {
			draw_sprite(s_black_knight, 0, x + (i * 64), y + (j * 64))	
		}
	}
}

if knight_selected_x >= 0 && knight_selected_y >= 0 {
	tile_x = knight_selected_x - 2
	if tile_x >= 0 {
		tile_y = knight_selected_y - 1
		if tile_y >= 0 && tiles[tile_x, tile_y] == 0 {
			draw_sprite(s_highlight, 0, x + (tile_x * 64), y + (tile_y * 64))	
		}
		tile_y = knight_selected_y + 1
		if tile_y < 4 && tiles[tile_x, tile_y] == 0 {
			draw_sprite(s_highlight, 0, x + (tile_x * 64), y + (tile_y * 64))	
		}
	}
	
	tile_x = knight_selected_x + 2
	if tile_x < 4 {
		tile_y = knight_selected_y - 1
		if tile_y >= 0 && tiles[tile_x, tile_y] == 0 {
			draw_sprite(s_highlight, 0, x + (tile_x * 64), y + (tile_y * 64))	
		}
		tile_y = knight_selected_y + 1
		if tile_y < 4 && tiles[tile_x, tile_y] == 0 {
			draw_sprite(s_highlight, 0, x + (tile_x * 64), y + (tile_y * 64))	
		}
	}
	
	tile_y = knight_selected_y - 2
	if tile_y >= 0 {
		tile_x = knight_selected_x - 1
		if tile_x >= 0 && tiles[tile_x, tile_y] == 0 {
			draw_sprite(s_highlight, 0, x + (tile_x * 64), y + (tile_y * 64))	
		}
		tile_x = knight_selected_x + 1
		if tile_x < 4 && tiles[tile_x, tile_y] == 0 {
			draw_sprite(s_highlight, 0, x + (tile_x * 64), y + (tile_y * 64))	
		}
	}
	
	tile_y = knight_selected_y + 2
	if tile_y < 4 {
		tile_x = knight_selected_x - 1
		if tile_x >= 0 && tiles[tile_x, tile_y] == 0 {
			draw_sprite(s_highlight, 0, x + (tile_x * 64), y + (tile_y * 64))	
		}
		tile_x = knight_selected_x + 1
		if tile_x < 4 && tiles[tile_x, tile_y] == 0 {
			draw_sprite(s_highlight, 0, x + (tile_x * 64), y + (tile_y * 64))	
		}
	}
}