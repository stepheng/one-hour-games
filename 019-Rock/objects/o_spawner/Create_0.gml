/// @description Insert description here
// You can write your code in this editor

particles = ds_list_create()
flags = phy_particle_flag_viscous | phy_particle_flag_colourmixing | phy_particle_flag_tensile

//lava_particle_system = part_system_create()
//lava_particle = part_type_create()
//part_type_shape(lava_particle, pt_shape_circle)
//part_type_scale(lava_particle, 1, 1)
//part_type_size(lava_particle, 1, 1, 0, 0)
//part_type_color1(lava_particle, c_white)
//part_type_life(lava_particle, 100, 150)
//part_type_blend(lava_particle, false)
//part_type_sprite(lava_particle, s_lava, false, false, false)
//part_type_gravity(lava_particle, 1, -90)
//part_type_speed(lava_particle, 5, 10, 0, 0)
//part_type_direction(lava_particle, 45, 135, 0, 0)

//lava_emitter = part_emitter_create(lava_particle_system)
//part_emitter_region(lava_particle_system, lava_emitter, x - 4, x + 4, y, y, ps_shape_line, ps_distr_gaussian)
//part_emitter_stream(lava_particle_system, lava_emitter, lava_particle, 1)

physics_particle_set_max_count(500)
physics_particle_set_radius(8)
physics_particle_set_density(0.5)
alarm[0] = 1

