//article1_init

can_be_grounded = 0;
ignores_walls = 1;
uses_shader = 1;

state = 0;
t = 0;
invincible = 0;
hittable_hitpause_mult = 0;
anim_spd = 5;
image_alpha = .7;
depth = player_id.depth-2;
image_xscale = 2;
image_yscale = 2;
sprite_index = asset_get("empty_sprite");
mask_index = sprite_get("cloud_hurt");
sprites = ["_spawn", "", "_despawn", "_ignited"];
explosion_owner = noone;