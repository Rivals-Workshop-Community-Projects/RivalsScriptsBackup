image_index = timer*anim_speed;

// state 0: tween toward target position
if (state == 0) {
    x = ease_quadOut(start_x, target_x, state_timer, enter_time);
    y = ease_quadOut(start_y, target_y, state_timer, enter_time);

    var wobble = 50 * sin(timer*0.075) * ease_quadOut(1, 0, state_timer, enter_time);

    y += wobble;

    if (state_timer >= enter_time) {
        state = 1;
        state_timer = 0;
    }
} else if (state == 1) {
    // we can't spawn the vending machine here ourselves, the parentage gets fucked and crashes the game
    // therefore, main player code has to check for this state and spawn it

    if (state_timer >= state1_duration) {
        state = 2;
        state_timer = 0;
        sound_play(sound_get("s57_plane"), false, 0);
    }
} else if (state == 2) {
    x = ease_quadIn(target_x, exit_x, state_timer, exit_time);
    y = ease_quadIn(target_y, exit_y, state_timer, exit_time);

    if (state_timer >= exit_time) {
        destroyed = true;
    }
}

if (!player_id.timestop_active && !player_id.timestopped) {
    state_timer++;
    timer++;
}

if (destroyed) {
    instance_destroy(self);
}