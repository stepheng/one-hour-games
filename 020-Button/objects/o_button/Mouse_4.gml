/// @description Insert description here
// You can write your code in this editor

engine = instance_find(o_automata_engine, 0)
instance_create_depth(engine.x, engine.y, depth, o_automata_engine)
with engine {
	instance_destroy()
}