// pre-draw

//proj trails
with pHitBox if player_id == other.id && ("trail_arr" in self) && trail_arr[0] != undefined && trail_arr[0][0] != undefined {
    draw_primitive_begin(pr_trianglestrip)
    var w = 0
    var max_w = 5
    var scale_w = 0.9
    //var col = get_slot_colour(1)
    var col = c_white
    
    switch attack {
        case AT_FTHROW:
        with other {
            col = get_slot_colour(3)
        }
        break;
        /*
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
        */
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


//outlines for dark bgs
var alt_cur = get_player_color(player);
if alt_cur == 0 {
    gpu_set_alphatestenable(true);
    gpu_set_fog(1, c_white, 0, 1);
    gpu_set_blendmode_ext(bm_src_alpha, bm_dest_color)
    var _alpha = 0.3
    //draw_rectangle_color(x - 128, y - 128, x + 128, y + 128, c_white,c_white,c_white,c_white,false)
    //draw_rectangle_color(x - 128, y - 128, x + 128, y + 128, c_white,c_white,c_white,c_white,false)
    //gpu_set_blendmode_ext(bm_dest_color,bm_zero)
    //draw_rectangle_color(x - 128, y - 128, x + 128, y + 128, c_white,c_white,c_white,c_white,false)
    //draw_rectangle_color(x - 128, y - 128, x + 128, y + 128, c_white,c_white,c_white,c_white,false)
    draw_sprite_ext(sprite_index, image_index, x + 2, y, 2*spr_dir, 2, 0, c_white, _alpha)
    draw_sprite_ext(sprite_index, image_index, x - 2, y, 2*spr_dir, 2, 0, c_white, _alpha)
    draw_sprite_ext(sprite_index, image_index, x, y + 2, 2*spr_dir, 2, 0, c_white, _alpha)
    draw_sprite_ext(sprite_index, image_index, x, y - 2, 2*spr_dir, 2, 0, c_white, _alpha)
    gpu_set_blendmode(bm_normal)
    gpu_set_fog(0, c_white, 0, 0);
    gpu_set_alphatestenable(false);
}

shader_start()

if fireblast_state > 0 {
    if fireblast_state == 1 var emitter_vars = [0, x + 30*spr_dir, y - 40, spr_dir]
    if fireblast_state == 2 var emitter_vars = [1 + (floor(fireblast_timer/4) mod 4), x + 28*spr_dir, y - 44 + 2*(7 - image_index)]
    if fireblast_state == 3 var emitter_vars = [clamp(5 + floor(window_timer/4), 5, 7), x + 28*spr_dir, y - 42]
    
    if fireblast_state >= 1 && fireblast_state <= 2 {
        draw_sprite_general(sprite_get("fireblast_beam"), fireblast_timer/3, 0, 0, fireblast_dist/2, 64, x + 58*spr_dir - 29*dsin(fireblast_angle)*spr_dir, y - 40 - 29*dcos(fireblast_angle), 2*spr_dir, 2, fireblast_angle*spr_dir, c_white,c_white,c_white,c_white, 1)
        draw_sprite_ext(sprite_get("fireblast_head"), (fireblast_timer/4) mod 2, fireblast_end_pos[0], fireblast_end_pos[1], 2*spr_dir, 2, fireblast_angle*spr_dir, c_white, 1)
    }
    /*
    if fireblast_state >= 1 && fireblast_state <= 3 {
        draw_sprite_ext(sprite_get("laser_emitter"), emitter_vars[0], emitter_vars[1], emitter_vars[2], 2*spr_dir, 2, fireblast_angle*spr_dir, c_white, 1)
    }
    */
    
    if fireblast_state == 3 && window_timer <= 6 {
        draw_sprite_ext(sprite_get("fireblast_head"), 2, fireblast_end_pos[0], fireblast_end_pos[1], 2*spr_dir, 2, fireblast_angle*spr_dir, c_white, 1)
        draw_sprite_general(sprite_get("fireblast_dissipate"), floor(window_timer/3.2), 0, 0, fireblast_dist/2, 64, x + 58*spr_dir - 29*dsin(fireblast_angle)*spr_dir, y - 40 - 29*dcos(fireblast_angle), 2*spr_dir, 2, fireblast_angle*spr_dir, c_white,c_white,c_white,c_white, 1)
    }
}
shader_end()

if tcoart_timer > 0 {
    var t_e = tcoart_timer_max - tcoart_timer
    var _scale = ease_quadInOut(0, 1, clamp(t_e, 0, 12), 12)
    var _alpha = tcoart_timer/12
    draw_sprite_ext(sprite_get("paper"), 0, tcoart_coords[0] + 100 - 100*_scale, tcoart_coords[1] + 300 - 300*_scale, _scale, _scale, 0, c_white, _alpha)
    draw_sprite_ext(tcoart_spr, 0, tcoart_coords[0] + 100 - 98*_scale, tcoart_coords[1] + 300 - 298*_scale, _scale, _scale, 0, c_white, _alpha)
}

#define get_slot_colour(slot)
var p_col = get_player_color(player)
var col_r = get_color_profile_slot_r(p_col, slot)
var col_g = get_color_profile_slot_g(p_col, slot)
var col_b = get_color_profile_slot_b(p_col, slot)
var col_final = make_color_rgb(col_r, col_g, col_b);
return col_final