
hover = false;
with (oPlayer){
	if (other.hover == false){
		if (y==496){
			if (x-80 < other.x && x+80 > other.x){
				other.hover = true;
				//print_debug(string(current_second)+" 1")
			}
		}
	}
	
}

if (!r_cooldown){
	if (hover){
		with (oPlayer){
			if (!other.r_active){
				if (taunt_down){
					if (up_stick_down){ //Sobaniitekuretane
						music_play_file("up");
						other.r_active = true;
						other.r_cooldown = 120;
					}else if (down_stick_down){ //earth
						music_play_file("down");
						other.r_active = true;
						other.r_cooldown = 120;
					}else if (left_stick_down){ //exothermic
						music_play_file("left");
						other.r_active = true;
						other.r_cooldown = 120;
					}else if (right_stick_down){ //a spaceship fantasy
						music_play_file("right");
						other.r_active = true;
						other.r_cooldown = 120;
					}else if (shield_down){ //twilight v3
						music_play_file("final");
						other.r_active = true;
						other.r_cooldown = 120;
					}else{ //twilight v2
						music_play_file("music_loop");
						other.r_active = true;
						other.r_cooldown = 120;
					}
				}
			}else{
				if (taunt_down){
					//print_debug(string(y))
					music_play_file("training");
					other.r_cooldown = 120;
					other.r_active = false;
				}
			}//active
		}//oplayer
		image_index = 1;
	}else{
		image_index = 0;
	}//hover
}

if (r_cooldown>0){
	r_cooldown--;
	//print_debug(string(r_cooldown))
}