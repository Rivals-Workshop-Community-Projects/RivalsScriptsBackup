//post-draw

#macro DEFAULT      0
#macro MOON         1
#macro FIRE		    2
#macro EARTH        3
#macro ICE          4
#macro WATER        5
#macro LIGHTNING    6
#macro SHADOW       7
with other_player_id {
    var spr = sprite_get("meter_ice")
    var spr_ice = sprite_get("ice_freeze")
    var spr_drenched_front = sprite_get("vfx_drenched_front")
    var spr_drenched_back = sprite_get("vfx_drenched_back")
}

var drawx = x
var drawy = y - char_height - 16

var meter_left = drawx - 22
var meter_right = drawx + 21
var meter_top = drawy - 2
var meter_bottom = drawy + 1
var meter_width = meter_right - meter_left

if omen_frozen_id == other_player_id && omen_frozen_timer >= 0 {
    
    draw_sprite_ext(spr, 0, drawx, drawy, 1, 1, 0, c_white, 1)
    draw_rectangle_color(meter_left, meter_top, meter_left + meter_width*omen_frozen_meter_percent, drawy + 1, c_aqua,c_aqua,c_aqua,c_aqua, false)
    
    gpu_set_alphatestenable(true);
    gpu_set_fog(1, c_aqua, 0, 1);
    
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale*(small_sprites+1), image_yscale*(small_sprites+1), image_angle, c_white, (dcos(omen_frozen_timer*10) + 1)*0.2 + 0.1)
    
    gpu_set_fog(0, c_white, 0, 0);
    gpu_set_alphatestenable(false);
}


if omen_draw_ice {
    draw_sprite_ext(spr_ice, 0, x, y - char_height/2, 1, 1, 0, c_white, 0.6)
}


if omen_drenched_id == other_player_id && instance_exists(other_player_id){
    draw_sprite_ext(spr_drenched_front, other_player_id.timer/6, x, y - char_height/2, 1, 1, 0, c_white, 1)
}