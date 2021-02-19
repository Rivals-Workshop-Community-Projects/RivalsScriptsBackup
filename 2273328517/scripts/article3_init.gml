//article3_init
// NSPECIAL projectile

sprite_index = sprite_get("proj");
mask_index = asset_get("empty_sprite");
depth = player_id.depth-1;
spr_dir = 1;
can_be_grounded = false;
ignores_walls = false;
uses_shader = true;
free = true;

_init = 0;
state = 0;
state_timer = 0;
window = 0;
window_timer = 0;
window_timers = [12, 20, 12];
window_anims = [3, 5, 3];
window_anim_starts = [0, 3, 8];
bounces = 0;
max_bounces = 4;
bounce_timer = 0;
max_bounce_timer = 2;

playa_id = player_id;
_hsp = 3;
_vsp = -10;
grav = .3;
hitb = noone;

y_max = 1000;
