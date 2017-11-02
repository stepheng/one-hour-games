current_player = o_game_controller.current_player

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
	return false
}

return true