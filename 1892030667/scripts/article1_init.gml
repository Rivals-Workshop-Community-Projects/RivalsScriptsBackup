//article1_init

_init = 0;

sprite_index = sprite_get("gun");
image_alpha = 0.7;
//air_hurtbox_spr = sprite_get("gun");
//hurtbox_spr = asset_get("empty_sprite");

state = 0;
state_timer = 0;
full_timer = 0;
stay_timer = 0;
can_be_grounded = false;
ignores_walls = false;
free = true;
uses_shader = true;

has_hit = false;

sprdir = 1;
//Custom Vars
grav_val = .5;
shoot = 0;
has_shot = 0;
hitbox1 = noone;
colided = 0;
result = 0;
n = 0;
gunmade = 0;
o_vsp = 0;
o_hsp = 0;
damage = 0;
kb_value = 0;

gun_load = 0;
collis_obj = noone;

hitbox_type = 1;

dist = 0;
distBox = 0;
hBox = 0;
direc = 0;
accel = .02;
fric = 1;
hit_op = 0;
near_hit = 32;
hit_cd = 0;
hit_cd_max = 10;
freed = 0;

//Proj Vars
shoot_speed = 20;

hit_box = 0;
has_bhit = 0;