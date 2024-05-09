

sprite_index = sprite_get("voltorb_rest");
mask_index = sprite_get("voltorb_rest");


ignores_walls = false;
free = true;
can_be_grounded = true;
var voltorb_rand = random_func(24, 215, true);
voltorb_lifetime = voltorb_rand + 60;
//fallSpeed = 10;
 draw_debug_text(x - 190, y-180, string(string(voltorb_lifetime)));
 
 blowup = false;

grav = 0.5;
grav_max = 20;
vsp = -5;
h_bounces = 0;
v_bounces = 9;
touched = false;
//hsp = 3;

