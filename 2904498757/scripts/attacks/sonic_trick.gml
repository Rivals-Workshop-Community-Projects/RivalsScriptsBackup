// Initialize the attack object
atk = sonic_rainbowring_atk;

// Set general attack properties
set_attack_value(atk, AG_SPRITE, sprite_get("sonictrick"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("sonictrick_hurt"));
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_HAS_LANDING_LAG, 1);
set_attack_value(atk, AG_LANDING_LAG, 8);

// Initialize the first window (windup) and play sound on frame 1
window_num = 1;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1); // Enable sound for this window
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 1); // Play sound on frame 1
set_window_value(atk, window_num, AG_WINDOW_SFX, sound_get("sfx_taunt")); // Set sound effect to play

// Move to the next window (trick smear)
window_num++;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 2);

// Move to the next window (pose hold)
window_num++;
set_window_value(atk, window_num, AG_WINDOW_TYPE, 9);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 4);

// Move to the next window (end)
window_num++;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 10);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 5);

// Set the total number of windows for the attack
set_attack_value(atk, AG_NUM_WINDOWS, window_num);
