switch (state){
    case PS_ATTACK_GROUND: //dstrong charge animation
        if ((attack == AT_DSTRONG || attack == AT_DSTRONG_2) && window == 2) {
            image_index = (floor(strong_charge / 2.5) % 6) + 1;
            
            if get_gameplay_time() % 8 == 0
            {
                var vol;
                vol = .4 + (random_func(3, 6, false)/10)
                //print_debug("volume is: " + string(vol))
                sound_stop(sound_get("dstrong_chargeloop"));
                sound_play(sound_get("dstrong_chargeloop"),false,noone,vol,1);
            }
        }
    break;
    case PS_WALL_JUMP:
        image_index = state_timer < 4 ? 0 : 1;
    break;
}