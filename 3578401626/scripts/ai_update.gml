//updating_ai

is_ai = true;

if (prev_state == PS_HITSTUN && state == PS_LAND || prev_state == PS_HITSTUN && state == PS_FIRST_JUMP){
    set_state(PS_WAVELAND);
    with (hurtboxID){
        if (playerID = other.id){
            dodging = false;
        }
    }
    invincible = false;
    invince_time = 0;
}