//
//create_hitbox(AT_JAB, 1, x, y);

timer++;
state_timer++;

switch (state) {
	case 0: //spawn state
	var moveSpeed = 3;
	//print_debug("bg x: " + string(x));
	var endState = false;
	var moveDir = 0;
	var frontX = 0; //x coord of char most in front
	var backX = 100000000; // x coord of char furthest back
	with oPlayer {
		if (cpuId == undefined) && !dead {
			if (other.state_timer > 1) {
				//print_debug("player x: " + string(x));
				if (other.x < -1600) && (x > 1250) {
					endState = true;
				}
				
				if (x > frontX) {
					frontX = x;
				}
				
				if (x < backX) {
					backX = x;
				}
			}
		}
		
	}

	if (frontX >= get_marker_x(15)) && (backX > get_marker_x(16)) && (moveCounter > -720) {
		moveDir = -1;
	} else if (backX <= get_marker_x(16)) && (frontX < get_marker_x(15)) && (moveCounter < 0) {
		moveDir = 1;
	}

	
	if (moveDir != 0) {
		with oPlayer {
			x += moveSpeed*moveDir;
		}
		x += moveSpeed*moveDir;
		moveCounter += moveDir;
		with obj_stage_article_platform {
			if (get_article_script(id) == 95) {
				moveCounter += moveDir;
				x += moveDir*moveSpeed*2;
			}
		}
	}
	
	if (endState) {
		player_id.winEndState = true;
	}
	break;
	
	case 1: //pan to sans
	if (player_id.textSkipMode) {
		if (state_timer >= 40) {
			x -= 4;
			with oPlayer {
				x -= 4;
			}
		}
	} else {
		if (state_timer >= 90) {
			x -= 2;
			with oPlayer {
				x -= 2;
			}
		}
	}
	
	break;
	
	case 2: //stopped
	if (state_timer == 60) {
		player_id.drawTextbox = true;
	}
	break;
	
	case 9: //kill state
	var flickerTime = 5;
	
	if (state_timer == 1) {
		sprite_index = asset_get("empty_sprite");
		sound_play(sound_get("chk"), false, 0);
	} else if (state_timer == flickerTime + 1) {
		sprite_index = sprite_get("hall_bg");
	} else if (state_timer == flickerTime*2 + 1) {
		sprite_index = asset_get("empty_sprite");
		sound_play(sound_get("chk"), false, 0);
	} else if (state_timer == flickerTime*3 + 1) {
		sprite_index = sprite_get("hall_bg");
	} else if (state_timer == flickerTime*4 + 1) {
		sound_play(sound_get("battlefall"), false, 0);
		sound_play(sound_get("chk"), false, 0);
		image_alpha = 0;
	}
	break;
	
	case 19: //outro
	image_alpha += 0.1;
	image_alpha = clamp(image_alpha, 0, 1);
	if (image_alpha == 1) {
		state = 0;
		state_timer = 0;
	}
	drawSans = false;
	break;
}

