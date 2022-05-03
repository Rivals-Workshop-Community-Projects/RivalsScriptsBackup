set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("dspecial_air_hurt"));
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);

//------------------------------------------------------------------------------
// Attack Windows
//------------------------------------------------------------------------------

set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 8);

// Ready
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 0);                            // 0 = normal, 9 = looping
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, sound_get("sfx_w_rifle_reload_mag_pouch"));

// Idle
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 9);                            // 0 = normal, 9 = looping
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);

// Plant - Floor
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 0);                            // 0 = normal, 9 = looping
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 2);

// Plant - Wall
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_TYPE, 0);                            // 0 = normal, 9 = looping
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 5);

// Detonate Antic
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_TYPE, 0);                            // 0 = normal, 9 = looping
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_SFX, sound_get("sfx_w_plantable_detonate_antic"));
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_SFX_FRAME, 2);

// Detonate
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_TYPE, 0);                            // 0 = normal, 9 = looping
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_SFX, sound_get("sfx_w_plantable_detonate"));

// Detonate Endlag
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_TYPE, 0);                            // 0 = normal, 9 = looping
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 12);

// Exit
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_TYPE, 0);                            // 0 = normal, 9 = looping
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 15);


