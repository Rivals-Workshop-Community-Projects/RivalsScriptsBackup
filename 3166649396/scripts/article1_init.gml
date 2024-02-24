//article1_init

//spirit orb

#macro DEFAULT      0
#macro MOON         1
#macro FIRE		    2
#macro EARTH        3
#macro ICE          4
#macro WATER        5
#macro LIGHTNING    6
#macro SHADOW       7

vfx_spawn = hit_fx_create(sprite_get("vfx_orb_spawn"), 35)
vfx_dissipate = hit_fx_create(sprite_get("vfx_orb_dissipate"), 40)

sprite_index = asset_get("empty_sprite")
mask_index = sprite_get("orb_hurt")

can_be_grounded = false;
ignores_walls = true;
uses_shader = false;

timer = 0

state = 0
state_timer = 0
element = DEFAULT

if player_id.orb_id != noone && instance_exists(player_id.orb_id) {
    player_id.orb_id.state = 2
    player_id.orb_id.state_timer = 0
}

player_id.orb_id = id;