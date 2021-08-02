// Balance Changes - attack_update.gml

// NSpecial Charge
if (attack == AT_NSPECIAL){
    // Window switching because pog?
    switch(window){
        case 1: // Start-up
            
            // Checking for the charge to be full prior to this.
            if (window_timer == get_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH)){
                // Check for a full charge.
                if (charge == charge_max){
                    // Jump to window 3
                    window = 3;
                    window_timer = 0;
                }
            }
            
            break;
        case 2: // Charging
            // At any time, check to see if special is pressed.
            if (special_pressed){
                // Jump to the next window.
                window = 3;
                window_timer = 0;
            }
            
            // At any time, check if the player wants to cancel.
            if (shield_pressed){
                window = 5;
                window_timer = 0;
            }
            
            // Otherwise, begin the charging process.
            if (window_timer == get_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH)){
                // If we reach the end of the move, and aren't at the max charge, apply it.
                if charge < charge_max{
                    charge++;
                    
                    // Check the charge and play sound
                    if charge == 1{
                        sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"));
                    }
                    if charge == 2{
                        sound_play(asset_get("sfx_frog_fspecial_charge_gained_2"));
                    }
                    if charge == 3{
                        sound_play(asset_get("sfx_frog_fspecial_charge_full"));
                    }
                    
                    window = 2;
                    window_timer = 0;
                    
                } else {
                    
                    // If we have max charge, just go right to the final window.
                    window = 4;
                    window_timer = 0;
                }
            }
            
            // Change the animation starting frame based on the charge (this is my big assume as to how ranno does it.)
            // leaving it empty for now because no animation.
            
            break;
        case 3: // Casting (Active)
            // stuff in the active frames (aka hitbox creation)
            if (window_timer == 1){
                // spawn hitboxes
                
                // remove charge
                charge = 0;
            }
            break;
        case 4: // Endlag
            break;
        case 5: // Cancel
            clear_button_buffer(PC_SHIELD_PRESSED);
            // cleared the button buffer to prevent accidental parry.
            break;
    }
}


if (attack == AT_USPECIAL){
    if (window == 1 && window_timer == 1){
        times_through = 0;
    }
    if (window == 2){
        if (window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH)){
            if (times_through < 10){
                times_through++;
                window_timer = 0;
            }
        }
        if (!joy_pad_idle){
            hsp += lengthdir_x(1, joy_dir);
            vsp += lengthdir_y(1, joy_dir);
        } else {
            hsp *= .6;
            vsp *= .6;
        }
        var fly_dir = point_direction(0,0,hsp,vsp);
        var fly_dist = point_distance(0,0,hsp,vsp);
        var max_speed = 12;
        if (fly_dist > max_speed){
            hsp = lengthdir_x(max_speed, fly_dir);
            vsp = lengthdir_y(max_speed, fly_dir);
        }
        if (special_pressed && times_through > 0){
            window = 4;
            window_timer = 0;
        }
        if (shield_pressed){
            window = 3;
            window_timer = 0;
        }
    }
    if (window > 3 && window < 6 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
        window++;
        window_timer = 0;
    }
}

// This will eventually be the mirror/rune
if (attack == AT_DSPECIAL){
    switch(window){
        case 1:
            if window_timer == get_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH){
                
                // summon the thing.
                if summons != max_summons{
                    
                    // Check how long you held the button.
                    if special_down{
                        // create the rune.
                        summon_tracker[summons] = instance_create(x, y, "obj_article1");
                        summon_tracker[summons].state = 4;
                        summon_tracker[summons].state_timer = 0;
                    } else {
                        // Create the mirror
                        summon_tracker[summons] = instance_create(x, y, "obj_article1");
                        summon_tracker[summons].state = 0;
                        summon_tracker[summons].state_timer = 0;
                    }
                    // Increase the count of the summons so we don't go over.
                    summons++;
                } else {
                    // If the summon is max, remove the first summon.
                    instance_destroy(summon_tracker[0]);
                    // Move the latest summon down to slot 1
                    summon_tracker[0] = summon_tracker[1];
                    // set the summon count to one
                    summons = 1;
                    
                    // Summon
                    if special_down{
                        // create the rune.
                        summon_tracker[summons] = instance_create(x, y, "obj_article1");
                        summon_tracker[summons].state = 4;
                        summon_tracker[summons].state_timer = 0;
                    } else {
                        // Create the mirror
                        summon_tracker[summons] = instance_create(x, y, "obj_article1");
                        summon_tracker[summons].state = 0;
                        summon_tracker[summons].state_timer = 0;
                    }
                    
                    summons++;
                    
                }
            }
            break;
        case 2:
            //stuff
            break;
    }
}