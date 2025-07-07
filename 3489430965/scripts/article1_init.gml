sprite_index = sprite_get("chicken");
mask_index = sprite_get("chicken_hurt");
image_index = 0;
spr_dir = player_id.spr_dir;

timer = 0;
timer_total = 480;

cooked = false;
cooked_hsp = 16;
cooked_vsp = -7;

hit_wait = 0;

walk_hsp = 8;

hitstop = 0;
hsp = 0;
vsp = 0;
grv = 0.4;

can_be_grounded = false;
ignores_walls = true;
free = true;
hit_wall = false;