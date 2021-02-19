if "pod" in my_hitboxID {
    pod.was_parried = true;
    pod.extended_parry = get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_EXTENDED_PARRY_STUN);
    if pod.attached {
        if state != clamp(state,5,6) {
            set_state(free ? PS_PRATFALL: PS_PRATLAND);
            state_timer = 2;
        }
        was_parried = true;
        if (get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_EXTENDED_PARRY_STUN)) {
            parry_lag = 60;
        } else {
            parry_lag = 40;
        }
        parry_id = hit_player_obj;
    }
}