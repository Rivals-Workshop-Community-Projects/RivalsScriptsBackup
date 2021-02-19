//article1_init

init = 0;

sprite_index = sprite_get("bone_horizontal");
air_hurtbox_spr = sprite_get("bone_horizontal");
state = 0;
state_timer = 0;
can_be_grounded = false;
ignores_walls = false;
free = true;
uses_shader = true;
grounds = 1;
walls = 1;
bone_hit_timer = 0;
blue_timer = 0;

dir = 0;
vert_dir = 0;

blue = false;

bone_direction = 0;

accel = .02;
ground_friction = .02;
hsp = 10;

white_bone_destroy = 240;
bone_destroy = 30;
bone_spawn = 7;
bone_hit = 1;
blue_time = 3;
small_bone_destroy = 180;
small_blue_destroy = 60;