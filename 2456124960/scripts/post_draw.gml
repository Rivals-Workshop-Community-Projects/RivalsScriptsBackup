//draw_debug_text(x, y, string(introTimer));
//draw_debug_text(x, y+20, string(state_timer));
with (obj_article1) {
	//draw_debug_text(x, y - 20, ("decay: " + string(obj_timer)));
}
//draw_sprite(sprite_get("indG"), 0, x + crystalOffset, y + 40);
//draw_debug_text(x, y - 20, (string(crystalOut)));

shader_start();
if (state == PS_ATTACK_GROUND && attack == AT_NSPECIAL) {
	switch (window) {
		case 1:
			if (window_timer > 5 && window_timer < 9) {
				draw_sprite(sprite_get("usmash_chargelaunch"), 0, x + crystalOffset, y);		
			} else if (strong_charge > 0) {
				draw_sprite(sprite_get("usmash_chargeglow"), (strong_charge / 4) % 4, x + crystalOffset, y);
			}
			break;
		case 2:
			draw_sprite(sprite_get("usmash_chargelaunch"), window_timer / 3, x + crystalOffset, y);
			break;
		case 3:
			draw_sprite(sprite_get("usmash_chargelaunch"), 2 + window_timer / 3, x + crystalOffset, y);
			break;
		case 4:
			if (window_timer < 2) {
				draw_sprite(sprite_get("usmash_chargelaunch"), 4, x + crystalOffset, y);			
			} else if (window_timer < 6) {
				draw_sprite(sprite_get("usmash_chargelaunch"), 5, x + crystalOffset, y);				
			}
			break;
		default:
			break;
	}
}
if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_NSPECIAL_AIR) {
	switch (window) {
		case 1:
			break;
		case 2:
			draw_sprite(sprite_get("usmash_chargelaunch"), window_timer / 3, airCrystalSpawnX, airCrystalSpawnY);
			break;
		case 3:
			draw_sprite(sprite_get("usmash_chargelaunch"), 2 + window_timer / 3, airCrystalSpawnX, airCrystalSpawnY);
			break;
		case 4:
			if (window_timer < 2) {
				draw_sprite(sprite_get("usmash_chargelaunch"), 4, airCrystalSpawnX, airCrystalSpawnY);			
			} else if (window_timer < 6) {
				draw_sprite(sprite_get("usmash_chargelaunch"), 5, airCrystalSpawnX, airCrystalSpawnY);				
			}
			break;
		default:
			break;
	}
}
if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_DSPECIAL) {
	if (window == 2 && window_timer > 2) {
			draw_sprite(sprite_get("dspec_charge_lv" + string(round((window_timer+6) / 12))), window_timer / 2, x, y - 30);	
	}
}
shader_end();

var value = 0;
var value_h = 0;
var shouldAvoidAProblem = 0;
if (get_match_setting(SET_HITBOX_VIS)) {
	with (asset_get("pHitBox")) {
		if (true) {
			with (player_id) {
				value = get_hitbox_value(other.attack, other.hbox_num, HG_DAMAGE);
				value_h = get_hitbox_value(other.attack, other.hbox_num, HG_HEIGHT) / 2;
				if (other.attack == AT_NAIR && other.hbox_num == 1) {shouldAvoidAProblem = 1;}
			}
			
			draw_set_font(asset_get("medFont"));
			if (other.activeBuff = 1 && attack != AT_NSPECIAL) {
				if (value > 7) {value += 2}
				else if (value > 3) {value++;}
				value++;
				if (shouldAvoidAProblem == 1) {value++;}
				draw_text_color(x, y-20-value_h, string(value), c_white, c_white, c_green, c_green, 1);
			} else {
				draw_text_color(x, y-20-value_h, string(value), c_white, c_white, c_white, c_white, 1);
			}
		}
	}
}

if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_FSPECIAL) {
	switch(window) {
		case 2:
			draw_sprite(sprite_get("fspec_charge_lv" + string(round((actionMeterFill+25)/50))), window_timer / 2, x + (10 * spr_dir), y - 85);	
			break;
		default:
			break;
	}
}


if (get_player_color(player) == 9 && state == PS_SPAWN) {
	if (state_timer == 1) {
		set_article_color_slot(4, 255, 130, 213 ); //N+M Light
		set_article_color_slot(5, 241, 39, 227 ); //Necklace+Magic
		set_article_color_slot(6, 171, 10, 168 ); //N+M Dark		
	}
	if (shield_down) {
		set_article_color_slot(4, 171, 255, 175 ); //N+M Light
		set_article_color_slot(5, 39, 241, 49 ); //Necklace+Magic
		set_article_color_slot(6, 10, 171, 18 ); //N+M Dark
	}
}

//print_debug(string(fps_real));