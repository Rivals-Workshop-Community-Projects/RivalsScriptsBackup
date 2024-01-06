// pre-draw


//dspec holograms
gpu_set_alphatestenable(true);

for (var i = 0; i < array_length(dspec_holograms); i++) {
    var hologram = dspec_holograms[i]
    var _x = hologram[0]
    var _y = hologram[1]
    var _alpha = hologram[2]/10
    var spr = hologram[3]
    var spr_index = hologram[4]
    var col = hologram[5]
    
    gpu_set_fog(1, col, 0, 1);
    draw_sprite_ext(spr, spr_index, _x, _y, image_xscale, image_yscale, 0, c_white, _alpha)
}

gpu_set_fog(0, c_white, 0, 0);
gpu_set_alphatestenable(false);

//ascend reticle
shader_start()
if ascend_plat != undefined && instance_exists(ascend_plat) {
    draw_sprite_ext(sprite_get("ascend_reticle"), clamp(state_timer/4, 0, 1), x, get_instance_y(ascend_plat) + 3 - ascend_y_increment, 1, 1, 0, c_white, 1)    
}

//ascend vfx
if state_attacking && attack == AT_USTRONG && window >= 3 && ascend_plat != undefined && instance_exists(ascend_plat) {
    draw_sprite_part_ext(sprite_get("ascend_vfx"), 0, 0, 0, 128, abs(y - ascend_y) + 10, x - 64, ascend_y, 1, 1, c_white, 1)
}
shader_end()

//proj trails
with pHitBox if player_id == other.id && ("trail_arr" in self) && trail_arr[0][0] != undefined {
    draw_primitive_begin(pr_trianglestrip)
    var w = 0
    var max_w = 10
    var scale_w = 0.5
    //var col = get_slot_colour(1)
    var col = c_white
    
    switch attack {
        case AT_NSPECIAL:
        if state == 9 {
            col = get_slot_colour(2)
        } else {
            col = get_slot_colour(6)
        }
        break;
        
        case AT_JAB:
        if state == 9 {
            col = get_slot_colour(2)
        } else {
            col = get_slot_colour(7)
        }
        break;
    }
    
    for (var i = 0; i < trail_segments; i++) {
        var cur_index = (i + trail_index) mod trail_segments
        var el = trail_arr[cur_index]
        
        if el[0] != undefined {
            var p1x = el[0] + w*dcos(el[2]+90)
            var p1y = el[1] - w*dsin(el[2]+90)
            var p2x = el[0] - w*dcos(el[2]+90)
            var p2y = el[1] + w*dsin(el[2]+90)
            
            //col = el[3]
            //max_w = el[4]
            //scale_w = el[5]

            draw_vertex_color(p1x, p1y, col, 0.7)
            draw_vertex_color(p2x, p2y, col, 0.7)
            
        }
        w = clamp(w + scale_w, 0, max_w)
    }
    draw_primitive_end()
}

//ustrong ultrahand draw
shader_start()
if state_attacking && fuse_draw_alpha > 0 {
    var spr_w = 256
    var spr_h = 256
    var num_segments = 16
    var seg_len = spr_w/num_segments

    var start_x = fuse_start_x
    var start_y = fuse_start_y
    
    var end_x = fuse_reticle_x
    var end_y = fuse_reticle_y
    
    var scale_x = sqrt(power(start_x - end_x, 2) + power(start_y - end_y, 2))/spr_w

    for (var i = 0; i < num_segments; i++) {
        var cur_angle = darctan2(start_y - end_y, end_x - start_x)
        var cur_draw_x = start_x + (i*seg_len*dcos(cur_angle))*scale_x
        var cur_draw_y = start_y - (i*seg_len*dsin(cur_angle))*scale_x
        
        draw_sprite_ext(sprite_get("vfx_ultrahand"), i + floor(timer/4)*num_segments, cur_draw_x, cur_draw_y, scale_x, 0.5, cur_angle, c_white, fuse_draw_alpha)
    }
}
shader_end()

#define get_slot_colour(slot)
with player_id {
    var p_col = get_player_color(player)
    var col_r = get_color_profile_slot_r(p_col, slot)
    var col_g = get_color_profile_slot_g(p_col, slot)
    var col_b = get_color_profile_slot_b(p_col, slot)
    var col_final = make_color_rgb(col_r, col_g, col_b);
}
return col_final