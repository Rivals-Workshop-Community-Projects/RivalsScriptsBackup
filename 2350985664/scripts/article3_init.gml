//article1_init

can_be_grounded = false;
ignores_walls = true;
uses_shader = false;

sprite_index = sprite_get("lamprey_bounce");

state = 0
//0 = bounce
//1 = crunch

life = 5;

grav = 0.45;

step = 0;

image_spd = 0.2;

vsp = -3.5;
y += 16