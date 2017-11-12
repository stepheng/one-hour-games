/// @description Insert description here
// You can write your code in this editor
particle_count = ds_list_size(particles)
if particle_count >= 20 {
	particle = particles[| 0]	
	ds_list_delete(particles, 0)
	show_debug_message("Delete: " + string(particle))

    data_flags = phy_particle_data_flag_position
	buffer = buffer_create(16, buffer_grow, 2);
	physics_particle_get_data_particle(particle, buffer, data_flags)
	px = buffer_read(buffer, buffer_f32);
	py = buffer_read(buffer, buffer_f32);
	buffer_delete(buffer);	
	instance_create_depth(px, py, depth, o_rock)
	physics_particle_delete_region_box(px, py, 1, 1)	
}