/// @description Insert description here
// You can write your code in this editor

x_pos = mouse_x - x
y_pos = mouse_y - y

x_index = floor(x_pos / 64)
y_index = floor(y_pos / 64)

if tiles[x_index, y_index] != 0 {
	return
}

tiles[x_index, y_index] = current_player

// search right
right_limit = -1
j = y_index
for (i = x_index + 1; i < 8; i++) {
	if tiles[i, j] == 0 {
		break	
	} else if tiles[i, j] == current_player {
		if i > x_index + 1 {
			right_limit = i
		}
		break
	}
}

// search left
left_limit = 8
j = y_index
for (i = x_index - 1; i >= 0; i--) {
	if tiles[i, j] == 0 {
		break	
	} else if tiles[i, j] == current_player {
		if i < x_index - 1 {
			left_limit = i
		}
		break
	}
}

// search down
down_limit = -1
i = x_index
for (j = y_index + 1; j < 8; j++) {
	if tiles[i, j] == 0 {
		break	
	} else if tiles[i, j] == current_player {
		if j > y_index + 1 {			
			down_limit = j
		}
		break
	}
}

// search up
up_limit = 8
i = x_index
for (j = y_index - 1; j >= 0; j--) {
	if tiles[i, j] == 0 {
		break	
	} else if tiles[i, j] == current_player {
		if j < y_index - 1 {
			up_limit = j
		}
		break
	}
}

if right_limit < 0 && left_limit >= 8 && down_limit < 0 && up_limit >= 8 {
	tiles[x_index, y_index] = 0
	// illegal move
	return
}

// capture right
j = y_index
for (i = x_index + 1; i < right_limit; i++) {
	tiles[i, j] = current_player
}

// capture left
for (i = x_index - 1; i > left_limit; i--) {
	tiles[i, j] = current_player
}

i = x_index
// capture down
for (j = y_index + 1; j < down_limit; j++) {
	tiles[i, j] = current_player
}

// capture up
for (j = y_index - 1; j > up_limit; j--) {
	tiles[i, j] = current_player
}

if current_player == 1 {
	current_player = 2	
} else {
	current_player = 1
}

//player_one_legal = false
//player_two_legal = false

//for (i = 0; i < 8; i++) {
//	for (j = 0; j < 8; j++) {
//		if tiles[i, j] == 0 {
//			tiles[i, j] = 1
//			is_legal = legal_moves()
//			if is_legal {
//				player_one_legal = true	
//			}
//			tiles[i, j] = 2
//			is_legal = legal_moves()
//			if is_legal {
//				player_two_legal = true	
//			}
//			tiles[i, j] = 0			
//		}
//		if player_one_legal && player_two_legal {
//			i = 8
//			j = 8
//			break
//		}
//	}
//}
