//BIG ASS MEGA FUCK ASS BULLET

trail_length = 416;
trail_direction = 0;
trail_icewall_hit = false;
trail_x = x;
trail_y = y;

//Trails
trail_array = [];
state = 0; //0 = normal; 1 = reflected
state_timer = 0;

//drawing
sprite_index = asset_get("empty_sprite");
mask_index = sprite_get("nspecial_proj2");

disable_movement = true;
was_parried = false;
reflect_player_prev = player;
reflect_player_id_prev = player_id;
reflect_player = player;
reflect_player_id = player;