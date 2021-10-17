//article2_init

sprite_index = asset_get("empty_sprite");
mask_index = asset_get("empty_sprite");
spr_dir = 1;
can_be_grounded = true;
ignores_walls = false;
uses_shader = true;
free = false;

_init = 0;
state = 0;
state_timer = 0;
anim_frames = [3,3,3];
anim_start = [0,4,7];
anim_timer = [20, 50, 25];

playa_id = player_id;
render_sprite = sprite_index;
attack = -1;
pstate = -1;
_hsp = 0;
_vsp = 0;
djumps = 0;
_free = 0;

hurt_sprite = noone;
