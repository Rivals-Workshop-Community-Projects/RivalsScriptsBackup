// pre_draw.gml
// Draws sprites behind the player
shader_start();

if ("needleplatform" in self && instance_exists(needleplatform) && needleplatform.state_timer < 980){
	if (x >= needleplatform.x){
		var Right_of = -1;
	}
	else {
		var Right_of = 1;	
	}

	if (needle_angle == 90){
		draw_sprite_ext(sprite_get("tomo_string"), -1,  x - 5, y - 25, (Right_of * point_distance(x, y, needleplatform.x, needleplatform.y + 20))/4, -1, (arctan((needleplatform.y - y + 20) / (x - needleplatform.x)) * 180 / pi), c_white, 1)	
	}
	else {
		draw_sprite_ext(sprite_get("tomo_string"), -1,  x - 5, y - 25, (Right_of * point_distance(x, y, needleplatform.x, needleplatform.y + 20))/4, 1, (arctan((needleplatform.y - y + 20) / (x - needleplatform.x)) * 180 / pi), c_white, 1)
	}
}

if (attack == AT_FSPECIAL && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)){

		if (chargedash >= 40 || (window >= 5 && window < 6)){ // Strong
			draw_sprite_ext(sprite_get("fspecial"), -1, x - (25 * spr_dir), y, spr_dir, 1, 0, c_white, 0.5);		
		}
		if (chargedash >= 20 || (window >= 4 && window < 6)){ // Medium
			draw_sprite_ext(sprite_get("fspecial"), -1, x - (18 * spr_dir), y, spr_dir, 1, 0, c_white, 0.5);		
		}
		if (chargedash >= 1 || (window >= 3 && window < 6)){ // Weak
			draw_sprite_ext(sprite_get("fspecial"), -1, x - (10 * spr_dir), y, spr_dir, 1, 0, c_white, 0.5);		
		}
		
/* 
	// old slime costume code	
	if (get_player_color(player) != 14){
		if (chargedash >= 40 || (window >= 5 && window < 6)){ // Strong
			draw_sprite_ext(sprite_get("fspecial"), -1, x - (25 * spr_dir), y, spr_dir, 1, 0, c_white, 0.5);		
		}
		if (chargedash >= 20 || (window >= 4 && window < 6)){ // Medium
			draw_sprite_ext(sprite_get("fspecial"), -1, x - (18 * spr_dir), y, spr_dir, 1, 0, c_white, 0.5);		
		}
		if (chargedash >= 1 || (window >= 3 && window < 6)){ // Weak
			draw_sprite_ext(sprite_get("fspecial"), -1, x - (10 * spr_dir), y, spr_dir, 1, 0, c_white, 0.5);		
		}
	}
	else {
		if (chargedash >= 40 || (window >= 5 && window < 6)){ // Strong
			draw_sprite_ext(sprite_get("slime_fspecial"), -1, x - (25 * spr_dir), y, spr_dir, 1, 0, c_white, 0.5);		
		}
		if (chargedash >= 20 || (window >= 4 && window < 6)){ // Medium
			draw_sprite_ext(sprite_get("slime_fspecial"), -1, x - (18 * spr_dir), y, spr_dir, 1, 0, c_white, 0.5);		
		}
		if (chargedash >= 1 || (window >= 3 && window < 6)){ // Weak
			draw_sprite_ext(sprite_get("slime_fspecial"), -1, x - (10 * spr_dir), y, spr_dir, 1, 0, c_white, 0.5);		
		}
	}
*/
}

// Tomo Super Jump Visual
if (tsj_check){
	if (tsj_timer < 56){
		draw_sprite_ext(sprite_index, image_index, tsj_x1, tsj_y1, spr_dir, 1, 0, c_white, 0.75); 
	}
	if (tsj_timer < 58){
		draw_sprite_ext(sprite_index, image_index, tsj_x2, tsj_y2, spr_dir, 1, 0, c_white, 0.5); 
	}
	
	draw_sprite_ext(sprite_index, image_index, tsj_x3, tsj_y3, spr_dir, 1, 0, c_white, 0.2); 
}


if ("needleplatform_solid" in self && instance_exists(needleplatform_solid) && "can_zoop" in self && can_zoop){
	if (x >= needleplatform_solid.x){
		var Right_of = -1;
	}
	else {
		var Right_of = 1;	
	}
	draw_sprite_ext(sprite_get("tomo_string"), -1,  x - 5, y - 25, (Right_of * point_distance(x, y, needleplatform_solid.x, needleplatform_solid.y + 20))/4, 1, (arctan((needleplatform_solid.y - y + 20) / (x - needleplatform_solid.x)) * 180 / pi), c_white, 1)
}

if (state == PS_RESPAWN){
	draw_sprite_ext(sprite_get("plat_back"), -1, x, y, 1, 1, 0, c_white, 1);
}
shader_end();

/*
// Halloween Costume
if (((state != PS_SPAWN && state != PS_IDLE) && costume_destroy) || is_destroying_costume){

	if (costume_temp_x == 0){
		costume_temp_x = x + (spr_dir * - 40);
		costume_temp_y = y;
		costume_temp_spr_dir = spr_dir;
		is_destroying_costume = true;
	}
	
	if (get_player_color(player) == 8 || get_player_color(player) == 14 ){

		draw_sprite_ext(sprite_get("costume_fall"), costume_num, costume_temp_x, costume_temp_y, costume_temp_spr_dir, 1, 0, c_white, 1);
		costume_num += .15;
		
		if (costume_num >= 5){
			costume_num = 1;
			costume_temp_x = 0;
			costume_temp_y = 0;
			costume_destroy = false;
			is_destroying_costume = false;
		}
	}
}
*/