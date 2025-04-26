//Animation
switch (state){
    case PS_DASH:
    case PS_DASH_TURN:
        if hurtboxID.sprite_index != dashbox_spr hurtboxID.sprite_index = dashbox_spr;
        break;
    default: 
        if hurtboxID.sprite_index == dashbox_spr hurtboxID.sprite_index = hurtbox_spr;
        break;
    case PS_WALL_JUMP:
        if state_timer == 0 {
            sound_play(asset_get("sfx_waveland_syl"))}

        if clinging {image_index = 0; clingtime = state_timer} else {
	        if state_timer == clingtime+1 sound_play(asset_get("sfx_jumpground"))

	    image_index = ((state_timer-clingtime)/walljump_time)*image_number
        }
    break;
}