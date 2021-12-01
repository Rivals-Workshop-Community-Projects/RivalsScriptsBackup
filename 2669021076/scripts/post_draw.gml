// post-draw is a script that draws things in front of the player

// attack effects
if state = clamp(state, 5, 6) switch attack {
    // Crabhammer
    case AT_NSPECIAL:
        var alpha;
        
        if window < 2 { alpha = window_timer / (get_window_value(attack, window, AG_WINDOW_LENGTH) + 1); }
        else if window > 2 { alpha = 1 - window_timer / (get_window_value(attack, window, AG_WINDOW_LENGTH) + 1); }
        else alpha = 1;
        
        draw_sprite_ext(spr_crabhammer1, image_index, x, y, 2*spr_dir, 2, 0, c_white, alpha);
        
        break;
    
    // Crabhammer - charged    
    case AT_NTHROW:
        if window < 2 {
            var alpha = window_timer / (get_window_value(attack, window, AG_WINDOW_LENGTH) + 1);
            draw_sprite_ext(spr_crabhammer2, image_index, x, y, 2*spr_dir, 2, 0, c_white, alpha);
        }
        
        draw_sprite_ext(spr_crabhammer2, image_index, x, y, 2*spr_dir, 2, 0, c_white, alpha);
        
        break;
        
    // Bubble
    case AT_NSPECIAL_2:
        shader_start();
        
        draw_sprite_ext(spr_bubble_shine, image_index, x, y, 2*spr_dir, 2, 0, c_white, 1);
        if get_player_color(player) == 21 { draw_sprite_ext(sprite_get("krabs_bubble_shine"), image_index, x+spr_dir * 4, y, 2, 2, 0, c_white, 1); }
        
        shader_end();
        break;
    
    // Harden
    case AT_DSPECIAL:
        var alpha;
        
        if window < 2 { alpha = 0.5 * window_timer / (get_window_value(attack, window, AG_WINDOW_LENGTH) + 1); }
        else if window > 2 { alpha = 1 - window_timer / (get_window_value(attack, window, AG_WINDOW_LENGTH) + 1); }
        else alpha = 1;
        
        var shhhing_offset = ease_linear(-60, 60, (floor(state_timer/2)*2)%30, 30);
        
        // funny shader stuff
        maskHeader();
        draw_sprite_ext(spr_harden, image_index, x, y, 2*spr_dir, 2, 0, c_white, alpha);
        
        maskMidder();
        draw_sprite_ext(spr_harden, image_index, x, y, 2*spr_dir, 2, 0, c_white, 1);
        if state_timer > 0 { draw_sprite_ext(spr_shhhing, image_index, x + shhhing_offset, y, 2*spr_dir, 2, 0, c_white, 1); }
        
        maskFooter();
        
        break;
        
    // Hardened
    case AT_DTHROW:
        var alpha;
        
        if window > 2 { alpha = 1 - window_timer / (get_window_value(attack, window, AG_WINDOW_LENGTH) + 1); }
        else alpha = 1;
        
        draw_sprite_ext(spr_hardened, image_index, x, y, 2*spr_dir, 2, 0, c_white, alpha);
        
        break;
    // Taunt
    case AT_TAUNT:
        if claws_broken {
            shader_start();
            draw_sprite_ext(spr_sad_taunt, image_index - 8, x, y, 2*spr_dir, 2, 0, c_white, 1);
            shader_end();
        }
}



// hat lol
if wearing_hat {
        draw_sprite_ext(sprite_get("krabs_idle"), image_index, x, y, 2*spr_dir, 2, 0, c_white, 1);
        if initial_invince {
                gpu_set_fog(true, c_white, 0, 0);
                draw_sprite_ext(sprite_get("krabs_idle"), image_index, x, y, 2*spr_dir, 2, 0, c_white, 0.5);
                gpu_set_fog(false, c_white, 0, 0);
        }
}



// draw meter
var meter_x = x - 32;
var meter_y = y - 30 - char_height - hud_offset;
var meter_fill = 1 + claws_health * 30 / 100;

draw_sprite_ext(spr_meter, 0, meter_x, meter_y, 2, 2, 0, c_white, 1);

if claws_broken {
    if claws_health >= 100 {
        var meter_alpha = (sin(get_gameplay_time() / 6) + 1) / 2
        draw_sprite_part_ext(spr_meter, 1, 0, 0, meter_fill, 3, meter_x, meter_y, 2, 2, c_white, 1);
        draw_sprite_part_ext(spr_meter, 1, 0, 0, meter_fill, 3, meter_x, meter_y, 2, 2, c_red, meter_alpha);
    }
    else {
        draw_sprite_part_ext(spr_meter, 1, 0, 0, meter_fill, 3, meter_x, meter_y, 2, 2, c_red, 1);
    }
}
else {
    draw_sprite_part_ext(spr_meter, 1, 0, 0, meter_fill, 3, meter_x, meter_y, 2, 2, c_white, 1);
    if claws_brittle {
        var meter_alpha = (sin(get_gameplay_time() / 6) + 1) / 2
        draw_sprite_part_ext(spr_meter, 1, 0, 0, meter_fill, 3, meter_x, meter_y, 2, 2, c_red, meter_alpha);
    }
}



#define maskHeader()
{
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(false, false, false, true);
    draw_set_alpha(0);
    draw_rectangle_color(0, 0, room_width, room_height, c_white, c_white, c_white, c_white, false);
    draw_set_alpha(1);
}

#define maskMidder()
{
    gpu_set_blendenable(true);
    gpu_set_colorwriteenable(true, true, true, true);
    gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_dest_alpha);
    gpu_set_alphatestenable(true);
}

#define maskFooter()
{
    gpu_set_alphatestenable(false);
    gpu_set_blendmode(bm_normal);
    draw_set_alpha(1);
}