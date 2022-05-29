// called when the character gets KO'd

// End current sound effect
sound_stop(current_sound_effect);

// Gravity
if (gravity_instance != noone) {
    if (!gravity_instance.permanent) {
        instance_destroy(gravity_instance);
        gravity_instance = noone;
    }
}

if (trickroom_active) {
    // User was KO'd during an active Trick Room, so reset all state
    trickroom_active = false
    trickroom_timer = 0

    with (asset_get("oPlayer")) {
        if (TRICKROOM_OWNER_ID == other.id) {
            TRICKROOM_OWNER_ID = noone

            // Reset opponent's movement stats here
            dash_speed = REUNICLUS_STORED_dash_speed
            initial_dash_speed = REUNICLUS_STORED_initial_dash_speed
            // TODO - the rest
            //print_debug("Opponent's stats reset on Reuniclus KO");
        }
    }
    
    // Reset user's movement stats here
    dash_speed = reun_dash_speed
    initial_dash_speed = reun_initial_dash_speed
    // TODO - the rest
    //print_debug("Reuniclus' stats reset on Reuniclus KO");
}