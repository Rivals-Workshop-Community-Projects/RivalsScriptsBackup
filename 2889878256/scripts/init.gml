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

//spawning ground and monitor stuff
instance_create(room_width/2, room_height/2 - 100, "obj_stage_article", 3);
instance_create(room_width/2, room_height/2 - 100, "obj_stage_article", 4);
//instance_create(room_width/2, room_height/2 + 144, "obj_stage_article", 7);
instance_create(room_width/2, room_height/2 + 144, "obj_stage_article", 8);
instance_create(room_width/2, room_height/2 + 144, "obj_stage_article", 9);
instance_create(room_width/2, room_height/2, "obj_stage_article", 10);
delete_pwt_logo = 0;

//spawning roulette 1
roulette = instance_create(room_width/2, room_height/2 - 100, "obj_stage_article", 1);

// position stuff
midpoint = room_width/2;
tile = 32;
quarter = 176;
ground_level = 528;

//type to spawn
type_to_spawn_left = 1;
type_to_spawn_right = 1;

//initial plats
instance_create(midpoint + 6*tile, ground_level - 3*tile, "obj_stage_article_platform", 11);
instance_create(midpoint - 6*tile, ground_level - 3*tile, "obj_stage_article_platform", 11);

//stage
stage = 1;