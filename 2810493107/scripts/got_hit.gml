//got_hit

// End current sound effect
sound_stop(current_sound_effect);

// Gravity
if (gravity_instance != noone) {
    if (!gravity_instance.permanent) {
        instance_destroy(gravity_instance);
        gravity_instance = noone;
    }
}

if (attack == AT_DSPECIAL && super_armor == true) {
    //counter stuff
    window = 4
    window_timer = 0
    super_armor = false

    // If the Trick Room is currently active, revert it so
    // we can apply it to the player we just countered.
    if (trickroom_active) {
        trickroom_active = false
        trickroom_timer = 0
        // Clear that state for the other player
        with (asset_get("oPlayer")) {
            if (TRICKROOM_OWNER_ID == other.id) {
                TRICKROOM_OWNER_ID = noone

                // Reset opponent's movement stats here
                dash_speed = REUNICLUS_STORED_dash_speed
                initial_dash_speed = REUNICLUS_STORED_initial_dash_speed
                // TODO - the rest
                //print_debug("Opponent's stats reset on counter");
            }
        }

        // Reset user's movement stats here
        dash_speed = reun_dash_speed
        initial_dash_speed = reun_initial_dash_speed
        //print_debug("Reuniclus' stats reset on counter");
    }

    // Ok, so our stats and the previous opponent's stats
    // are back to normal now, so let's do a swap!

    trickroom_timer = 420 // 7 seconds
    move_cooldown[AT_DSPECIAL] = 0 // 20 seconds
    trickroom_active = true
    hit_player_obj.TRICKROOM_OWNER_ID = id
    //stat switching
    //print_debug("Reuniclus used Trick Room!");
    //print_debug ("Old dash speed: " + string(dash_speed))
    //print_debug ("Opponent's old dash speed: " + string(hit_player_obj.dash_speed))
    dash_speed = hit_player_obj.REUNICLUS_STORED_dash_speed
    hit_player_obj.dash_speed = reun_dash_speed
    //print_debug ("New dash speed: " + string(dash_speed))
    //print_debug ("Opponent's new dash speed: " + string(hit_player_obj.dash_speed))
    initial_dash_speed = hit_player_obj.REUNICLUS_STORED_initial_dash_speed
    hit_player_obj.initial_dash_speed = reun_initial_dash_speed
    // TODO - the rest
}