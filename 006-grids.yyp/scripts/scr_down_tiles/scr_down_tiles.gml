counter = 0
selected_x = o_controller.selected_x
selected_y = o_controller.selected_y
expected = o_controller.tiles[selected_x, selected_y]
for (i = selected_y + 1; i < 10; i++) {
	if o_controller.tiles[selected_x, i] == expected && o_controller.revealed_tiles[selected_x, i] == false {
		counter += 1	
	}
}

return counter