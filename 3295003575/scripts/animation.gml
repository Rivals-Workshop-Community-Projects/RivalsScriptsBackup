// make the nametag go higher while ustrong's fist is raised
if phone_attacking && attack == AT_USTRONG && window > 2 && !(window == 4 && window_timer > phone_window_end / 2){
	hud_offset = lerp(hud_offset, 180, 0.5);
}

// fix weird jittering that can happen when it tries to return to 0
if abs(hud_offset) < 1{
	hud_offset = 0;
}

if (state == PS_SPAWN && state_timer < intro_duration && get_gameplay_time() < 300) {
    sprite_index = intro_animation
    image_index = floor(ease_linear(0, image_number-1, state_timer, intro_duration))
  
}

