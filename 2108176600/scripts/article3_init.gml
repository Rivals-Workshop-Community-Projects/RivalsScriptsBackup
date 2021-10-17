//article3_init

sprite_index = sprite_get("ustrong_article");
mask_index = asset_get("empty_sprite");
spr_dir = 1;
can_be_grounded = false;
ignores_walls = true;
uses_shader = true;
free = true;

_init = 0;
state = 0;
state_timer = 0;
anim_timer = 20;

playa_id = player_id;
_hsp = 3;
_vsp = -10;
grav = .3;
hitb = noone;

y_max = 1000;
