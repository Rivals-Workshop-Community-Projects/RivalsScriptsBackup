//Glide sprite
if (can_glide == true && jump_down && glide_off == false && state != PS_ATTACK_AIR && im_gliding_cont < 150){
    sprite_index = sprite_get("glide");
}

//Double jump image frame
if (prev_state == PS_DOUBLE_JUMP && state == PS_IDLE_AIR && image_index < 3){
    image_index = 4;
}

