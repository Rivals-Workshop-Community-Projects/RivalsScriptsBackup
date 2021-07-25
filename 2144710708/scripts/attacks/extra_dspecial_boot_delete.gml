// used for boot delete (use dspecial while boot is active and offscreen)

set_attack_value(AT_USTRONG_2, AG_CATEGORY, 2);
set_attack_value(AT_USTRONG_2, AG_SPRITE, sprite_get("undo_boot"));
set_attack_value(AT_USTRONG_2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USTRONG_2, AG_HAS_LANDING_LAG, 2); 
set_attack_value(AT_USTRONG_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_USTRONG_2, AG_HURTBOX_SPRITE, sprite_get("owen_hurtbox"));
set_attack_value(AT_USTRONG_2, AG_AIR_SPRITE, sprite_get("undo_boot_air"));

set_attack_value(AT_USTRONG_2, AG_MUNO_ATTACK_EXCLUDE, 1);

// think
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_VSPEED, 0.5);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_HSPEED, 0);

// spawnmenu appears
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_VSPEED, 0.5);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_HSPEED, 0);

// bar appears
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_VSPEED, 0.5);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_HSPEED, 0);

// bar fills
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_LENGTH, 24);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_VSPEED, 0.5);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_HSPEED, 0);

// bar is full
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_TYPE, 0);
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_SFX, sound_get("button15"));
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_VSPEED, 0.5);
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_HSPEED, 0);
