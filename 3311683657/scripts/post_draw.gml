//post-draw

//uspecial

shader_start()
if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_USPECIAL {
    if window != 4 {
        draw_sprite_ext(sprite_get("arrow"), 0, x, y-35, 1, 1, uspec_dir, c_white, 1)
    }
    
    if image_index > 2 && image_index < 9 {
        draw_sprite_ext(uspec_rotate_spr, image_index, x, y - 35, spr_dir, 1, uspec_draw_dir-90, c_white, 1)
    }
}

//water blast
if draw_jet {
    var jet_limit = clamp(draw_jet_timer, 1, 14)*2
    for (var i = 0; i < jet_limit; i++) {
        draw_sprite_ext(sprite_get("jet"), jet_array[i][0], jet_array[i][1], jet_array[i][2], 1, 1, jet_array[i][3], c_white, 1)
        if i == jet_limit - 1 {
            draw_sprite_ext(sprite_get("jet_head"), 0, jet_array[i][1], jet_array[i][2], 1, clamp(1-((draw_jet_timer-6)/10), 0, 1), jet_array[i][3], c_white, 1)
        }
    }
    
    if draw_jet_timer < 12 {
        draw_sprite_ext(sprite_get("jet_blast"), clamp(floor(draw_jet_timer/3),0,3), x, y-35, 1, 1, uspec_draw_dir, c_white, 1)
    }
}
shader_end()