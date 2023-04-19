//
if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) 
	&& attack == AT_USTRONG && window == 1){
	draw_sprite_ext(sprite_get("meteor_target"), state_timer/3, 
	x + 100 * spr_dir + strong_charge * 4 * spr_dir, y, 1, 1, 0, c_white, 1);
}

if (meteor_spawn && meteor_timer < 3 && meteor_air = false){
	draw_sprite_ext(sprite_get("ustrong_meteor_full"), meteor_timer, 
	x + 100 * spr_dir + strong_charge * 4 * spr_dir, (room_height/4)+70, 1, 1, 0, c_white, 1);
}

if (meteor_spawn && meteor_timer < 3 && meteor_air = true){
	if (has_hit == true){
		draw_sprite_ext(sprite_get("ustrong_meteor_full"), meteor_timer, 
		x + 100 * spr_dir + 30 * 4 * spr_dir, y-70, 1, 1, 0, c_white, 1);
	}
	else {
		draw_sprite_ext(sprite_get("ustrong_meteor_full"), meteor_timer, 
		x + 100 * spr_dir + 30 * 4 * spr_dir, (room_height/4)+70, 1, 1, 0, c_white, 1);
	}
}

if (instance_exists(uspecial_jean) && uspecial_jean.hitbox_timer < 13){
    draw_sprite_ext(sprite_get("jab_pull2"), state_timer/4, uspecial_jean.x, uspecial_jean.y-20, spr_dir, 1, uspecial_jean.proj_angle, c_white, 1);
}

if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_FSPECIAL_2){
	if (window == 6 && window_timer >= 1){
		draw_sprite_ext(sprite_get("jab_pull2"), window_timer/5, fspecial_posx, fspecial_posy-20, spr_dir, 1, -135*spr_dir, c_black, 1);
	}
	if (window == 8 && window_timer >= 1){
		draw_sprite_ext(sprite_get("jab_pull2"), window_timer/6, fspecial_posx-40*spr_dir, fspecial_posy+30, spr_dir, 1, 45*spr_dir, c_black, 1);
	}
}