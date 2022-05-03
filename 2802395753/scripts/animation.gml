// make the nametag go higher while ustrong's fist is raised
if phone_attacking && attack == AT_USTRONG && window > 2 && !(window == 4 && window_timer > phone_window_end / 2){
	hud_offset = lerp(hud_offset, 180, 0.5);
}

// fix weird jittering that can happen when it tries to return to 0
if abs(hud_offset) < 1{
	hud_offset = 0;
}

//intro
if (state == PS_SPAWN) {
    if (state_timer = 1) {
        sound_play(sound_get("intro"));
        hud_offset = 800;
    } else if (state_timer < intro_duration && get_gameplay_time() < 300) {
    sprite_index = intro_animation
    image_index = floor(ease_linear(0, image_number-1, state_timer, intro_duration))
    } else {
        sprite_index = sprite_get("idle");
        depth = -5;
    }
}