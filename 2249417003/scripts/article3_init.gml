//article3_init.gml
//dspecial heart


sprite_index = sprite_get("dspecial_heart");
mask_index = sprite_get("dspecial_heart_mask");
image_alpha = 1;
//visible = false;


time_since_last_graze = 0;
lifetime = 0;

can_be_grounded = false;
ignores_walls = true; 
free = true;

lifetime = 0;
follow_object_id = noone;
ralsei_player_team = get_player_team( player_id.player );

snd_graze = sound_get("dr_graze")