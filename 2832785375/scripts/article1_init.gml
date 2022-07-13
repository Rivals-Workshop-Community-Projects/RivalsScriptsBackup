//seed

uses_shader = true

sprite_index = sprite_get("seed_idle");
mask_index = sprite_get("seed_idle_hurt");
image_speed = 0.15;
can_be_grounded = true;
is_seed = true;
timer = 0;
age = undefined;

other_seed_id = undefined;

vine_angle = undefined;
vine_dir = undefined;

mark_id = noone //id of player who's marked by seed

die = false

seeker_id = undefined
wrapped_id = undefined //id of wrapped player
wrapped_timer = 0
wrap_init_signage = [0,0]
wrap_travel_time = 0
wrap_max_dist = 10000000000000000000

vinedist = 0
vinedir = 0
num_segs = 0
seg_xdist = 0
seg_ydist = 0

hitbox_timer = 0

state = PS_IDLE
state_timer = 0
attack = undefined
window = 0
window_timer = 0

draw_vine = false

strong_spr = asset_get("empty_sprite")
strong_index = 0
strong_dir = spr_dir
strong_x = 0
strong_y = 0

draw_base_timer = 0

surface = noone
surface_x = undefined
surface_y = undefined