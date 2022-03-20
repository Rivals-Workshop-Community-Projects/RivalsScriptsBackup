//Sprite Stuff
sprite_index = sprite_get("bubble");
image_index = 0;
spr_dir = player_id.spr_dir;

//Functionality
state_timer = 0;

garnet_bubble_trapped_obj = player_id.grabbed_player_obj;
garnet_bubble_destroy = false;
garnet_bubble_stored_gravity = player_id.garnet_stored_gravity;