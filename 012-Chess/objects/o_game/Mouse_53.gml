/// @description Insert description here
// You can write your code in this editor

x_pos = mouse_x - x
y_pos = mouse_y - y

tile_x = floor(x_pos / 64)
tile_y = floor(y_pos / 64)

if tile_x < 0 || tile_x >= 4 || tile_y < 0 || tile_y >= 4 {
	return	
}

if tiles[tile_x, tile_y] < 0 {
	return	
}

if tiles[tile_x, tile_y] > 0 {
	if knight_selected_x < 0 && knight_selected_y < 0 {
		knight_selected_x = tile_x
		knight_selected_y = tile_y		
	} else if tile_x == knight_selected_x && tile_y == knight_selected_y {
		knight_selected_x = -1
		knight_selected_y = -1
	}
	return
}

if knight_selected_x >= 0 && knight_selected_y >= 0 {
	valid_move = false
	if abs(tile_x - knight_selected_x) == 1 && abs(tile_y - knight_selected_y) == 2 {
		valid_move = true
	} else if abs(tile_x - knight_selected_x) == 2 && abs(tile_y - knight_selected_y) == 1 {
		valid_move = true
	}
	
	if valid_move == true {
		knight = tiles[knight_selected_x, knight_selected_y]
		tiles[knight_selected_x, knight_selected_y] = 0
		tiles[tile_x, tile_y] = knight
		knight_selected_x = -1
		knight_selected_y = -1
	}
}

if tiles[0, 0] == 1 && tiles[0, 2] == 1 && tiles[3, 1] == 2 && tiles[1, 2] == 2 {
	room_goto_next()
}