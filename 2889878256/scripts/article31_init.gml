//1 - normal
//2 - fighting
//3 - flying
//4 - poison
//5 - ground
//6 - rock
//7 - bug
//8 - ghost
//9 - steel
//10 - fire
//11 - water
//12 - grass
//13 - electric
//14 - psychic
//15 - ice
//16 - dragon
//17 - dark
//18 - fairy

state = 1;
type = 1;
sprite_index = sprite_get("nothing");
stay_time = 0;
stay_state = 1;
depth = 24;
image_index = 0;
transparency = 1;
initial_size = 0;
size = 0;
state_timer = 0;
poke_x = x;
poke_x_2 = x;
poke_x_3 = x;
poke_y = y;
poke_y_2 = y;
poke_y_3 = y;
poke_speed = 5;
poke_speed_2 = 5;
poke_speed_3 = 5;
poke_sprite = sprite_get("nothing");
poke_sprite_2 = sprite_get("nothing");
poke_sprite_3 = sprite_get("nothing");
poke_kabutops = false;


midpoint = room_width/2;
tile = 32;
quarter = 176;
ground_level = 528;

if (x < obj_stage_main.midpoint){

	spr_dir = -1;
	dir = spr_dir;
	type = obj_stage_main.type_to_spawn_left;

} else if (x > obj_stage_main.midpoint){

	spr_dir = 1;
	dir = spr_dir;
	type = obj_stage_main.type_to_spawn_right;	
}

// position stuff
midpoint = obj_stage_main.midpoint
tile = obj_stage_main.tile
quarter = obj_stage_main.quarter
ground_level = obj_stage_main.ground_level