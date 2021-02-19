switch (state){
    case PS_IDLE:
    case PS_RESPAWN:
    case PS_SPAWN:
        image_index = floor(image_number*state_timer/(image_number*6.5));
    break;
    
    case PS_WALK:
        image_index = floor(image_number*state_timer/(image_number*5));
    break;
}

if (state == PS_SPAWN) {
    if (introTimer < 15 && introTimer >= 0) {
        sprite_index = sprite_get("intro");
        image_index = introTimer;
    } else if (introTimer < 0) {
        sprite_index = sprite_get("intro");
        image_index = 0;
    } else {
        sprite_index = sprite_get("idle");
    }
}

if (nyoom = true && state == PS_DASH){
    sprite_index = sprite_get("muddash");
   image_index = (state_timer * 0.25) % image_number;
}

if(state == PS_PARRY){
if (spr_dir < 0){ 
    sprite_index = sprite_get("reverse_parry");
}
}