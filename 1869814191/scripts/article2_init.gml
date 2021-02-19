//article2_init

init = 0;

sprite_index = sprite_get("gaster_blaster");
air_hurtbox_spr = sprite_get("gaster_blaster");
state = 0;
state_timer = 0;
can_be_grounded = false;
ignores_walls = false;
free = true;
uses_shader = true;
grounds = 1;
walls = 1;

dir = 0;

accel = .02;
ground_friction = .02;
hsp = 10;
anim_timer = 0;

//Proj Vars
hitSpeed = 10;
hitAngle = 0;

blaster_destroy = 50;
blaster_charge = 45;
blaster_spawn = 5;
blaster_fire = 10;
blaster_finalhit = 40;