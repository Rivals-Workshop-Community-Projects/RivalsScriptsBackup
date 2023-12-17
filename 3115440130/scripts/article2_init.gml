//article2_init

//grounded rock
is_rhyolis_rock = true

timer = 0

crack_timer = 0

vfx_explode = hit_fx_create(sprite_get("dspecial_explosion_vfx_small"), 24)

sprite_index = sprite_get("nspecial_proj_grounded")
image_index = 0
depth = -10

sound_play(asset_get("sfx_kragg_spike"))


surface_id = noone
surface_x = 0
surface_y = 0

surface_offset_x = 0
surface_offset_y = 0

surface_prev_x = 0
surface_prev_y = 0

//surface collision
var block_check = position_meeting(x, y, asset_get("par_block"))
var plat_check = position_meeting(x, y, asset_get("par_jumpthrough"))

if block_check {
    surface_id = instance_position(x, y, asset_get("par_block"))
} else if plat_check {
    surface_id = instance_position(x, y, asset_get("par_jumpthrough"))
}

if surface_id != noone {
    
    surface_x = get_instance_x(surface_id)
    surface_y = get_instance_y(surface_id)
    
    surface_offset_x = x - surface_x
    surface_offset_y = y - surface_y
    
    surface_prev_x = surface_x
    surface_prev_y = surface_y
    
} else {
    instance_destroy()
    exit;
}