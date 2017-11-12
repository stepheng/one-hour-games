/// @description Insert description here
// You can write your code in this editor

imp_x = irandom_range(2, 7)
imp_y = irandom_range(2, 7)

imp_x = irandom(1) % 2 == 0 ? -imp_x : imp_x
imp_y = irandom(1) % 2 == 0 ? -imp_y : imp_y

physics_apply_force(x, y, imp_x * 800, imp_y * 800)
