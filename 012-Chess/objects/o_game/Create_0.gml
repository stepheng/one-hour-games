/// @description Insert description here
// You can write your code in this editor

for (i = 0; i < 4; i++) {
	for (j = 0; j < 4; j++) {
		tiles[i, j] = 0
	}
}

tiles[1, 0] = -1
tiles[2, 0] = -1
tiles[3, 0] = -1

tiles[3, 2] = -1
tiles[3, 3] = -1
tiles[2, 3] = -1

tiles[0, 0] = 2
tiles[0, 2] = 2

tiles[1, 2] = 1
tiles[3, 1] = 1

knight_selected_x = -1
knight_selected_y = -1