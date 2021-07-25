//uspecial blocks. woag

state = 0;
state_timer = 0;
sprite_index = player_id.spr_uspecial_block;

dir_x = 0;
dir_y = 0;

init_x = x; //start of block's movement
init_y = y;

fake_x = x; //keep track of movement without ACTUALLY moving the block. this is for the purpose of calculating collisions w/ other surfaces
fake_y = y;

hitbox = noone;