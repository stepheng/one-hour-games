/// @description Insert description here
// You can write your code in this editor

text = ""

player1_score = 0
player2_score = 0
for (i = 0; i < 8; i++) {
	for (j = 0; j < 8; j++) {
		if tiles[i, j] == 1 {
			player1_score += 1	
		} else if tiles[i, j] == 2 {
			player2_score += 1	
		}
	}
}

draw_text(x, y + 512 + 64, "P1: " + string(player1_score) + " -- P2: " + string(player2_score))

if player_one_legal == false && player_two_legal == false {
	text = "Game Over"
} else {
	if current_player == 1 {
	text = "Red's Turn"	
	} else {
	text = "Blue's Turn"	
	}
}

draw_text(x, y - 64, text)
