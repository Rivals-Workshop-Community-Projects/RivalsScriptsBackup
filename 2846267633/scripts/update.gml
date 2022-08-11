//update

// Crawling
if (state == PS_CROUCH) {
    crawl_dir = (right_down ? 1 : 0 + left_down ? -1 : 0);
    hsp = crawl_dir * 0.95;
}

/* Motion input logic */

if (!joy_pad_idle) {
    downpress = lengthdir_y(1, joy_dir) > 0.75;
    sidepress = abs(lengthdir_x(1, joy_dir)) > 0.65;
} else {
    downpress = false;
    sidepress = false;
}


// Press forward in the next 7 frames to do a down-forward
if (downpress) {
    df_link_timer = 7;
}
// Forward was pressed fast enough after down
if (sidepress && !downpress && df_link_timer > 0) {
    // No down-forwards in recent memory
    if (!df_1) {
        df_1 = true;
        df_1_timer = 36;
        df_link_timer = 0;
    }
    // One down-forward in recent memory
    else if (!df_2) {
        df_2 = true;
        df_2_timer = 36;
        df_link_timer = 0;
        // Super ready to use
        super_input_dir = lengthdir_x(1, joy_dir) > 0 ? 1 : -1;
    }
    // Two down-forwards in recent memory
    else {
        df_1 = true;
        df_2 = true;
        // "Push" history
        df_1_timer = df_2_timer;
        df_2_timer = 36;
        df_link_timer = 0;
        // Super ready to use
        super_input_dir = lengthdir_x(1, joy_dir) > 0 ? 1 : -1;
    }
}

// First remembered down-forward was too long ago
if (df_1_timer <= 0) {
    // There is another
    if (df_2_timer > 0) {
        df_1_timer = df_2_timer;
        df_2_timer = 0;
        df_2 = false;
    }
    // There was only one
    else {
        df_1_timer = 0;
        df_2_timer = 0;
        df_1 = false;
        df_2 = false;
    }
}

if (df_2 && get_player_damage( player ) >= 100) {
    super_eligible = true;
}
else {
    super_eligible = false;
}

df_1_timer--;
df_2_timer--;
df_link_timer--;


