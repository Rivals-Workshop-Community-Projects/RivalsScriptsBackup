//FSpecial Trail code (check attack_update and update for any tweaks)
shader_start();

if ((state == PS_RESPAWN) || (attack == AT_TAUNT && free)) && !place_meeting(x,y+4,(asset_get("par_block"))) &&(sprite_index == sprite_get("idle") || sprite_index == sprite_get("taunt")){
    draw_sprite(sprite_get("plat_behind"), image_index, x, y);
    //draw_sprite(sprite_get("plat"), 0, x, y);
}

if (draw1 > 0){
	draw_sprite_ext(trail_effect, draw1_index, draw1_x, draw1_y, spr_dir, 1, 1, c_white, draw1);
}
if (draw2 > 0){
	draw_sprite_ext(trail_effect, draw2_index, draw2_x, draw2_y, spr_dir, 1, 1, c_white, draw2);
}
if (draw3 > 0){
	draw_sprite_ext(trail_effect, draw3_index, draw3_x, draw3_y, spr_dir, 1, 1, c_white, draw3);
}
if (draw4 > 0){
	draw_sprite_ext(trail_effect, draw4_index, draw4_x, draw4_y, spr_dir, 1, 1, c_white, draw4);
}
if (draw5 > 0){
	draw_sprite_ext(trail_effect, draw5_index, draw5_x, draw5_y, spr_dir, 1, 1, c_white, draw5);
}

if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_COPY_RANGER){
	draw_sprite_ext(sprite_get("ability_ranger_rotate"), image_index, x+(ranger_aim_hand_shoot_offset)+10*spr_dir, y-24+((ranger_aim_hand_shoot_offset-2)*dir_sin*dir_joy_remember_direction_vert), 
	spr_dir, 1, ranger_aim, c_white, 1);
	//print(ranger_aim);
}

if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_COPY_ICE && window >= 3) {
	if (ice_blowVFX1_sub >= 0){
		draw_sprite_ext(sprite_get("ability_ice_puff_blowVFX"), ice_blowVFX1_sub, 
		x+15*spr_dir, y-15, spr_dir, 1, ice_blowVFX1_rot, c_white, 1);
	}
	if (ice_blowVFX2_sub >= 0){
		draw_sprite_ext(sprite_get("ability_ice_puff_blowVFX"), ice_blowVFX2_sub, 
		x+15*spr_dir, y-15, spr_dir, 1, ice_blowVFX2_rot, c_white, 1);
	}
	if (ice_blowVFX3_sub >= 0){
		draw_sprite_ext(sprite_get("ability_ice_puff_blowVFX"), ice_blowVFX3_sub, 
		x+15*spr_dir, y-15, spr_dir, 1, ice_blowVFX3_rot, c_white, 1);
	}
	if (ice_blowVFX4_sub >= 0){
		draw_sprite_ext(sprite_get("ability_ice_puff_blowVFX"), ice_blowVFX4_sub, 
		x+15*spr_dir, y-15, spr_dir, 1, ice_blowVFX4_rot, c_white, 1);
	}
}

shader_end();

