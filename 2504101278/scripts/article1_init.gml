STATE_FLOAT = 0
STATE_ATTACK = 1
STATE_POP = 2

split_time = 9;
split_baby = false;

col = get_player_hud_color(player_id.player);

ignores_walls = false;

FLOAT_SPRITE = sprite_get("nspecial_proj")
ATTACK_SPRITE = sprite_get("nspecial_hit")
POP_SPRITE = sprite_get("nspecial_die")

//spr_dir = player_id.spr_dir;
sprite_index = FLOAT_SPRITE;
var t = floor(sprite_get_number(sprite_index)/2);
image_index = t*(1 - player_id.spr_dir)
//print(image_index)

depth = player_id.depth - 1
state = 0;
state_timer = 0;
lock_state = false;
hitbox = noone; 

fx = player_id.hit_sprites[3]

homing_threshold = 40;

being_carried = false;
//How long it takes until the mini is able to move
can_manual_move_count = 20;

//accelerate
accel_on = false;

accel = false;
accel_buffer = 0;
accel_buffer_max = 10;
//max hsp
max_hsp = 22;