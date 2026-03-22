//post-draw

if (cookieAid) {
		draw_sprite(sprite_get("glow"), glowAnim*.8, x, y);		
}

if (cookieGet > 0) cookieGet -= .35;

if (cookieGet > 0 && lastCookieGained != -1) {
    var draw_y = y - 80 - (5 - cookieGet); 
    
    // Alpha fade out
    var draw_alpha = 1; 

    draw_sprite_ext(sprite_get("cookiemeter"), lastCookieGained * 2, x, draw_y, 1, 1, 0, c_white, draw_alpha);
}

if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_NSPECIAL) {
	
	var tongue_hbox = noone;
	with (pHitBox) {
		if (player_id == other.id && attack == AT_NSPECIAL && hbox_num == 1) {
			tongue_hbox = id;
		}
	}

	if (tongue_hbox != noone) {
	 
		var mouth_x = x + (((get_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X))-8) * spr_dir); 
		var mouth_y = y + (get_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y)); 
			
		var tip_x = tongue_hbox.x;
		var tip_y = tongue_hbox.y;
			
		var dist = point_distance(mouth_x, mouth_y, tip_x, tip_y);
			
		var stretch_scale = dist / 2; 
			
		draw_sprite_ext(sprite_get("tongue"), 0, mouth_x, mouth_y, stretch_scale*spr_dir, 1, 0, c_white, 1);
	}
}



/*
draw_debug_text( x, y + 20, string(spincharge));
draw_debug_text( x, y + 40, string(spincool));
*/

shader_start();
shader_end();