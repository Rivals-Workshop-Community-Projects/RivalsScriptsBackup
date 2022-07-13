//article1_update.gml
if ("destroyed" in self) && destroyed == true {
    instance_destroy()
    exit;
}

timer++

if sound_delay > 0 sound_delay--

if timer == 60 can_pickup = true

if timer == 1 && spawn_sfx != 0 sound_play(asset_get("sfx_shovel_hit_med2"))


var collision_x = x
var collision_y = y

block = position_meeting(collision_x, collision_y, asset_get("par_block"))
plat = position_meeting(collision_x, collision_y, asset_get("par_jumpthrough"))

mask_index = sprite_get("article_sword_hurt");

if !block && !plat {
    sprite_index = sprite_get("article_sword")
    vsp += 0.5
    image_angle = lerp(image_angle, point_direction(0, 0, vsp, hsp), 0.1)
    wiggle_timer = 0
    surface = noone;
    surface_x = undefined
    surface_y = undefined
} else {
    sprite_index = sprite_get("article_sword_half")
    if vsp != 0 && sound_delay == 0 {
        sound_play(asset_get("sfx_shovel_hit_med2"))
        sound_delay = 20
    }
    vsp = 0
    
    wiggle_timer++
    
    if surface == noone surface = block != false ? instance_place(collision_x, collision_y, asset_get("par_block")) : instance_place(collision_x, collision_y, asset_get("par_jumpthrough"))
    if surface_x == undefined && surface != noone && instance_exists(surface) {
        surface_x = get_instance_x(surface) - x
        surface_y = get_instance_y(surface) - y
    }
    
    x = get_instance_x(surface) - surface_x
    y = get_instance_y(surface) - surface_y
    
    var wiggle_time = 20
    if wiggle_timer == 1 {
        image_angle_orig = image_angle
    } else if wiggle_timer < wiggle_time {
        image_angle = image_angle_orig + dsin(wiggle_timer*40)*(wiggle_time-wiggle_timer)
    } else if wiggle_timer == wiggle_time {
        image_angle = image_angle_orig
    }
}