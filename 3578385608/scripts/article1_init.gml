//article1_init

can_be_grounded = true;
ignores_walls = false;
uses_shader = false;

sprite_index = sprite_get("dspecial_lab");
mask_index = sprite_get("dspecial_lab_hurt");

image_xscale = 2;
image_yscale = 2;

state = 0;
timer = 0;
meth = 0;
meth_hb = noone;
meth_alpha = 0;
closeby = 0;
closeby_alpha = 0;
hittable_hitpause_mult = 0;
bubble_sfx = noone;

hitb_list = [];
hitb_tim = 0;

/*states
0 = spawn;
1 = idle + cook;
2 = cook meth;
3 = die;
4 = get meth;
5 = jesse goes away
*/