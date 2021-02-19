//article1_init

init = 1;

sprite_index = player_id.sprite_index;

ignores_walls = true;
ignores_ground = true;
free = true;
uses_shader = true;
state = 0;
prev_state = 0;
state_timer = 0;
timer = player_id.image_index;
can_be_grounded = true;

image_alpha = 0.44;

spr_dir = player_id.spr_dir;
anim_speed = 3.0;