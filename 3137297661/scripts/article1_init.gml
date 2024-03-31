//article1_init.gml
spr = sprite_get("gas_air");
sprite_index = sprite_get("gas_air_hitbox");

gas_type = "norm";
anim_windows = [0];

endframe = 26;
interrupt = false;

image_index = 0;
state_timer = 0;

image_xscale = 2 * player_id.spr_dir;
image_yscale = 2;

article_xscale = 2;

anim_speed = 4.1 //higher = slower;
anim_time = 0;
 
poison_time = 550;
tier = 1;

playsound = false;

disable_movement = 1;