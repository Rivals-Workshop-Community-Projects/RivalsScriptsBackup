switch (state){
    case PS_IDLE:
        if(!party_has_moved)
        {
            sprite_index = sprite_get(phone_cheats[cheat_party] ? "idle_party" : "idle");
        }
        break;
    case PS_RESPAWN:
    case PS_SPAWN:
        //image_index = floor(image_number*state_timer/(image_number*6.5));
        if (introTimer < 23 && introTimer >= 0) {
            sprite_index = sprite_get("intro");
            image_index = introTimer;
        } else if (introTimer < 0) {
            sprite_index = sprite_get("intro");
            image_index = 0;
        } else {
            sprite_index = sprite_get(phone_cheats[cheat_party] ? "idle_party" : "idle");
        }
    break;
    
    case PS_WALK:
        image_index = floor(image_number*state_timer/(image_number*5));
    break;
    

}

if state == PS_WALL_JUMP {

if state_timer == 0 {
sound_play(asset_get("sfx_waveland_syl"))}

if clinging {image_index = 0; clingtime = state_timer} else {
	image_index = ((state_timer-clingtime)/walljump_time)*image_number
}

}