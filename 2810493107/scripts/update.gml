//update
if (trickroom_active) {
    // Check if opponent was KO'd
    with (asset_get("oPlayer")) {
        if ((state == PS_RESPAWN) && (TRICKROOM_OWNER_ID == other.id)) {
            // Opponent was KO'd - clear out their state
            TRICKROOM_OWNER_ID = noone

            // Reset opponent's movement stats here
            dash_speed = REUNICLUS_STORED_dash_speed
            initial_dash_speed = REUNICLUS_STORED_initial_dash_speed
            // TODO - the rest
            //print_debug("Opponent's stats reset on opponent KO");
        }
    }

    // Decrement the timer
    if (trickroom_timer > 0) {
        trickroom_timer -= 1;
        // commented out to reduce clutter
        //print_debug("trickroom_timer decremented to" + string(trickroom_timer));

    }

    if (trickroom_timer == 0) {
        // Timer has expired, so reset all state
        trickroom_active = false

        with (asset_get("oPlayer")) {
            if (TRICKROOM_OWNER_ID == other.id) {
                TRICKROOM_OWNER_ID = noone

                // Reset opponent's movement stats here
                dash_speed = REUNICLUS_STORED_dash_speed
                initial_dash_speed = REUNICLUS_STORED_initial_dash_speed
                // TODO - the rest
                //print_debug("Opponent's stats reset on Trick Room expiration");
            }
        }

        // Reset user's movement stats here
        dash_speed = reun_dash_speed
        initial_dash_speed = reun_initial_dash_speed
        // TODO - the rest
        //print_debug("Reuniclus' stats reset on Trick Room expiration");
    }
}

// Cancel sounds if user did a parry or dodge
if ((state == PS_AIR_DODGE)
    || (state == PS_ROLL_BACKWARD)
    || (state == PS_ROLL_FORWARD)
    || (state == PS_PARRY_START)
    || (state == PS_PARRY))
{
    // End current sound effect
    sound_stop(current_sound_effect);
}