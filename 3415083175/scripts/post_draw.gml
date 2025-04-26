//post-draw


shader_start()

for (var i = 0; i < array_length(tco_draw_sprites); i++) {
    var spr = tco_draw_sprites[i]
    if sprite_index == sprite_get(spr) {
        draw_sprite_ext(sprite_get(spr + "_draw"), image_index, x, y, 2*image_xscale, 2*image_yscale, image_angle, c_white, image_alpha)
    }
}

if fire_stance {
    for (var i = 0; i < array_length(fire_draw_sprites); i++) {
        var spr = fire_draw_sprites[i]
        if sprite_index == sprite_get(spr) {
            draw_sprite_ext(sprite_get(spr + "_fire_draw"), image_index, x, y, 2*image_xscale, 2*image_yscale, image_angle, c_white, image_alpha)
        }
    }
}

if laser_state > 0 {
    if laser_state == 1 var emitter_vars = [0, x + 30*spr_dir, y - 40, spr_dir]
    if laser_state == 2 var emitter_vars = [1 + (floor(laser_timer/4) mod 4), x + 28*spr_dir, y - 44 + 2*(7 - image_index)]
    if laser_state == 3 var emitter_vars = [clamp(5 + floor(window_timer/4), 5, 7), x + 28*spr_dir, y - 42]
    
    if laser_state >= 1 && laser_state <= 2 {
        draw_sprite_general(sprite_get("laser_beam"), laser_timer/4, 0, 0, laser_dist/2, 64, x + 28*spr_dir - 32*dsin(laser_angle)*spr_dir, y - 44 - 32*dcos(laser_angle), 2*spr_dir, 2, laser_angle*spr_dir, c_white,c_white,c_white,c_white, 1)
        draw_sprite_ext(sprite_get("laser_head"), (laser_timer/4) mod 2, laser_end_pos[0], laser_end_pos[1], 2*spr_dir, 2, laser_angle*spr_dir, c_white, 1)
    }
    
    if laser_state >= 1 && laser_state <= 3 {
        draw_sprite_ext(sprite_get("laser_emitter"), emitter_vars[0], emitter_vars[1], emitter_vars[2], 2*spr_dir, 2, laser_angle*spr_dir, c_white, 1)
    }
    
    if laser_state == 3 && window_timer <= 6 {
        draw_sprite_ext(sprite_get("laser_head"), 2, laser_end_pos[0], laser_end_pos[1], 2*spr_dir, 2, laser_angle*spr_dir, c_white, 1)
        draw_sprite_general(sprite_get("laser_dissipate"), floor(window_timer/3.2), 0, 0, laser_dist/2, 64, x + 28*spr_dir - 32*dsin(laser_angle)*spr_dir, y - 44 - 32*dcos(laser_angle), 2*spr_dir, 2, laser_angle*spr_dir, c_white,c_white,c_white,c_white, 1)
    }
}


shader_end()