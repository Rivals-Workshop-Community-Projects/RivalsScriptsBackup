////USHR ARTICLE1 INIT

init = 0;
sprite_index = asset_get("empty_sprite");

image_xscale = 2;
image_yscale = 2;
image_alpha = 0;
depth = 15;

state = 0;
state_timer = 0;
state_end = 0;

can_be_grounded = false;
ignores_walls = true;
uses_shader = true;


rain_wait = 2;

rain_bottom_dist = 0;
applied_player_id = -4;
stored_spr_dir = 0;

is_iced = false;
ice_timer = 0;
ice_timer_max = 30;//cooldown length basically
ice_attacktrack = 0;

ice_attacknum = 1;
