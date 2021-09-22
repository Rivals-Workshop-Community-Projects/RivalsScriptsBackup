//FSpecial cooldown ended

// switch(special_cooldown){
// 	case 0:
// 	case 1:
// 	case 2:
// 	case 3:
// 	case 4:
// 	case 5:
// 	case 11:
// 	case 12:
// 	case 13:
// 	case 14:
// 	case 15:
// 		//draw_sprite(spr_hud_fspecial_cooldown, 0, x, y - char_height - hud_offset - 20);
// 		break;
// 	default:
// 		draw_sprite_ext(spr_hud_fspecial_cooldown, 0, x, y - char_height - hud_offset - 20, 1, 1, 0, c_black, 0.75);
// }



//Chord duration bar

if guitar.chord{
	var cj = guitar.chord_juice;
	var cjm = guitar.chord_juice_max;
	
	var draw_width = 40;
	if (cj < 3){
		draw_width = max(ease_quadIn(0, 40, cj, 3), 0);
	}
	
	var draw_color = chord_color[guitar.chord];
	if guitar.chord_juice_flash draw_color = c_white;
	
	meterDraw(x, y - char_height - hud_offset - 74 + phone_hud_hidden * 40, draw_width, 8, draw_color, clamp(cj / cjm, 0, 1), 1, chord_active ? 1 : 0.5, true);
}



//Chord menu

if (chord_menu_state){
    var pos = 1;
    switch(chord_menu_state){
        case 1:
            pos = ease_cubeInOut(0, 1, chord_menu_timer, chord_menu_timer_length);
            break;
        case 3:
            pos = ease_cubeInOut(1, 0, chord_menu_timer, chord_menu_timer_length);
    }
    
    for (var i = 1; i <= num_chords; i++){
        var off_angle = chord_menu_angle[i];
        var draw_scale = 1;
        var draw_rot = 0;
        var draw_col = chord_color[i];
        var draw_alpha = pos * 0.6;
        
        var cd = guitar.chord_cooldown[i];
        var cd_max = guitar.chord_cooldown_max;
        
        var ju = guitar.chord_juice;
        var ju_max = guitar.chord_juice_max;
        
        if (cd && !(cd < 60 && !(cd mod 10 < 5))){
            draw_col = make_color_rgb(60, 60, 60);
        }
        else if (cd == clamp(cd, -5, 0) || (guitar.chord == i && ju < ju_max - 5)){
            draw_col = c_white;
        }
    
        var draw_dist = chord_menu_distance * pos;
        
        if (i == chord_menu_cursor){
            var select_time = 3;
            var effect_intensity = (joy_pad_idle ? ease_linear(1, 0, clamp(chord_menu_idle_timer - 5, 0, 5), 5) : ease_linear(0, 1, clamp(chord_menu_cursor_timer, 0, select_time), select_time));
            draw_rot += sin(chord_menu_cursor_timer / 10) * 10 * effect_intensity;
            draw_scale *= 1 + effect_intensity * 0.4;
            //draw_dist *= 1 + effect_intensity * 0.1;
            draw_alpha += effect_intensity * 0.4;
        }
        
        var draw_x = round(x + lengthdir_x(draw_dist, off_angle));
        var draw_y = round(y + lengthdir_y(draw_dist, off_angle) - char_height / 2);
        var draw_x_meter = draw_x;
        
        if (i == chord_menu_cursor){
            draw_x -= ease_quadOut(0, 10, round(effect_intensity * 100), 50) * !joy_pad_idle;
        }
        
        draw_sprite_ext(spr_hud_chord_icons, i, draw_x, draw_y, draw_scale, draw_scale, draw_rot, draw_col, draw_alpha);
        
        if (cd){
            meterDraw(draw_x_meter, draw_y + 32, 64, 8, chord_color[i], (cd_max - cd) / cd_max, draw_alpha * 1.5, 1, true);
        }
        
        if (guitar.chord == i && ju < ju_max - 10){
        	meterDraw(draw_x_meter, draw_y + 32, 64, 8, c_white, ju / ju_max, draw_alpha * 1.5, 1, true);
        }
        
        //draw_debug_text(draw_x, draw_y, string(chord_menu_test[i]));
    }
    
    //draw_debug_text(x, y, string(chord_active));
}



shader_start();

if (phone_attacking  && attack == AT_TAUNT && "taunt_open_amount" in self){
    var pos = taunt_open_amount;
    
    for (var i = 0; i < 8; i++){
        var off_angle = -45 * i + 90;
        var draw_scale = 1;
        var draw_rot = 0;
        var draw_col = c_white;
        var draw_alpha = pos * 0.6;
    
        var draw_dist = chord_menu_distance * pos;
        
        if (i == taunt_menu_cursor){
            var select_time = 3;
            var effect_intensity = (ease_linear(0, 1, clamp(taunt_menu_cursor_timer, 0, select_time), select_time));
            draw_rot += sin(taunt_menu_cursor_timer / 10) * 10 * effect_intensity;
            draw_scale *= 1 + effect_intensity * 0.4;
            //draw_dist *= 1 + effect_intensity * 0.1;
            draw_alpha += effect_intensity * 0.4;
        }
        
        var draw_x = round(x + lengthdir_x(draw_dist, off_angle));
        var draw_y = round(y + lengthdir_y(draw_dist, off_angle) - char_height / 2);
        var draw_x_meter = draw_x;
        
        if (i == chord_menu_cursor){
            draw_x -= ease_quadOut(0, 10, round(effect_intensity * 100), 50) * !joy_pad_idle;
        }
        
        draw_sprite_ext(spr_hud_notes, i + 8 * taunt_sharp, draw_x, draw_y, draw_scale, draw_scale, draw_rot, draw_col, draw_alpha);
        
        if (cd){
            meterDraw(draw_x_meter, draw_y + 32, 64, 8, chord_color[i], (cd_max - cd) / cd_max, draw_alpha * 1.5, 1, true);
        }
        
        if (guitar.chord == i && ju < ju_max - 10){
        	meterDraw(draw_x_meter, draw_y + 32, 64, 8, c_white, ju / ju_max, draw_alpha * 1.5, 1, true);
        }
        
        //draw_debug_text(draw_x, draw_y, string(chord_menu_test[i]));
    }
    
    //draw_debug_text(x, y, string(chord_active));
}

shader_end();



muno_event_type = 4;
user_event(14);



#define meterDraw(center, top, width, height, color, amount, alpha, alpha2, border)

var left = center - width * 0.5;

draw_set_alpha(alpha);

rectDraw(left, top, width, height, c_black);
rectDraw(left + 2, top + 2, width - 4, height - 4, make_color_rgb(60, 60, 60));
if border rectDraw(left + 2, top + 2, min(((width - 4) * amount / 2) * 2 + 2, width - 4), height - 4, c_white);

draw_set_alpha(alpha * alpha2);

rectDraw(left + 2, top + 2, ((width - 4) * amount / 2) * 2, height - 4, color);

draw_set_alpha(1);



#define rectDraw(left, top, width, height, color)

draw_rectangle_color(left, top, left + width - 1, top + height - 1, color, color, color, color, false);