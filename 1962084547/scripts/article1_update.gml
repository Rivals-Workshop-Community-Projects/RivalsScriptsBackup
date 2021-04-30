//article1_update.gml
//this article exists solely to draw sprites behind BG's eggs, and reset their last hitbox group when hit by one of BG's attacks.

with (player_id) {
    var hb_hitby_group_reset = (state_timer == 1 && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR));
}


for(var i = 0; i < trail_count; i++) {
    var hb = hb_array_id[i];
    if (hb == noone) continue;
    if (!instance_exists(hb)) { hb_array_id[i] = noone; continue; }
    hb_array_frame[i] += anim_speed;
    
    //when true, this article's update script will reset all of bg's eggs' 'hitby_group' variables.
    if (hb_hitby_group_reset) {
        hb.hitby_group = -1;
    }
    
    switch (hb_array_state[i]) {
        case -1: //newly spawned
            //go to state 1
            hb_array_state[i] = 1;
            hb_array_frame[i] = 1;
        break;
        case 0: //activating
            if (hb_array_frame[i] >= 1) hb_array_state[i] = 1;
        break;
        case 1: //active
            //go to state 2 if nspecial is used on this projectile
            if (!(hb.egg_hitbox_is_active)) {
                hb_array_state[i] = 2;
                hb_array_frame[i] = 11;
                break;
            }
            if (hb_array_frame[i] >= 11) hb_array_frame[i] -= 10;
        break;
        case 2: //deactivating
            if (hb_array_frame[i] >= 13) { hb_array_state[i] = 3; break; }
            //go back to state 1 if nspecial is no longer being used on this egg
            if (hb.egg_hitbox_is_active) {
                hb_array_state[i] = 1;
                hb_array_frame[i] = 1;
            }
        break;
        case 3: //deactivated
            //go back to state 1 if nspecial is no longer being used on this egg
            if (hb.egg_hitbox_is_active) {
                hb_array_state[i] = 0;
                hb_array_frame[i] = 0;
            }
        break;
    }
}