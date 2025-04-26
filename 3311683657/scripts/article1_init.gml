//article1_init

sprite_index = asset_get("empty_sprite")
mask_index = asset_get("empty_sprite")

vfx_sparkle_1 = hit_fx_create(sprite_get("sparkle_1"), 30)
vfx_sparkle_2 = hit_fx_create(sprite_get("sparkle_2"), 30)
vfx_sparkle_3 = hit_fx_create(sprite_get("sparkle_3"), 24)

max_age = 2
cur_age = 0

cloud_num = 12
hsp_mod = 0
vsp_mod = 0
spd_mod = 0
spawn_w = 0
spawn_h = 0
update_data = undefined
explode_sfx_timer = 0
prime_sfx_timer = 0

state = 0
state_timer = 0

timer = 0

is_nebula = true

suck_id = noone