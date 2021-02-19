//article2_init

sprite_index = sprite_get("tendril");
mask_index = asset_get("empty_sprite");
image_index = image_number - 1;
spr_dir = 1;
can_be_grounded = true;
ignores_walls = false;
uses_shader = true;
free = false;

_init = false;
state = 0;
state_timer = 0;
anim_frames = [5, 7, 7];
anim_start = [0, 5, 12];
anim_timer = [20, 10, 20];
rotation = 0;

playa_id = player_id;
render_sprite = sprite_index;
attack = -1;
pstate = -1;
_hsp = 0;
_vsp = 0;
djumps = 0;
_free = 0;

hurt_sprite = noone;
