//article2_init

//scythe head

#macro DEFAULT      0
#macro MOON         1
#macro FIRE		    2
#macro EARTH        3
#macro ICE          4
#macro WATER        5
#macro LIGHTNING    6
#macro SHADOW       7

timer = 0
die_timer = 0
omen_is_scythe = true

sprite_index = sprite_get("scythe_proj")
mask_index = sprite_get("scythe_mask")

abs_spd = 0

launch = false
launch_timer = 0

hitbox_active = false
vfx_alpha = 1

switch_stance = false

element = DEFAULT

launch_angle = 0