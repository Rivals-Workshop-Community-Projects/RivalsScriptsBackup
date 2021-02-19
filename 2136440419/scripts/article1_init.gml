//article1_init

if (player_id.vapour4_time) {
    vapour4 = true;
} else {
    vapour4 = false;
}

// Big long randomization tree that just randomizes between the available options
if (vapour4) {
    vapour_sprite = sprite_get("vapour4_hurt");
} else {
    if (!player_id.vapour1_exists && !player_id.vapour2_exists && !player_id.vapour3_exists) {
        switch (random_func(0, 3, true)) {
            case 0:
                vapour_sprite = sprite_get("vapour_hurt");
                break;
            case 1:
                vapour_sprite = sprite_get("vapour2_hurt");
                break;
            case 2:
                vapour_sprite = sprite_get("vapour3_hurt");
                break;
        }
    } else if (player_id.vapour1_exists && player_id.vapour2_exists && player_id.vapour3_exists) {
        // Makes it steal the sprite from the one it's replacing
        vapour_sprite = player_id.oldest_sprite_index;
    } else {
        if (player_id.vapour1_exists) {
            if (player_id.vapour2_exists) {
                vapour_sprite = sprite_get("vapour3_hurt");
            } else {
                if (!player_id.vapour3_exists) {
                    switch (random_func(5, 2, true)) {
                        case 0:
                            vapour_sprite = sprite_get("vapour2_hurt");
                            break;
                        case 1:
                            vapour_sprite = sprite_get("vapour3_hurt");
                            break;
                    }
                } else {
                    vapour_sprite = sprite_get("vapour2_hurt");
                }
            }
        } else {
            if (player_id.vapour2_exists) {
                if (!player_id.vapour3_exists) {
                    switch (random_func(8, 2, true)) {
                        case 0:
                            vapour_sprite = sprite_get("vapour_hurt");
                            break;
                        case 1:
                            vapour_sprite = sprite_get("vapour3_hurt");
                            break;
                    }
                } else {
                    vapour_sprite = sprite_get("vapour_hurt");
                }
            } else {
                if (player_id.vapour3_exists) {
                    vapour_sprite = sprite_get("vapour_hurt");
                }
            }
        }
    }
}

sprite_index = vapour_sprite; // Gives it the sprite determined in set_attack.gml
vapour_num = 0; // Defined at the top of article1_update

// Default vars
can_be_grounded = false;
ignores_walls = true;
uses_shader = true;
free = true;

// Custom vars
lifetime = 0; // How long the vapour has existed
window = 0; // The starting window (Startup, spirit, and endlag are the windows
window_timer = 0; // The timer for each window
window_length = [40, 420, 20]; // The window lengths of startup, active, and destroyed
window_anim_frames = [12, 6, 3]; // How animation frames are in each window
window_start_frames = [0, 12, 18]; // What frames the animations start for each window
vapour_anim_speed = 1/5; // The animation speed of the active window
destroyed = false; // Initializes the destroyed variable
reset_lifetime = false; // Whether or not this article has already reset the lifetime
deincremented_vapours = false; // Whether or not current_vapours has been deincremented yet
touched = 0; // The ID of the last thing that touched this
djumped = false;

// Increment how many vapours exist
if !(vapour4) {
    player_id.current_vapours++;
} else {
    player_id.vapour4_count++;
}

// Runes
orig_window_length = window_length[1];