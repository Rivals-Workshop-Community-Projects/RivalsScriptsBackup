if(state == PS_LANDING_LAG or state == PS_LAND){
	sound_stop(sound_get("song"));
}

if((attack != AT_FSPECIAL and attack != AT_DSPECIAL) or (state != PS_ATTACK_AIR and state != PS_ATTACK_GROUND)){
	char_height = standard_height;
}

if(state != PS_ATTACK_GROUND and (down_down or up_down)){
	set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAME_START, 2);
	set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 3);
	set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 2);
	set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 3);
	set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START, 2);
	set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("chirp2"));
} else if (state != PS_ATTACK_GROUND){
	reset_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAME_START);
	reset_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START);
	reset_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START);
	reset_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START);
	reset_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START);
	reset_window_value(AT_TAUNT, 1, AG_WINDOW_SFX);
}

//Intro
if(get_gameplay_time() < 300){
	if (introTimer2 < 22) {
	    introTimer2++;
	} else {
	    introTimer2 = 0;
	    introTimer++;
	}

	//this increments introTimer every few frames, depending on the number entered
	
	if (introTimer < 3) {
	    draw_indicator = false;
	} else {
	    draw_indicator = true;
	}
	//this stops the overhead HUD from getting in the way of the animation. If your animation does not involve much movement, this may not be necessary.
	if((introTimer == 1 or introTimer == 2 or introTimer == 3) and introTimer2 == 1){
		sound_play(sound_get("one2"))
	}
}

//Fix for small_sprites
if state == PS_WALL_JUMP
  draw_x = 1*spr_dir;
else draw_x = 0