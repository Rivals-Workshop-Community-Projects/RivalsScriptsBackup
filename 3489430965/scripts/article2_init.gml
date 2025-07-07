sprite_index = sprite_get("fspecial_proj");
mask_index = sprite_get("fspecial_proj");
image_index = 0;
spr_dir = player_id.spr_dir;

timer = 0;
timer_total = 480;

hitstop = 0;
hsp = 14*spr_dir;
vsp = -1;
grv = 0.5;

can_be_grounded = false;
ignores_walls = true;
free = true;
hit_wall = false;