width = sprite_width
height = sprite_height

for (i = 0; i < width; i += 32) {
	for (j = 0; j < height; j += 32) {
		instance_create_depth(i + x, j + y, depth, o_wall_asset)
	}
}
