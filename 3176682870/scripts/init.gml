//The variable used to randomize the stage's music, set to -1 for the randomizer in update.gml to work.
cur_song = -1

//Timers for each article with animation, as using image_speed doesn't stop when paused.
lamp_timer = 1
alubal_timer = 1
alubas_timer = 1

//Variable that helps allowing the lava to damage both teams.
team_timer = 0

//Steve block compat:
//Dirt (Leaves)
steve_material_0 = {
	type: "custom_leaves",
	block: sprite_get("steve_0_block"),
	item: sprite_get("steve_0_item"),
	drop: sprite_get("steve_0_drop"),
	particle: sprite_get("steve_0_particle"),
	gauge: sprite_get("steve_0_gauge"),
};
//Wood (Stone Posts)
steve_material_1 = {
	type: "custom_stone_post",
	block: sprite_get("steve_1_block"),
	item: sprite_get("steve_1_item"),
	drop: sprite_get("steve_1_drop"),
	particle: sprite_get("steve_1_particle"),
	gauge: sprite_get("steve_1_gauge"),
};
//Stone (Stone Bench)
steve_material_2 = {
	type: "custom_stone_bench",
	block: sprite_get("steve_2_block"),
	item: sprite_get("steve_2_item"),
	drop: sprite_get("steve_2_drop"),
	particle: sprite_get("steve_2_particle"),
	gauge: sprite_get("steve_2_gauge"),
};