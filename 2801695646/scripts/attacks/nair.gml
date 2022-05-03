set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 9);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 8); // 16
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

// Swing 1
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 9); //9
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, sound_get("sfx_at_kick_02"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 7);

// Hit 1
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 6); //6
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

// Swing 2
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 2); //3
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_SFX, sound_get("sfx_at_kick_02"));
//set_window_value(AT_NAIR, 3, AG_WINDOW_SFX_FRAME, 1);

// Hit 2
set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 6); //6
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 5);

// Swing 3
set_window_value(AT_NAIR, 5, AG_WINDOW_LENGTH, 2); //3
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NAIR, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 5, AG_WINDOW_SFX, sound_get("sfx_at_kick_02"));
//set_window_value(AT_NAIR, 5, AG_WINDOW_SFX_FRAME, 1);

// Hit 3
set_window_value(AT_NAIR, 6, AG_WINDOW_LENGTH, 6); //6
set_window_value(AT_NAIR, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_NAIR, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 6, AG_WINDOW_SFX, sound_get("sfx_at_kick_01"));
set_window_value(AT_NAIR, 6, AG_WINDOW_SFX_FRAME, 3);

// Swing 4
set_window_value(AT_NAIR, 7, AG_WINDOW_LENGTH, 3); //3
set_window_value(AT_NAIR, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 7, AG_WINDOW_ANIM_FRAME_START, 10);

// Hit 4
set_window_value(AT_NAIR, 8, AG_WINDOW_LENGTH, 12); //12
set_window_value(AT_NAIR, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 8, AG_WINDOW_ANIM_FRAME_START, 11);

// Endlag
set_window_value(AT_NAIR, 9, AG_WINDOW_LENGTH, 12); //12
set_window_value(AT_NAIR, 9, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 9, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_NAIR, 9, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NAIR,4);

//set_hitbox_value(AT_NAIR, 1, HG_MUNO_HITBOX_NAME, "Multihit");

set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 34);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -18);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 65);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 90); //70
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 9); //10 for shared momentum, 9 for hitbox magnetism, 4 for horizontal hitbox magnetism
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NAIR, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITSTUN_MULTIPLIER, 1.5); // Edit this
//set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, sound_get("sfx_hit_kick"));

//set_hitbox_value(AT_NAIR, 2, HG_MUNO_HITBOX_NAME, "Multihit 2");

set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 34);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -35);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 65);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 90); //70
set_hitbox_value(AT_NAIR, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NAIR, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_NAIR, 2, HG_HITSTUN_MULTIPLIER, 1.5); // Edit this
//set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, sound_get("sfx_hit_kick"));

//set_hitbox_value(AT_NAIR, 3, HG_MUNO_HITBOX_NAME, "Multihit 3");

set_hitbox_value(AT_NAIR, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 6);
//set_hitbox_value(AT_NAIR, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, 34);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -41);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, 2);

//set_hitbox_value(AT_NAIR, 4, HG_MUNO_HITBOX_NAME, "Launcher");

set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 4, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 8);
//set_hitbox_value(AT_NAIR, 4, HG_WINDOW_CREATION_FRAME, 6); // 12
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, 32);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -38);
set_hitbox_value(AT_NAIR, 4, HG_WIDTH, 70);
set_hitbox_value(AT_NAIR, 4, HG_HEIGHT, 70);
set_hitbox_value(AT_NAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 4, HG_DAMAGE, 8);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE, 361);
set_hitbox_value(AT_NAIR, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 4, HG_KNOCKBACK_SCALING, .65); // 2
set_hitbox_value(AT_NAIR, 4, HG_BASE_HITPAUSE, 12); // Default is 8, if you don't want the "slowmo."
set_hitbox_value(AT_NAIR, 4, HG_HITPAUSE_SCALING, 1.00);
set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_NAIR, 4, HG_HIT_SFX, sound_get("sfx_hit_punch_ko"));
set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP, 3);