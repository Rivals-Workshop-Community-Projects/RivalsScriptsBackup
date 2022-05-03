set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 9);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 10); // 20
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

// Swing 1
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, sound_get("sfx_at_kick_02"));
//set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 1);

// Hit 1
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);

// Swing 2
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_SFX, sound_get("sfx_at_kick_02"));
//set_window_value(AT_DAIR, 3, AG_WINDOW_SFX_FRAME, 1);

// Hit 2
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 4);

// Swing 3
set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DAIR, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_SFX, sound_get("sfx_at_kick_02"));
//set_window_value(AT_DAIR, 5, AG_WINDOW_SFX_FRAME, 1);

// Hit 3
set_window_value(AT_DAIR, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAME_START, 7);

// Swing 4
set_window_value(AT_DAIR, 7, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DAIR, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 7, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DAIR, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 7, AG_WINDOW_SFX, sound_get("sfx_at_kick_02"));
//set_window_value(AT_DAIR, 7, AG_WINDOW_SFX_FRAME, 1);

// Hit 4
set_window_value(AT_DAIR, 8, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DAIR, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 8, AG_WINDOW_ANIM_FRAME_START, 10);

// Endlag
set_window_value(AT_DAIR, 9, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DAIR, 9, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 9, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_DAIR, 9, AG_WINDOW_HAS_WHIFFLAG, 1);


// Hitboxes

set_num_hitboxes(AT_DAIR,4);

//set_hitbox_value(AT_DAIR, 1, HG_MUNO_HITBOX_NAME, "Multihit");

set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 12);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -6);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 54);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 68);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 80);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DAIR, 1, HG_HITSTUN_MULTIPLIER, 0.4);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 4);
//set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, sound_get("sfx_hit_kick"));

set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 12);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -6);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 54);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 68);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 85);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DAIR, 2, HG_HITSTUN_MULTIPLIER, 0.4);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 4);
//set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, sound_get("sfx_hit_kick"));

//set_hitbox_value(AT_DAIR, 3, HG_MUNO_HITBOX_NAME, "Multihit 3");

set_hitbox_value(AT_DAIR, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 6);
//set_hitbox_value(AT_DAIR, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, 12);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, -6);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DAIR, 3, HG_HITSTUN_MULTIPLIER, 0.4);

//set_hitbox_value(AT_DAIR, 4, HG_MUNO_HITBOX_NAME, "Launcher");

set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 4, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 8);
//set_hitbox_value(AT_DAIR, 4, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X, 17);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, -1);
set_hitbox_value(AT_DAIR, 4, HG_WIDTH, 77);
set_hitbox_value(AT_DAIR, 4, HG_HEIGHT, 94);
set_hitbox_value(AT_DAIR, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_DAIR, 4, HG_ANGLE, 290);
set_hitbox_value(AT_DAIR, 4, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DAIR, 4, HG_KNOCKBACK_SCALING, .45); // Mollo's is .7
set_hitbox_value(AT_DAIR, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DAIR, 4, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DAIR, 4, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DAIR, 4, HG_ANGLE_FLIPPER, 0);
//set_hitbox_value(AT_DAIR, 4, HG_VISUAL_EFFECT_X_OFFSET, 20);
//set_hitbox_value(AT_DAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_DAIR, 4, HG_HIT_SFX, sound_get("sfx_hit_punch_ko"));
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_GROUP, 3);