set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 3);

// startup
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, sound_get("dtilt"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 5);

/// active
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);

/// endlag
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DTILT, 6);

set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 68);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 66);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 34);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 95);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, 0.73);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, hisou_small);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, sound_get("hisou_hit"));
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_DTILT, 1, HG_HIT_PARTICLE_NUM, 1);

set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 25);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DTILT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 50);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 95);
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, 0.73);
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, hisou_small );
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, sound_get("hisou_hit"));
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_DTILT, 2, HG_HIT_PARTICLE_NUM, 1);
//Install ----------------------------------------------------------------
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 3, HG_WINDOW, 99);
set_hitbox_value(AT_DTILT, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_X, 68);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DTILT, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 3, HG_WIDTH, 66);
set_hitbox_value(AT_DTILT, 3, HG_HEIGHT, 34);
set_hitbox_value(AT_DTILT, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_DTILT, 3, HG_ANGLE, 95);
set_hitbox_value(AT_DTILT, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DTILT, 3, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_DTILT, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DTILT, 3, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_DTILT, 3, HG_VISUAL_EFFECT, hisou_small );
set_hitbox_value(AT_DTILT, 3, HG_HIT_SFX, sound_get("hisou_hit_light"));
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_DTILT, 3, HG_HIT_PARTICLE_NUM, 2);

set_hitbox_value(AT_DTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 4, HG_WINDOW, 99);
set_hitbox_value(AT_DTILT, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_X, 25);
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DTILT, 4, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 4, HG_WIDTH, 50);
set_hitbox_value(AT_DTILT, 4, HG_HEIGHT, 40);
set_hitbox_value(AT_DTILT, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_DTILT, 4, HG_ANGLE, 95);
set_hitbox_value(AT_DTILT, 4, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DTILT, 4, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_DTILT, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DTILT, 4, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_DTILT, 4, HG_VISUAL_EFFECT, hisou_small);
set_hitbox_value(AT_DTILT, 4, HG_HIT_SFX, sound_get("hisou_hit_light"));
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_DTILT, 4, HG_HIT_PARTICLE_NUM, 2);

set_hitbox_value(AT_DTILT, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 5, HG_WINDOW, 99);
set_hitbox_value(AT_DTILT, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_DTILT, 5, HG_HITBOX_X, 68);
set_hitbox_value(AT_DTILT, 5, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DTILT, 5, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 5, HG_WIDTH, 66);
set_hitbox_value(AT_DTILT, 5, HG_HEIGHT, 34);
set_hitbox_value(AT_DTILT, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 5, HG_DAMAGE, 6);
set_hitbox_value(AT_DTILT, 5, HG_ANGLE, 95);
set_hitbox_value(AT_DTILT, 5, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DTILT, 5, HG_KNOCKBACK_SCALING, 0.85);
set_hitbox_value(AT_DTILT, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DTILT, 5, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_DTILT, 5, HG_VISUAL_EFFECT, hisou_large );
set_hitbox_value(AT_DTILT, 5, HG_HIT_SFX, sound_get("hisou_hit"));
set_hitbox_value(AT_DTILT, 5, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DTILT, 5, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DTILT, 5, HG_HIT_PARTICLE_NUM, 1);

set_hitbox_value(AT_DTILT, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 6, HG_WINDOW, 99);
set_hitbox_value(AT_DTILT, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_DTILT, 6, HG_HITBOX_X, 25);
set_hitbox_value(AT_DTILT, 6, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DTILT, 6, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 6, HG_WIDTH, 50);
set_hitbox_value(AT_DTILT, 6, HG_HEIGHT, 40);
set_hitbox_value(AT_DTILT, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT, 6, HG_DAMAGE, 6);
set_hitbox_value(AT_DTILT, 6, HG_ANGLE, 95);
set_hitbox_value(AT_DTILT, 6, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DTILT, 6, HG_KNOCKBACK_SCALING, 0.85);
set_hitbox_value(AT_DTILT, 6, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DTILT, 6, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_DTILT, 6, HG_VISUAL_EFFECT, hisou_large );
set_hitbox_value(AT_DTILT, 6, HG_HIT_SFX, sound_get("hisou_hit"));
set_hitbox_value(AT_DTILT, 6, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DTILT, 6, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DTILT, 6, HG_HIT_PARTICLE_NUM, 1);