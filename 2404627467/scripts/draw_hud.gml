//Final Smash shenanigains
if (attack == 49) {
    var view_x = 0
    var view_y = 0
    if (window == 6) {
        var length = get_window_value(attack, window, AG_WINDOW_LENGTH);
        draw_set_alpha(0.01 * ease_linear(0, 100, window_timer, length))
        draw_rectangle_color(0, 0, room_width, room_height, c_white, c_white, c_white, c_white, false)
        draw_set_alpha(1);
    }
    if (window == 7) {
        draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false)
        
        if (window_timer >= 90 && window_timer <= 240) {

            var view_x = 8 - random_func(0, 16, true);
            var view_y = 8 - random_func(0, 16, true);
        }
        if (window_timer >= 276 && window_timer <= 380) {

            var view_x = 12 - random_func(0, 16, true);
            var view_y = 12 - random_func(0, 16, true);
        }
        
        if (window_timer >= 0 && window_timer <= 240) {
            draw_sprite_ext(sprite_get("fs_bg1"), 0, view_x, view_y, 2, 2, 0, c_white, 1);
            var blend = gpu_get_blendmode();
            gpu_set_blendmode(bm_add); //use additive blending for next draw_* calls
            draw_sprite_ext(sprite_get("fs_bg2"), 0, view_x + 480, view_y + 270, 2, 2, window_timer, c_white, 1);
            gpu_set_blendmode(blend); //goes back to whatever blend mode you were in.
            
            var anthem_image = 0;
            
            if (window_timer >= 90 && window_timer <= 190) {
                anthem_image = ease_linear(0, 4, window_timer - 90, 100);
            }
            if (window_timer > 190) {
                anthem_image = 4;
            }
            shader_start()
            draw_sprite_ext(sprite_get("final_smash_cinematic"), anthem_image, view_x + 480, view_y + 270, 1, 1, 0, c_white, 1)
            shader_end(); 
            
    		for (var i = 0; i < ds_list_size(fs_players); i++) {
                var draw_x = 480 + 128 * (i - ceil(ds_list_size(fs_players) / 2))
                        
    		    with(fs_players[| i]) {
                    shader_start();
                    if (small_sprites = 1){
                        draw_sprite_ext(sprite_index, -1, view_x + draw_x, view_y + 480, 2, 2, 0, c_white, 1)
                    }
                    else {
                        draw_sprite_ext(sprite_index, -1, view_x + draw_x, view_y + 480, 1, 1, 0, c_white, 1)
                    }    
                    shader_end(); 
    		    }
    		}
        }
        
        if (window_timer >= 0 && window_timer <= 60) {
            var length = 60;
            draw_set_alpha(0.01 * ease_linear(100, 0, window_timer, length))
            draw_rectangle_color(0, 0, room_width, room_height, c_white, c_white, c_white, c_white, false)
            draw_set_alpha(1);
        }
        
        if (window_timer >= 90 && window_timer <= 240) {
            var length = 240 - 90;
            var blend = gpu_get_blendmode();
            gpu_set_blendmode(bm_add); //use additive blending for next draw_* calls
            draw_sprite_ext(sprite_get("fs_bg2b"), 0, view_x, view_y, 2, 2, 0, c_white, 0.01 * ease_linear(0, 100, window_timer - 90, length));
            draw_sprite_ext(sprite_get("fs_bg2c"), ease_linear(0, 44, window_timer - 90, length), view_x, view_y, 2, 2, 0, c_white, 1);
            gpu_set_blendmode(blend); //goes back to whatever blend mode you were in.
        } 
        
        if (window_timer > 240 && window_timer <= 272) {
            var length = 241 - 272;
            draw_sprite_ext(sprite_get("fs_bg3"), 0, view_x, view_y, 2, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("fs_bg4"), 0, view_x + 480, view_y + 512, 1, 1, 0, c_white, 1);
        }
        
        if (window_timer > 272 && window_timer < 276) {
            draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false)
        }
        if (window_timer >= 276 && window_timer <= 480) {
            draw_sprite_ext(sprite_get("fs_bg3"), 0, view_x, view_y, 2, 2, 0, c_white, 1);
            draw_set_alpha(0.5)
            draw_rectangle_color(0, 0, room_width, room_height, c_white, c_white, c_white, c_white, false)
            draw_set_alpha(1);
            var length = 200;
            var blend = gpu_get_blendmode();
            gpu_set_blendmode(bm_add);
            draw_sprite_ext(sprite_get("fs_fx2"), ease_linear(0, 17, window_timer - 276, length), view_x, view_y, 2, 2, 0, c_white, 1);
            gpu_set_blendmode(blend); //goes back to whatever blend mode you were in.
            
            draw_sprite_ext(sprite_get("fs_bg4"), 1, view_x + 480, view_y + 512, 1, 1, 0, c_white, 1);
            if (window_timer > 400) {
                var length = 80;
                draw_set_alpha(0.01 * ease_linear(0, 100, window_timer - 400, length))
                draw_rectangle_color(0, 0, room_width, room_height, c_white, c_white, c_white, c_white, false)
                draw_set_alpha(1);
            }
        }
    }
}