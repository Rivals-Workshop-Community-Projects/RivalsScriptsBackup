switch (state){
    case PS_ATTACK_GROUND: //dstrong charge animation
        if attack == AT_FSTRONG {
            if window == 2 {
                var looper = (floor(strong_charge / 4) % 5);
                image_index = looper + 3;
            }
            
            // if window == 1 and window_timer == 6
            // {
            //     charge_sound = sound_play(asset_get("sfx_zetter_upb_hit"), true, noone, 1, 3)
            // }
            // else if window > 2 {
            //     sound_stop(charge_sound)
            // }
        }
        
        if (attack == AT_USTRONG) {
            if (window == 2)
            {
                image_index = (floor(strong_charge / 2.5) % 3) + 3;
                if strong_charge mod 16 == 1 {
                    charge_sound = sound_play(sound_get("sfx_cane_charge_swing"), false, noone, 0.7, 1.0 + (random_func(1, 100, true)/500) )
                }
            }
            else {
                sound_stop(charge_sound)
            }
        }
        break;
}