sprite_index = sprite_get("nspecial_proj");
mask_index = sprite_get("nspecial_mask");

spr_dir = player_id.spr_dir;

hitbox_delay = 1;

set_lifetime = false;
lifetime = 0;

hit_limit = 8;
jc_buff = player_id.jc_buff;

jc_buff_loops = 0;



jc_dest_vfx = player_id.jc_destroyed;

is_hittable = true;
hittable_hitpause_mult = 0;


jc_hitstop = 0;

jc_hitpoints = 10;

jc_fspec_buff = false;

jc_ewgf = false;

current_owner = player_id;

nspec_hitbox = noone;
fspec_hitbox = noone;
ewgf_hitbox = noone;