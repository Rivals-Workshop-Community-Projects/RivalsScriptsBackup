// post_draw.gml
// this script draws sprites IN FRONT the player character


//draw_debug_text(floor(x),floor(y),string(charged_nspecial_timer))



gpu_push_state()
with pHitBox {
    var threshold = length - 24;
    
    if player_id == other and attack == AT_NSPECIAL and hbox_num == 1 and hitbox_timer >= threshold {
        if powder == 2 { //cluster
            gpu_set_blendmode(bm_add)
            var alpha = (hitbox_timer - threshold) / (length-threshold)
            var num = sprite_get_number(sprite_get("bomb_warning_circle"))
            for (var p = 0; p < num; p++) {
                var alpha_mult = (1-((p+1) / (num+1))) * 0.4 * alpha
                var spin_direction = p mod 2 == 0 ? -1 : 1
                draw_sprite_ext(sprite_get("bomb_warning_circle"), p, x, y, 2, 2, spin_direction * (get_gameplay_time()), c_white, alpha_mult);
            }
            gpu_set_blendmode(bm_normal)
        }
        
        if hitbox_timer mod 4 == 0 {
            gpu_set_fog(1, c_white, 0, 1)
            gpu_set_blendmode(bm_add)
            var value = (hitbox_timer - threshold) / (length - threshold)
            draw_sprite_ext(sprite_index, image_index, floor(x), floor(y), spr_dir, 1, proj_angle, c_white, value)
        }
    }
}
gpu_pop_state()

if (display_timer != -1) {
    var timer = display_intro ? display_timer : display_max_time- display_timer
    var separation = ease_cubeOut(30, 86, timer, display_max_time);
    //print(timer)
    shader_start()
    var j = 0;
    var angle_base = [270, 90, 180, 0]
    repeat (4) {
        // var offset = display_intro*ease_quartIn(-20,0, display_timer, display_max_time)
        
        var al = 1;
        if !display_intro and j != current_bomb_powder {
            al = lerp(1, 0, min(display_timer, 16)/16)
        }
        
        var xx = x + lengthdir_x(separation, angle_base[j]);
        var yy = y - (char_height/1.7) + lengthdir_y(separation, angle_base[j]);
        
        var arrow_xx = x + lengthdir_x(separation/2.1, j*90);
        var arrow_yy = y - (char_height/1.7) + lengthdir_y(separation/2.1, j*90);
        
        var scale = display_selected and j == current_bomb_powder ? 1 + (max(timer-9, 0)/7) : 1 
        var text_xx = xx - 12
        var text_yy = yy + 14 + 8;      
        
        if display_intro {
            draw_sprite_ext(sprite_get("hud_box"), j == current_bomb_powder, xx, yy, 1, 1, 0, c_white, 1)
            draw_sprite_ext(sprite_get("hud_arrow"), 0, arrow_xx, arrow_yy, 1, 1, 90*j, c_white, 1)
        }
        
        if j == current_bomb_powder {
            var theta = 0;
            repeat (4) {
                var xx_add = lengthdir_x(2,theta)
                var yy_add = lengthdir_y(2,theta)
                draw_sprite_ext(sprite_get("powder_hud_custom_outline"), j, floor(xx + xx_add), floor(yy + yy_add), scale, scale, 0, c_white, al)
                theta += 90
            }
        }
        j++;
    }
    
    shader_end()
    
    for (var i = 0; i < 4; i++) {
        var al = 1;
        
        if !display_intro and i != current_bomb_powder {
            al = lerp(1, 0, min(display_timer, 16)/16)
        }
        
        var xx = x + lengthdir_x(separation, angle_base[i]);
        var yy = y - (char_height/1.7) + lengthdir_y(separation, angle_base[i]);
        var scale = display_selected and i == current_bomb_powder ? 1 + (max(timer-9, 0)/7) : 1;
        
        draw_sprite_ext(sprite_get("powder_hud_custom"), i, xx, yy, scale, scale, 0, i == current_bomb_powder ? c_white : c_gray, al)        
    }
}

