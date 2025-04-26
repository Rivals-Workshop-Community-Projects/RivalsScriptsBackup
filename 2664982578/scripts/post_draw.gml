// MunoPhone Touch code - don't touch
// should be at TOP of file
/*
muno_event_type = 4;
user_event(14);
*/

if(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
if(attack == AT_EXTRA_1){
	if(window == 3){
		draw_sprite(sprite_get("magic_burst"), (window_timer/4), x, y - 10);
	}if(window == 4){
		draw_sprite(sprite_get("magic_burst_loop"), (window_timer/4), x, y - 10);
	}if(window == 5){
		draw_sprite(sprite_get("magic_burst_loop"), (window_timer/4), x, y - 10);
	}
}
}

if(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
if(attack == AT_FSPECIAL){
	if(window == 4){
		if(spr_dir == 1){
		if(window_timer < 6){
		draw_sprite(sprite_get("fspecial_whiff_vfx"), (window_timer/4), x + spr_dir - 3, y - 60);
		}		if(window_timer >= 6){
			if(window_timer <= 24){
		draw_sprite(sprite_get("fspecial_whiff_vfx"), 2, x + spr_dir - 3, y - 60);
			}
		}		if(window_timer > 24){
		draw_sprite(sprite_get("fspecial_whiff_vfx2"), (window_timer/4), x + spr_dir - 3, y - 60);
		}
	}		if(spr_dir == -1){
		if(window_timer < 6){
		draw_sprite(sprite_get("fspecial_whiff_vfx"), (window_timer/4), x + spr_dir + 3, y - 60);
		}		if(window_timer >= 6){
			if(window_timer <= 24){
		draw_sprite(sprite_get("fspecial_whiff_vfx"), 2, x + spr_dir + 3, y - 60);
			}
		}		if(window_timer > 24){
		draw_sprite(sprite_get("fspecial_whiff_vfx2"), (window_timer/4), x + spr_dir + 3, y - 60);
		}
	}
	}
}
}

if(charm_timer > 0){
	textDraw(x, y + 12, "fName",c_white, 14, 1000, fa_center, 1, 1, 1, string(round(charm_timer/60)), 0);
}

if(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
if(attack == AT_BAIR){
	if(window == 1 && window_timer > 3){
	draw_sprite(sprite_get("we_do_a_little_trolling_3"), (window_timer/1.5) - 2, x - 50 * spr_dir, y - 20);
	}if(window == 2){
	draw_sprite(sprite_get("we_do_a_little_trolling_3"), (window_timer/1.5) + 3, x - 50 * spr_dir, y - 20);
	}
}
}
#define textDraw(x1, y1, font, color, lineb, linew, align, scale, outline, alpha, text, array_bool)

draw_set_font(asset_get(font));
draw_set_halign(align);

if outline {
    for (i = -1; i < 2; i++) {
        for (j = -1; j < 2; j++) {
            draw_text_ext_transformed_color(floor(x1) + i * 2, floor(y1) + j * 2, text, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
        }
    }
}

if alpha draw_text_ext_transformed_color(x1, y1, text, lineb, linew, scale, scale, 0, color, color, color, color, alpha);

if array_bool return [string_width_ext(text, lineb, linew), string_height_ext(text, lineb, linew)];
else return;