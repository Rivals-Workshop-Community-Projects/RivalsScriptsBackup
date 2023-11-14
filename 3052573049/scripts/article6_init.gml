//bouncy star
sprite_index = asset_get("empty_sprite");
mask_index = sprite_get("star_col");

//more variables
timer = 0;
depth = 10;
has_bounced = false;

//spawn hfx on spawn
spawn_hit_fx(x, y, 113);

//delay before players can pick up the star
time_before_grabbable = 30;

//set initial vsp and hsp
bounce_vsp = -12.5;
bounce_hsp = 1;

hsp = bounce_hsp*spr_dir;
vsp = bounce_vsp + 2;

//low_spawn is set to true if the star spawned low enough that it should go through the ground briefly
low_spawn = y > get_marker_y(96);