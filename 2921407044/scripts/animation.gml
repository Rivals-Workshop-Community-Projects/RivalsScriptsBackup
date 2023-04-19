//Walljump Offset Code
if(state == PS_WALL_JUMP){
    if(image_index == 0){sprite_change_offset("walljump", 118, 172);}
    else if(image_index == 1){sprite_change_offset("walljump", 108, 172);}
    else sprite_change_offset("walljump", 128, 172);
}

//Respawn Code
if(state == PS_RESPAWN){
	sprite_index = sprite_get("respawn");
	image_index = get_gameplay_time() / 6;
}
/*
// Steam effect on Double Jump
    if(state == PS_DOUBLE_JUMP && state_timer == 0){
        spawn_hit_fx( x, y, 144); //144 - steam small or 138 - steam directional,
        sound_play(asset_get( "sfx_ell_steam_hit" ),false,noone,.15, .4 + (.1 * random_func(1, 3, false ))); // soundID,looping,panning,volume,pitch / Pitch range from .4 to .7
    }
*/
//Intro Code
if(state == PS_SPAWN){
    // Length of the spawn state is 125 frames. 
	sprite_index = sprite_get("intro");
	image_index = 0;
	// Parameters of the intro sequence
	var start_intro_movement_timer = 44; // Set this to calibrate where the animation should start
	var number_of_frames_in_strip = 16 - 1;
	// Image Index Handler
	if(get_gameplay_time() >= start_intro_movement_timer && image_index != number_of_frames_in_strip){ // starts animation. 
	    image_index = clamp(floor((get_gameplay_time() - start_intro_movement_timer) / 5),0,number_of_frames_in_strip);
	}
	// Reload Sound Handler
	if(image_index == 7 && reload_sound_played_flag == false){ // play reload sound on image index 8S
	    sound_play(sound_get("shell_eject"));
	    reload_sound_played_flag = true;
	}
}