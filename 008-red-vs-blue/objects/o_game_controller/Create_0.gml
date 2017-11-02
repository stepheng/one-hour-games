/// @description Insert description here
// You can write your code in this editor

for (i = 0; i < 8; i++) {
	for (j = 0; j < 8; j++) {
		tiles[i, j] = 0
	}
}

tiles[3, 3] = 1
tiles[3, 4] = 2
tiles[4, 3] = 2
tiles[4, 4] = 1

current_player = 1

player_one_legal = true
player_two_legal = true
