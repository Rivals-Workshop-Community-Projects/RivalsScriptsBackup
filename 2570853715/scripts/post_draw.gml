
if(attack == AT_FSPECIAL){
	if (window == 6){
		draw_sprite_ext(sprite_get("demon_small"), 4, x, y, 1+small_sprites, 1+small_sprites, 0, c_white, max(0, 11-window_timer));
	}
}

with(pHitBox){
	if(player == other.player and (attack == AT_DSPECIAL or attack == AT_USTRONG and hbox_num == 1)){
		shader_end();
		draw_sprite_ext(sprite_index, image_index, x, y, spr_dir*1, 1, proj_angle, c_white, 1);
	}
}

if(state != PS_ROLL_BACKWARD and state != PS_ROLL_FORWARD and state != PS_TECH_GROUND and state != PS_TECH_FORWARD and state != PS_TECH_BACKWARD and state != PS_WALL_TECH and state != PS_AIR_DODGE and state != PS_PARRY and (state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND)){
	if(attack == AT_USTRONG){
		draw_sprite_ext(sprite_get("ustrong_overlay"), image_index, x, y, spr_dir*2, 2, 0, c_white, 1);
	}
}
user_event(12);