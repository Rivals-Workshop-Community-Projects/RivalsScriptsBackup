// MunoPhone Touch code - don't touch
// should be at TOP of file
muno_event_type = 4;
user_event(14);

var alt = get_player_color(player);

//RESPAWN PLATFORM ============================================================================
if state = PS_RESPAWN || respawn_taunt {
    shader_start();
        draw_sprite_ext(plat_sprite, 0, plat_x, plat_y, alt = 17 ? 2 : plat_dir*2, 2, 0, c_white, 1);
	shader_end();
}

//VIRTUAL BOY SHADER ==========================================================================
if alt = 26 {
    shader_start();
        draw_sprite_ext(sprite_index, image_index, x, y, 2*spr_dir, 2, 0, c_red, 1);
	shader_end();
}

//TAUNT SHENNANS
if attack = AT_TAUNT && taunt_type = 2 && (state = PS_ATTACK_AIR || state = PS_ATTACK_GROUND) {
    draw_sprite(sprite_get("prince_bully"), 0, x, y);
    draw_sprite(sprite_get("waaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"), 0, x-88, y-160);
}

//FSPECIAL DASH OVERLAY =======================================================================
if attack = AT_FSPECIAL {

    switch window {
	    case 3:
	    case 5:
	    case 6:
	    case 7:
            shader_start();
                draw_sprite_ext(sprite_get("fspecial_effect"), window_timer/2, x, y, spr_dir*2, 2, 0, alt = 26 ? c_red : c_white, 1);
	        shader_end();
        break;
		case 4:
		case 8:
		case 9:
		case 10:
		    if window_timer < 2 {
		    shader_start();
                draw_sprite_ext(sprite_get("fspecial_effect"), window_timer/4, x, y, spr_dir*2, 2, 0, alt = 26 ? c_red : c_white, 0.5);
	        shader_end();
			}
		break;
	}
}

//NSPECIAL HEAT GLOW ==========================================================================
if ((state = PS_ATTACK_GROUND || state = PS_ATTACK_AIR) && attack = AT_NSPECIAL) || n_charge_stored {
    var alpha_lol = 0;
    if window = 2 && attack = AT_NSPECIAL {
	    alpha_lol = (window_timer / 30) / 2;
	}
    if window = 3 && attack = AT_NSPECIAL {
	    alpha_lol = (window_timer / 8) / 2;
	} else if n_charge_stored {
	    alpha_lol = (get_gameplay_time()%20 / 20) / 4;
	}
	
	    gpu_set_fog(1, nspecial_glow_colour, 0, 1);
	    draw_sprite_ext(sprite_index, image_index, x, y, spr_dir*2, 2, 0, c_white, alpha_lol);
        gpu_set_fog(0, c_white, 0, 0);
}

//GB FIX ======================================================================================
//cant spawn a proj on the first frame of the window for muno reasons
//and also cant change window timings also for muno reasons
//so this is the simplest visual fix gjhgfgsf

if attack = 40 && window = 3 && window_timer = 0 {
    draw_sprite_ext(sprite_get("phone_proj"), 0, x-8*spr_dir, y-32, spr_dir, 1, 0, c_white, 1);
}

//CSS PATTERN DISCLAIMER ======================================================================
if object_index = oTestPlayer switch alt {
case 1:
case 2:
case 3:
case 12:
case 13:
    var drawxlol = clamp( x, 100, 860 ); //coords stolen from the css patchnote template thank u hyu xoxo
    var drawylol = clamp( (y + 61), 209, room_height-13 );
    textDraw(drawxlol, drawylol-158, "fName", c_white, 0, 1000, fa_center, 1, true, 1, "Patterns are disabled", true);
	textDraw(drawxlol, drawylol-146, "fName", c_white, 0, 1000, fa_center, 1, true, 1, "during CSS testing", true);
break;
}
//=============================================================================================


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