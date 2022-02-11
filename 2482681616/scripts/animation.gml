if (sprite_index == sprite_get("idle")) {
    idle_timer += idle_anim_speed;
    if (idle_timer % 15 < 7)
        idle_timer += idle_anim_speed * 2;
    image_index = idle_timer % 15;
}
else {
    idle_timer = 0;
}


if (state == PS_WALK) {
    if (state_timer == 1) {
        step_sound = false;
    }
    if (floor(image_index) % image_number == 1 && !step_sound) {
        step_sound = !step_sound;
        sound_play(sound_get("sfx_step_l"))
		shake_camera(2, 2);
    }
    if (floor(image_index) % image_number == 9 && step_sound) {
        step_sound = !step_sound;
        sound_play(sound_get("sfx_step_r"))
		shake_camera(2, 2);
    }
}
else if (state == PS_DASH) {
    if (state_timer == 2) {
        step_sound = false;
    }
    if (floor(image_index) % image_number == 0 && !step_sound) {
        step_sound = !step_sound;
        sound_play(sound_get("sfx_step_l"))
		shake_camera(2, 2);
    }
    if (floor(image_index) % image_number == 3 && step_sound) {
        step_sound = !step_sound;
        sound_play(sound_get("sfx_step_r"))
		shake_camera(2, 2);
    }
}
else if (state == PS_DASH_TURN) {
    if (state_timer == 2) {
        step_sound = false;
    }
    if (floor(image_index) % image_number == 2 && !step_sound) {
        step_sound = !step_sound;
        sound_play(sound_get("sfx_step_l"))
		shake_camera(2, 2);
    }
}
else {
    step_sound = false;
}

if (state == PS_LAND){
    if (state_timer == 1) {
        sound_play(sound_get("sfx_step_l"))
	    shake_camera(2, 2);
    }
}

//Grabbing depth fix
if (grabbed_player_obj != noone) {
	force_depth = true;
	depth = grabbed_player_obj.depth + 1;
}
//Big rune
if (has_rune("O")) {
	image_xscale = 2;
	image_yscale = 2;
	
	with (hit_fx_obj) {
		if (player_id == other.id) {
			spr_dir = other.spr_dir * 2
			image_xscale = 2;
			image_yscale = 2;
			
		}
	}
}