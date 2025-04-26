//draw_debug_text(x, y, string(onPlatform));
//draw_debug_text(x, y+20, string(state_timer));
with (obj_article1) {
	//draw_debug_text(x, y - 20, ("decay: " + string(obj_timer)));
}
//draw_sprite(sprite_get("indG"), 0, x + crystalOffset, y + 40);
if ("crystal" in self) {
    //draw_debug_text(x, y - 200, (string(crystal.parriedPlayer)));
    //draw_debug_text(x, y - 220, (string(crystal.parryTarget)));
}

//draw_debug_text(x, y + 40, string(usesAltHud));

shader_start();
if (state == PS_ATTACK_GROUND && attack == AT_NSPECIAL) {
	switch (window) {
		case 1:
			if (window_timer > 5 && window_timer < 7) {
				draw_sprite(sprite_get("usmash_chargelaunch"), 0, x + crystalOffset, y);		
			} else if (strong_charge > 38) {
				draw_sprite(sprite_get("usmash_chargeglow_large"), (strong_charge / 4) % 4, x + crystalOffset, y);
			} else if (strong_charge > 35) {
				draw_sprite(sprite_get("usmash_chargeglow_power"), 0, x + crystalOffset, y);
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

if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && (attack == AT_DSPECIAL || attack == AT_NSPECIAL_2 || attack == AT_FSPECIAL || attack == AT_USPECIAL || attack == AT_USPECIAL_GROUND)) {
	draw_sprite_ext(sprite_get("hud" + string(usesAltHud+1) + "smol"), min(actionMeterFill, min((actionMeterFill / 200) * 26, 25)), x - 40, y + 20, 1, 1, 0, -1, 1);
}

if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_EXTRA_1) {
	if (window == 2 && window_timer > 2) {
			draw_sprite(sprite_get("dspec_charge_lv" + string(round((window_timer+6) / 12))), window_timer / 2, x, y - 30);	
	}
}

with (obj_article_platform) {
	if (player_id == other.id) {
        //print("hi");
		if (juice <= 40) {
            draw_sprite_ext(sprite_get("platform"), 8, x, y, 1, 1, 0, c_black, ((40 - (max(juice, 0))) / 60));
        }
        if (hsp > 7) {
            draw_sprite_ext(sprite_get("platformburst"), juice / 4, x, y, 1, 1, 0, -1, 1);        
        }  
        if (hsp < -7) {
            draw_sprite_ext(sprite_get("platformburst"), juice / 4, x, y, -1, 1, 0, -1, 1);        
        }   
	}
}

shader_end();

with (oPlayer) {
    if ("frozenByNate" in self && frozenByNate > 0) {
        gpu_set_fog(true,c_white,0,0);
        if (frozenByNate > 10) {
            draw_sprite_ext(sprite_index, image_index, x+2, y+2, spr_dir * (small_sprites + 1), small_sprites + 1, 0, c_white, 0.4);
            draw_sprite_ext(sprite_index, image_index, x+2, y-2, spr_dir * (small_sprites + 1), small_sprites + 1, 0, c_white, 0.4);
            draw_sprite_ext(sprite_index, image_index, x-2, y-2, spr_dir * (small_sprites + 1), small_sprites + 1, 0, c_white, 0.4);
            draw_sprite_ext(sprite_index, image_index, x-2, y+2, spr_dir * (small_sprites + 1), small_sprites + 1, 0, c_white, 0.4);
        } else {
            draw_sprite_ext(sprite_index, image_index, x+2, y+2, spr_dir * (small_sprites + 1), small_sprites + 1, 0, c_white, 0.04 * frozenByNate);
            draw_sprite_ext(sprite_index, image_index, x+2, y-2, spr_dir * (small_sprites + 1), small_sprites + 1, 0, c_white, 0.04 * frozenByNate);
            draw_sprite_ext(sprite_index, image_index, x-2, y-2, spr_dir * (small_sprites + 1), small_sprites + 1, 0, c_white, 0.04 * frozenByNate);
            draw_sprite_ext(sprite_index, image_index, x-2, y+2, spr_dir * (small_sprites + 1), small_sprites + 1, 0, c_white, 0.04 * frozenByNate);        
        }
        gpu_set_fog(false,c_black,0,0);
        break;
    }
}

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




if (get_player_color(player) == 9 && state == PS_SPAWN) {
	if (state_timer == 1) {
		set_article_color_slot(3, 255, 130, 213 ); //N+M Light
		set_article_color_slot(4, 241, 39, 227 ); //Necklace+Magic
		set_article_color_slot(5, 171, 10, 168 ); //N+M Dark
		set_color_profile_slot(9, 3, 255, 130, 213 ); //N+M Light
		set_color_profile_slot(9, 4, 241, 39, 227 ); //Necklace+Magic
		set_color_profile_slot(9, 5, 171, 10, 168 ); //N+M Dark
		set_color_profile_slot(9, 2, 120, 21, 114 ); //Shorts	
	}
	if (shield_down) {
		set_article_color_slot(3, 171, 255, 175 ); //N+M Light
		set_article_color_slot(4, 39, 241, 49 ); //Necklace+Magic
		set_article_color_slot(5, 10, 171, 18 ); //N+M Dark
		set_color_profile_slot(9, 3, 171, 255, 175 ); //N+M Light
		set_color_profile_slot(9, 4, 39, 241, 49 ); //Necklace+Magic
		set_color_profile_slot(9, 5, 10, 171, 18 ); //N+M Dark
		set_color_profile_slot(9, 2, 18, 100, 35 ); //Shorts
	}
}

if (activeBuffUses > 0) {
	if (activeBuff == 1) {
		draw_sprite(sprite_get("hud_icons"), 0, x - 20, y - 115);
	} else {
		draw_sprite(sprite_get("hud_icons"), 1, x - 20, y - 115);	
	}
	draw_sprite(sprite_get("hud_icons"), activeBuffUses + 8, x + 12, y - 115);
}

//print_debug(string(fps_real));