//post-draw
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
        var spr = sprite_get("ascend_vfx_1_front")
        var draw_x = x
        var draw_y = spr_height*i - (timer*8) mod spr_height
        draw_sprite_ext(spr, 0, draw_x, draw_y, 1, 1, 0, c_white, draw_alpha)
        
        var spr = sprite_get("ascend_vfx_2_front")
        var draw_y = spr_height*i - ((timer*12) mod spr_height) - spr_height/2
        draw_sprite_ext(spr, 0, draw_x, draw_y, 1, 1, 0, c_white, draw_alpha)
    }
}
*/

//paraglider draw
/*
if trail_timer > 0 {
    var trail_spr = sprite_get("vfx_paraglider_trail")
    var trail_w = 128
    var segment_w = trail_w/trail_segments
    for (var i = 0; i < trail_segments; i++) {
        var segment_data = trail_arr[i]
        if segment_data[0] != undefined && segment_data[1] != undefined {
            draw_sprite_part_ext(trail_spr, 0, i*segment_w, 0, (i+1)*segment_w, 128, segment_data[0], segment_data[1], 1, 1, c_white, 1)
        }
    }
}
*/
/*
draw_primitive_begin(pr_trianglestrip)
var coords = [100, -100, 300, -200] //x1, y1, x2, y2
draw_vertex_color(x + coords[0], y + coords[1], c_white, 1)
draw_vertex_color(x + coords[0], y + coords[3], c_white, 1) //diagonal 1
draw_vertex_color(x + coords[2], y + coords[1], c_white, 0.1) //diagonal 2
draw_vertex_color(x + coords[2], y + coords[3], c_white, 0.1)
draw_primitive_end()
*/
shader_start()

//uspecial trails
if trail_timer > 0 {
    var x_offset = -40*spr_dir
    var y_offset = -100
    draw_sprite_ext(sprite_get("vfx_paraglider_trail"), floor(trail_timer/6), x + x_offset, y + y_offset, clamp(abs(hsp)/4, 0.3, 10), vsp/3, darctan2(-vsp/2, hsp), c_white, 1)
}

//respawn plat battery
if state == PS_RESPAWN {
    //draw_sprite_ext(sprite_get("plat"), 0, x, y, spr_dir, 1, 0, c_white, 1)
    var plat_timer = 5 - (state_timer/60) + 0.5;
    var col = merge_color(get_slot_colour(0), c_white, 0.5)
    var draw_x = x + 38*spr_dir
    var draw_y = y - 12
    var draw_w = 9*spr_dir - 2*(spr_dir == -1)
    var draw_h = clamp(9 * plat_timer/5, 0.5, 9)
    draw_rectangle_color(draw_x, draw_y, draw_x + draw_w, draw_y - draw_h, col,col,col,col,false)
}

//ustrong reticle
if state_attacking && attack == AT_USTRONG {
    var reticle_alpha = 0
    if window == 1 reticle_alpha = window_timer/window_length
    if window == 2 || window == 3 reticle_alpha = 1
    draw_sprite_ext(sprite_get("ustrong_reticle"), floor(timer/2), ustrong_reticle_x, ustrong_reticle_y, 1, 1, 0, c_white, reticle_alpha)
}

//earthwake wisp
/*
if state_attacking && attack == AT_DSTRONG {
    if window == 2 || window == 3 {
        draw_sprite_ext(sprite_get("vfx_earthwake_wisp"), floor(timer/4), x + spr_dir*dstrong_earthwake_dist*4, y, 1, 1, 0, c_white, 1)
    }
}
*/

//fspec rocket
if sprite_index == sprite_get("fspecial_rocket") {
    if image_index == 5 || image_index == 6 {
        draw_sprite_ext(sprite_get("vfx_fspec_rocket"), state_timer/4, x, y, image_xscale, image_yscale, image_angle, c_white, 1)
    }
}

//intro anim
var intro_time = get_gameplay_time()-12;
var intro_frames = 18;
var intro_length = 80;
var im_index = floor(intro_time/(intro_length/intro_frames))
if intro_time < intro_length {
    draw_sprite_ext(sprite_get("intro"), im_index, intro_x, intro_y, spr_dir, 1, 0, c_white, 1)
}

shader_end()

#define get_slot_colour(slot)
var p_col = get_player_color(player)
var col_r = get_color_profile_slot_r(p_col, slot)
var col_g = get_color_profile_slot_g(p_col, slot)
var col_b = get_color_profile_slot_b(p_col, slot)
var col_final = make_color_rgb(col_r, col_g, col_b);
return col_final