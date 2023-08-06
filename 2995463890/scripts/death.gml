if instance_exists(puddle_obj) and puddle_obj.state == PS_IDLE {
    with puddle_obj {
        state = PS_DEAD
        sprite_index = state_info[state].sprite;
        image_index = 0;
        new_state_timer = 0;
        state_timer = 0.01
    }
}

if mj_enabled sound_play(sound_get("voice_mj_haooooo"));