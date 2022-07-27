sprite_index = sprite_get("nspecial_proj");
mask_index = sprite_get("nspecial_mask");

spr_dir = player_id.spr_dir;

hitbox_delay = 1;

set_lifetime = false;
lifetime = 0;

hit_limit = 8;
jc_buff = player_id.jc_buff;

jc_fspec_buff = false;

current_owner = player_id.player;

nspec_hitbox = noone;
fspec_hitbox = noone;