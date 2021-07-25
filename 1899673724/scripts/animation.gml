//**************************************************************
//New
if state== PS_ATTACK_GROUND && attack == AT_FSTRONG && window == 2 && window_timer == 8 { //Fstrong windup
    image_index = 1 + (strong_charge/3)%4; //1 is the frame_start, 4 is the number of frames, 
                                           //3 is the in-game frames per animation frame
}
//**************************************************************

//Intro Code
if (state == PS_SPAWN) {
    if (introTimer < 23 && introTimer >= 0) {
        sprite_index = sprite_get("intro");
        image_index = introTimer;
    } else if (introTimer < 0) {
        sprite_index = sprite_get("intro");
        image_index = 0;
    } else {
        sprite_index = sprite_get("idle");
    }
}

if (url != 1899673724){ //DO NOT REMOVE, THIS IS VITAL TO SONIC'S CODE!
	gay = true;
}

if (attack == AT_DATTACK){
	if (window == 3){
		if (window_timer == 0 || window_timer == 1 || window_timer == 2){
			image_index = 6
		} else if (window_timer == 3 || window_timer == 4 || window_timer == 5){
			image_index = 7
		} else if (window_timer == 6 || window_timer == 7 || window_timer == 8){
			image_index = 8
		} else if (window_timer == 9 || window_timer == 10 || window_timer == 11){
			image_index = 9
		} else {
			image_index = 10
		}
	}
}

if (state_cat == SC_AIR_NEUTRAL){
	hurtboxID.sprite_index = sprite_get("hurtbox_ground");
}

if (attack == AT_EXTRA_1){
	if (place_meeting(x+spr_dir,y,asset_get("par_block"))){
		hurtboxID.sprite_index = sprite_get("wallrunhurtbox");
	} else {
		hurtboxID.sprite_index = sprite_get("hurtbox_ground");
	}
}

if (attack == AT_USPECIAL_2){
	/*
	hurtboxID.sprite_index = sprite_get("hurtbox_ground");
	if (window == 3 && window_timer == 9){
		state = PS_IDLE_AIR
		hurtboxID.sprite_index = sprite_get("hurtbox_ground");
	}
	*/
}