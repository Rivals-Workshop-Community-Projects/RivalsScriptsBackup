//debug
//draw_debug_text( x - 20, y + 40, "window: " + string( window ));
//draw_debug_text( x - 20, y + 52, "window timer: " + string( window_timer ));
//draw_debug_text( x - 20, y + 64, "state timer: " + string( state_timer ));
//draw_debug_text( x - 20, y + 76, "variable: " + string(variable));

if (hasAltCloth == true && get_player_color(player) == 9){

    if (stance == "pizzaface"){
        draw_sprite_ext(sprite_get("pizzaface_halloween_idle"), get_gameplay_time() * idle_anim_speed, x, y + sin(get_gameplay_time()/16)*4, 2 * spr_dir, 2, 0, -1, 1);

    } else {
        draw_sprite_ext(sprite_get("pizzahead_halloween_idle"), get_gameplay_time() * idle_anim_speed, x, y, 2 * spr_dir, 2, 0, -1, 1);
        
    }
    
    
}


shader_start();



if (attack == AT_NSPECIAL_2 && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)){

    if (window == 1){
        shader_end();
        if (!free){
            draw_sprite_ext(asset_get("triangle_spr"), 0, x + (28 + (28 * (floor(nspecial2_charge / 10) + 4))) * spr_dir, y - 50, 1, 1, 0, get_player_hud_color(player), 1);
        } else {
            draw_sprite_ext(asset_get("triangle_spr"), 0, x + (26 + (20 * (floor(nspecial2_charge / 10) + 3))) * spr_dir, y - 56 + (18 + (20 * (floor(nspecial2_charge / 10) + 4))), 1, 1, 0, get_player_hud_color(player), 1);
        }
	    
        shader_start();
    }

    if (window == 3){

        if (!free){

            for (var i = 0; i < nspecial2_real_length; i += 1){
                draw_sprite_ext(sprite_get("nspecialLeg"), floor(window_timer/3), x + (28 * spr_dir * i), y, 1 * spr_dir, 1, 0, -1, 1);
            }
            draw_sprite_ext(sprite_get("nspecialFoot"), floor(window_timer/3), x + (28 * spr_dir * (nspecial2_real_length - 1)), y, 1 * spr_dir, 1, 0, -1, 1);
        
        } else {
            
            
            for (var i = 0; i < nspecial2_real_length; i += 1){
                draw_sprite_ext(sprite_get("nspecialLeg_air"), floor(window_timer/3), x + (20 * spr_dir * i), y + (20 * i), 1 * spr_dir, 1, 0, -1, 1);
            }
            draw_sprite_ext(sprite_get("nspecialFoot_air"), floor(window_timer/3), x + (20 * spr_dir * (nspecial2_real_length - 1)), y + (20 * (nspecial2_real_length - 1)), 1 * spr_dir, 1, 0, -1, 1);
        }
    }

}

shader_end();


//draw_sprite_ext(sprite_get("what"), get_gameplay_time() * 0.5, x + 150, y - 200, 1 * spr_dir, 1, 0, -1, 1);