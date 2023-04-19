// MunoPhone Touch code - don't touch
// should be at TOP of file
muno_event_type = 4;
user_event(14);

switch (state) {
    case PS_ATTACK_AIR: 
    case PS_ATTACK_GROUND:
    switch (attack) {
	    case AT_USPECIAL:
	    shader_start();
		if !has_rune("D") {
	    draw_sprite(sprite_get("uspecial_bubble"), image_index - (11 * hatoffs), x, y);
	    } else {
		draw_sprite(sprite_get("uspecial_bubble"), image_index+11 - (11 * hatoffs), x, y);
		}
	    shader_end();
        break;
	
	    case AT_USTRONG:
	    shader_start();
		    if !has_rune("B") {
			draw_sprite(sprite_get("ustrong_laser"), (spr_dir = 1 ? image_index - (8 * hatoffs) : image_index+32 - (8 * hatoffs)), x, y);
	        draw_sprite(sprite_get("ustrong_laser"), (spr_dir = 1 ? image_index+8 - (8 * hatoffs) : image_index+40 - (8 * hatoffs)), x, y);
			} else {
			draw_sprite(sprite_get("ustrong_laser"), (spr_dir = 1 ? image_index+16 - (8 * hatoffs) : image_index+48 - (8 * hatoffs)), x, y);
	        draw_sprite(sprite_get("ustrong_laser"), (spr_dir = 1 ? image_index+24 - (8 * hatoffs) : image_index+56 - (8 * hatoffs)), x, y);
			}
	    shader_end();
		break;
		
		case AT_TAUNT:
		if respawn_taunt{
		plat_index += 0.5;
		shader_start();
		draw_sprite(sprite_get("plat_real"), plat_index, x, y);
		shader_end();
		}
		break;
		
		case AT_FSPECIAL:
		if window != 3 {
		shader_start();
		draw_sprite_ext( sprite_get("lock_on_technology"), 1, lock_x, lock_y, 1, 1, 0, c_white, 1);
		shader_end();
		}
		break;
		case AT_DSPECIAL_AIR:
		if n_sprid = 6 || n_sprid = 8 {
		draw_sprite(sprite_get("dspecial_spike_glow"), (spr_dir = 1 ? image_index +12 - (12) : image_index - (12)), x, y);
		} else {
		draw_sprite(sprite_get("dspecial_spike_glow"), (spr_dir = 1 ? image_index +12 - (12 * hatoffs) : image_index - (12 * hatoffs)), x, y);
		}
		break;
	}
	break;
	
	case PS_RESPAWN:
	//this sound effect code is in here because Dan Moment(TM) For some reason draw scripts only count respawn state while on the platform while update counts it from the moment of death
    if respawnsound == true && !hitpause{
    sound_play(sound_get("shelly_respawn"));
	plat_index = 0;
    respawnsound = false;
    }
	plat_index += 0.2;
	shader_start();
	draw_sprite(sprite_get("plat_real"), plat_index, x, y);
	shader_end();
	break;
	
    case PS_PARRY:
	draw_sprite(sprite_get("parry_fx"), image_index+21, x, y);
	if parry_success {
	shader_start();
	    if get_player_color(player) = 0 || get_player_color(player) = 2 || get_player_color(player) = 3 || get_player_color(player) = 4 || get_player_color(player) = 5 { 
		draw_sprite(sprite_get("parry_fx"), image_index, x, y);
		} else {
		draw_sprite(sprite_get("parry_fx"), image_index+7, x, y);
		}
	shader_end();
	}
	break;
}

if phone_cheats[CHEAT_YO] =  1 {
draw_debug_text(x - 7, y + 4, "yo");
}

if mistake < 101 && mistake > 0 {
draw_debug_text(x - 71, y + 6, "YOUR MISTAKE, BUDDY");
}

#define rectDraw(x1, y1, width, height, color)

draw_rectangle_color(x1, y1, x1 + width, y1 + height, color, color, color, color, false);



#define textDraw(x1, y1, font, color, lineb, linew, align, scale, outline, alpha, text, array_bool)

draw_set_font(asset_get(font));
draw_set_halign(align);

if outline {
    for (i = -1; i < 2; i++) {
        for (j = -1; j < 2; j++) {
            draw_text_ext_transformed_color(x1 + i * 2, y1 + j * 2, text, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
        }
    }
}

if alpha draw_text_ext_transformed_color(x1, y1, text, lineb, linew, scale, scale, 0, color, color, color, color, alpha);

if array_bool return [string_width_ext(text, lineb, linew), string_height_ext(text, lineb, linew)];
else return;