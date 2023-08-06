// pre-draw

//ascend reticle
shader_start()
if ascend_plat != undefined && instance_exists(ascend_plat) {
    draw_sprite_ext(sprite_get("ascend_reticle"), clamp(state_timer/4, 0, 1), x, get_instance_y(ascend_plat) + 3 - ascend_y_increment, 1, 1, 0, c_white, 1)    
}
shader_end()

/*
if ascend_draw_state > 0 {
    var spr_height = 166
    var draw_alpha = 1
    switch ascend_draw_state {
        case 1:
        draw_alpha = clamp((ascend_draw_timer - 6)/5, 0, 1)
        break;
        
        case 3:
        draw_alpha = clamp(ascend_draw_timer/5, 0, 1)
        break;
    }
    for (var i = 0; i < 6; i++) {
        var spr = sprite_get("ascend_vfx_1_back")
        var draw_x = x
        var draw_y = spr_height*i - (timer*8) mod spr_height
        draw_sprite_ext(spr, 0, draw_x, draw_y, 1, 1, 0, c_white, draw_alpha)
        
        var spr = sprite_get("ascend_vfx_2_back")
        var draw_y = spr_height*i - ((timer*12) mod spr_height) - spr_height/2
        draw_sprite_ext(spr, 0, draw_x, draw_y, 1, 1, 0, c_white, draw_alpha)
    }
}
*/

shader_start()

if get_item_timer > 0 {
    if fuse_item != 0 {
        draw_sprite_ext(sprite_get("devices_hud"), fuse_item-1, x, y - 80 - get_item_timer, 1, 1, 0, c_white, 1 - get_item_timer/40)
    }
}

if trail_timer > 0 {
    var x_offset = 30*spr_dir
    var y_offset = -95
    draw_sprite_ext(sprite_get("vfx_paraglider_trail"), floor(trail_timer/6), x + x_offset, y + y_offset, clamp(abs(hsp)/4, 0.3, 10), vsp/3, darctan2(-vsp/2, hsp), c_white, 1)
}


if ultrahand_draw_alpha > 0 {
    //dspecial item draw
    var spr_w = 256
    var spr_h = 256
    var num_segments = 16
    var seg_len = spr_w/num_segments

    var start_x = 0
    var start_y = 0
    if image_index <= 1 {
        start_x = x - 30*spr_dir
        start_y = y - 30
    } else if image_index <= 2 {
        start_x = x - 40*spr_dir
        start_y = y - 50
    } else {
        start_x = x + 20*spr_dir 
        start_y = y - 10
    }
    
    var offset_x = 0
    var offset_y = 0
    if fuse_item <= 2 {
        offset_y = 5
    }
    
    var end_x = item_draw_x
    var end_y = item_draw_y + offset_y
    
    var scale_x = sqrt(power(start_x - end_x, 2) + power(start_y - end_y - offset_y, 2))/spr_w

    for (var i = 0; i < num_segments; i++) {
        var cur_angle = darctan2(start_y - end_y - offset_y, end_x - start_x)
        var cur_draw_x = start_x + (i*seg_len*dcos(cur_angle))*scale_x
        var cur_draw_y = start_y - (i*seg_len*dsin(cur_angle))*scale_x
        
        draw_sprite_ext(sprite_get("vfx_ultrahand"), i + floor(timer/8)*num_segments, cur_draw_x, cur_draw_y, scale_x, 0.5, cur_angle, c_white, ultrahand_draw_alpha)
    }
    
    //draw_circle_color(end_x, end_y, 10, c_white, c_white, false)
}

if item_draw || ultrahand_draw_alpha > 0 {
    //hologram item
    //draw_sprite_ext(item_spr, 0, item_spawn_x, item_spawn_y, spr_dir, 1, 0, c_white, 0.3)
    
    //held item
    draw_sprite_ext(item_spr, 0, item_draw_x, item_draw_y, spr_dir, 1, 0, c_white, item_draw ? 1 : ultrahand_draw_alpha)
}

//ustrong ultrahand draw
if state_attacking && attack == AT_USTRONG && ustrong_draw_alpha > 0 {
    var spr_w = 256
    var spr_h = 256
    var num_segments = 16
    var seg_len = spr_w/num_segments

    var start_x = x + 10*spr_dir
    var start_y = y - 90
    
    
    var end_x = ustrong_reticle_x
    var end_y = ustrong_reticle_y
    
    var scale_x = sqrt(power(start_x - end_x, 2) + power(start_y - end_y, 2))/spr_w

    for (var i = 0; i < num_segments; i++) {
        var cur_angle = darctan2(start_y - end_y - offset_y, end_x - start_x)
        var cur_draw_x = start_x + (i*seg_len*dcos(cur_angle))*scale_x
        var cur_draw_y = start_y - (i*seg_len*dsin(cur_angle))*scale_x
        
        draw_sprite_ext(sprite_get("vfx_ultrahand"), i + floor(timer/4)*num_segments, cur_draw_x, cur_draw_y, scale_x, 0.5, cur_angle, c_white, ustrong_draw_alpha)
    }
}

shader_end()

#define get_slot_colour(slot)
var p_col = get_player_color(player)
var col_r = get_color_profile_slot_r(p_col, slot)
var col_g = get_color_profile_slot_g(p_col, slot)
var col_b = get_color_profile_slot_b(p_col, slot)
var col_final = make_color_rgb(col_r, col_g, col_b);
return col_final