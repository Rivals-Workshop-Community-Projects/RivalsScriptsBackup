shader_start();
if (blinkTimer % 120 <= 2.5 && state == PS_IDLE) {
	draw_sprite_ext(sprite_get("blink"), 0, x, y, spr_dir, 1, 0, -1, 1); 
}
if (blinkTimer % 120 <= 2.5 && state == PS_CROUCH && state_timer > 4 && down_down) {
	draw_sprite_ext(sprite_get("blink"), 1, x, y, spr_dir, 1, 0, -1, 1); 
}
shader_end();

if (shouldShowIndicator != 0 && get_match_setting(SET_HITBOX_VIS) == true) {
	draw_sprite(sprite_get("indicator"), shouldShowIndicator - 1, x - 45*spr_dir, y - 30); 
}

if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) {
	if (attack == AT_NSPECIAL && window == 2) {
		if (gbeamChargeLevel < 40) {
			draw_sprite(sprite_get("nspecial_charge_star"), gbeamChargeLevel / 9, x - 35, y - 100); 		
		} else if (gbeamChargeLevel < 80) {
			draw_sprite(sprite_get("nspecial_charge_star"), (gbeamChargeLevel-40) / 9, x, y - 100); 	
			draw_sprite(sprite_get("nspecial_charge_star"), 4, x - 35, y - 100); 			
		} else {
			draw_sprite(sprite_get("nspecial_charge_star"), (gbeamChargeLevel-80) / 9, x + 35, y - 100); 		
			draw_sprite(sprite_get("nspecial_charge_star"), 4, x - 35, y - 100); 			
			draw_sprite(sprite_get("nspecial_charge_star"), 4, x, y - 100); 			
		}
	}
}

set_article_color_slot(3, 248, 192, 0, 1);
set_article_color_slot(5, 248, 80, 0, 1);

//draw_debug_text(x, y, string(hsp));

if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_TAUNT) {
	if (image_index == 5 && taunt_pressed) {	
			//draw_sprite(sprite_get("dapper"), 0, x, y); 			
	}
}