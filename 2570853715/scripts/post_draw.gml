
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

user_event(12);