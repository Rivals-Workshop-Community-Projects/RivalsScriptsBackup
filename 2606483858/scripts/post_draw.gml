//
//print(note_cont);

//The Arrow when creating/aiming the Whirlwind
if (attack == AT_USPECIAL && window == 2 && window_timer > 0 
&& (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)){                      //Feel free to change the sprite later
    if ((up_down || joy_pad_idle) && !right_down && !left_down && !down_down){
		draw_sprite_ext(sprite_get("activated_funkin_arrows"), 0, x-10, y-80, 1, 1, 0, c_white, 1);
	}
	if (right_down && !up_down && !down_down){
		draw_sprite_ext(sprite_get("activated_funkin_arrows"), 1, x+50, y-20, 1, 1, 0, c_white, 1);
	}
	if (down_down && !right_down && !left_down && !up_down){
		draw_sprite_ext(sprite_get("activated_funkin_arrows"), 2, x-5, y+30, 1, 1, 0, c_white, 1);
	}
	if (left_down && !up_down && !down_down){
		draw_sprite_ext(sprite_get("activated_funkin_arrows"), 3, x-50, y-20, 1, 1, 0, c_white, 1);
	}
	
}

if (attack == AT_DSPECIAL && window == 1 && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)){
	if (spr_dir == 1){
		draw_sprite_ext(sprite_get("meter"), babe_cont/5, x-25, y+5, 2, 2, 0, c_white, 1);
	}
	else {
		draw_sprite_ext(sprite_get("meter"), babe_cont/5, x-10, y+5, 2, 2, 0, c_white, 1);
	}
	
}