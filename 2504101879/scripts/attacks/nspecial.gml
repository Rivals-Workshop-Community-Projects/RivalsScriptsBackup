set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 7);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

//spit startup
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 4);
//spit frame 3
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
//spit active
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 24);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);
//spit end
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 11);
//command startup
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 13);
//command active
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 15);
//command end
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 17);
//set_attack_value(AT_NSPECIAL, AG_MUNO_ATTACK_MISC_ADD, "Cancel into self starting on frame " + string(get_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH) + get_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH) + 1) + ".");