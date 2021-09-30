muno_event_type = 1;
user_event(14);
if(instance_exists(sick_existance)){
    sick_timer++;
    sick_existance.y = ease_sineIn(floor(sick_existance.y - 5),floor(sick_existance.y + 500),sick_timer,150)
}else{
    sick_timer = 0;
}

//Arrow doesn't give you Walljump
if (!free) {
    ArrowWallJump = 1
} 
else {
    if (ArrowWallJump == 0) {
        has_walljump = 0
    }
}
if (state == PS_WALL_JUMP) {
    ArrowWallJump = 0
}

//Reached Max Charge (feel free to change the number to change the max timer)
if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_DSPECIAL 
&& window == 1 && babe_cont >= 89){
	window = 2;
	window_timer = 1;
	babe_cont = 0;
}
if(!free){
	if(fspec_stall){
		fspec_stall = false;
	}
}
//Reached Max Charge (feel free to change the number to change the max timer)
if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_NSPECIAL 
&& window == 2 && note_cont == 69){
	note_cont = 70;
	spawn_hit_fx( x, y-20, 124);
    sound_play(asset_get("mfx_player_ready"));	
}

//Changes the Note hitbox depending on the charge (again, if you change the max timer, change the others here)
if (note_cont >= 0){
	
	if (note_cont >= 0 && note_cont < 30){
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_GOTO, 2);
	    set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 32);
	    set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 60);
	    set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 0);
	    set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 0);
	}
	
	if (note_cont >= 30 && note_cont < 70){
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_GOTO, 2);
		set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 42);
		set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 0);
	    set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 60);
	    set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 0);
	}
	
	if (note_cont >= 70){
		set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 20);
		set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 25);
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_GOTO, 3);
		set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 72);
		set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 0);
	    set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 0);
	    set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 60);
	}
}

//Reached Max Charge (feel free to change the number to change the max timer)
if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_FSPECIAL 
&& window == 2 && mic_cont == 69){
	mic_cont = 70;
	spawn_hit_fx( x, y-20, 130);
    sound_play(asset_get("sfx_coin_collect"));	
}

//Changes the Mic hitbox depending on the charge (again, if you change the max timer, change the others here)
if (mic_cont >= 0){
	
	if (mic_cont >= 0 && mic_cont < 10){
		set_window_value(AT_FSPECIAL, 1, AG_WINDOW_GOTO, 2);
		set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 60);
		set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 7);
	    set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 20);
	}
	
	if (mic_cont >= 10 && mic_cont < 30){
		set_window_value(AT_FSPECIAL, 1, AG_WINDOW_GOTO, 2);
		set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 50);
		set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 12);
		set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 26);
	}
	
	if (mic_cont >= 30 && mic_cont < 50){
		set_window_value(AT_FSPECIAL, 1, AG_WINDOW_GOTO, 2);
		set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 40);
		set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 17);
		set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 32);
	}
	
	if (mic_cont >= 50 && mic_cont < 70){
		set_window_value(AT_FSPECIAL, 1, AG_WINDOW_GOTO, 2);
		set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 30);
		set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 22);
		set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 36);
	}

	if (mic_cont >= 70){
		set_window_value(AT_FSPECIAL, 1, AG_WINDOW_GOTO, 3);
		set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 20);
		set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 27);
		set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 45);
	}
}

//If landed the Mic
if (mic_grab == true){
	
	//You have a 120 frames to make a choice
	if (mic_timer > 0){
		window_timer = 7;
		mic_timer--;
		
		//Facing right
		if (spr_dir == 1){
			//Resets the timer to pull the opponent
			if (left_pressed){
				mic_timer = 0;
			}
			
			//Flies towards the opponent
			if (right_pressed){
				window = 9;
				hsp = -1*(x - hit_player_obj.x)/27;
				vsp = -7;
				mic_grab = false;
				mic_timer = 0;
			}
		}
		
		//Facing left
		if (spr_dir == -1){
			
			//Resets the timer to pull the opponent
			if (right_pressed){
				mic_timer = 0;
			}
			
			//Flies towards the opponent
			if (left_pressed){
				window = 9;
				hsp = -1*(x - hit_player_obj.x)/27;
				vsp = -7;
				mic_grab = false;
				mic_timer = 0;
			}
		}
		
	}
	
	
//Pulling the opponent
	//Facing Right
	if (spr_dir == 1){
		
		//The distance you should stop pulling
		if (hit_player_obj.x > x+50){
			if (window == 5 && window_timer < 8){
				hit_player_obj.hitstop = 1;	
			}
			else {
				//The speed the opponent travels at
				hit_player_obj.x -= 25;
				hit_player_obj.hitstop = 1;
			}
		}
		else {
			mic_grab = false;
		}
	}
	
	//Facing Left
	if (spr_dir == -1){
		
		//The distance you should stop pulling
		if (hit_player_obj.x < x-50){
			if (window == 5 && window_timer < 8){
				hit_player_obj.hitstop = 1;	
			}
			else {
				//The speed the opponent travels at
				hit_player_obj.x += 25;
				hit_player_obj.hitstop = 1;
			}
		}
		else {
			mic_grab = false;
		}
	}
}

//If there's no arrow active
if (!instance_exists(arrow)){
    arrow_off = false;
    arrow_hud = 1;
    set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 7);
}

//If there is
else {
	arrow_hud = 0;
	arrow_off = true;
	set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 0);
}

//Resets the USpecial Cooldown
if (!free || state == PS_WALL_JUMP){
	arrow_myself = false;
}

if (state == PS_WALL_JUMP || state == PS_HITSTUN || !free){
	if (arrow_myself == false){
		move_cooldown[AT_USPECIAL] = 0;
	}
}


//Counts down the Arrow Cooldown
if (arrow_cooldown > 0){
	
	if (free){
		arrow_cooldown -= .5;	
	}
	if (!free){
		arrow_cooldown--;	
	}
	if (arrow_cooldown < 2){
		arrow_cooldown = 0;
	}
}

//Pulls the target into the Arrow
if (arrow_hit == true && hit_player_obj.state == PS_HITSTUN){
	hit_player_obj.x = lerp(hit_player_obj.x, arrow.x, 0.2);
	hit_player_obj.y = lerp(hit_player_obj.y, arrow.y, 0.2);
}