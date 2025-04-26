//Relics
sprite_index = sprite_get("relics");
mask_index = sprite_get("relics_coll");
image_xscale = 2;
image_yscale = 2;
hsp = 0;
vsp = 0;
state = 0;
state_timer = 0;
kb_timer = 0;
kb_max = 5;

hitangle = 0;
hitpausing = 0;
hitstrength = 0;

hitplayer = 0;
hitconnect = false;
playerhitpause = false;

checked_dmg = 9999;
dmg_cap = 30;

relic_num = 0;
relic_target_x = 200;
relic_target_y = 200;
relic_spr_dir = 1;
relic_spawn = ((10 * spawn_variables[0]) + 15)*60;

spawn_spot_y = 0;

isrelic = true;
//should_be_destroyed = false;

destx = 640;
desty = 560;

init_x = x;
init_y = y;

y_float = -30;
y_float_dir = -1;
y_float_max = 30;

image_index = spawn_variables[0];

nail_time = 120;
nail_max = 120;

spawn_emphasis = 0;

fx_nspecial = hit_fx_create(sprite_get("fx_nspecial_destroy"), 14);

fx_mist_cloud = hit_fx_create(sprite_get("fx_mist_cloud"), 24);
fx_mist_cloud_hit = hit_fx_create(sprite_get("fx_mist_cloud_hit"), 30);

fx_dspecial_ember = hit_fx_create(sprite_get("fx_nspecial_trail"), 8);
fx_dspecial_sparks = hit_fx_create(sprite_get("fx_dspecial_sparks"), 25);
fx_nspecial2_trail = hit_fx_create(sprite_get("fx_nspecial_trail"), 15);