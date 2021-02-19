//animation.gml

if state== PS_ATTACK_GROUND && attack == AT_FSTRONG_2 && window == 2 && window_timer == 3 { //Fstrong windup
    image_index = 2 + (strong_charge/3)%8; //1 is the frame_start, 4 is the number of frames, 
                                           //3 is the in-game frames per animation frame
}

//Fixing Mario's sleeves to appear normal when he parries on the default color.
if (state == PS_PARRY){
	if (image_index == 1){
		if (get_player_color(player) != 0){
			sprite_index = sprite_get("parry")
		} else if (get_player_color(player) == 0){
			sprite_index = sprite_get("parry_default")
		}
	} else if image_index != 1 {
		sprite_index = sprite_get("parry")
	}
}