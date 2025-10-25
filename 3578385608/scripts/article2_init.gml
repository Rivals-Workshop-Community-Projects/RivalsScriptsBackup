state = 0;
timer = 0;

hitwalt = 0;
can_be_grounded = 1;
ignores_walls = 0;
uses_shader = 0;
ammo = 35;
hittable_hitpause_mult = 0;
is_hittable = 0;
hitb_list = [];

image_xscale = 2;
image_yscale = 2;
sprite_index = sprite_get("fspecial_m6");
mask_index = sprite_get("fspecial_m6_hurt");

fall_hb = noone;
fire_left = 0;

/*states
0 = spawn
0 = spawn
1 = fall
2 = land
3 = idle
4 = trunk open
5 = fire loop
6 = despawn
*/
