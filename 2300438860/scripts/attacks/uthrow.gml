set_attack_value(AT_UTHROW, AG_CATEGORY, 2);
set_attack_value(AT_UTHROW, AG_SPRITE, sprite_get("uthrow"));
set_attack_value(AT_UTHROW, AG_NUM_WINDOWS, 7);

set_attack_value(AT_UTHROW, AG_OFF_LEDGE, 1);
set_attack_value(AT_UTHROW, AG_HURTBOX_SPRITE, sprite_get("uthrow_hurt"));

set_window_value(AT_UTHROW, 1, AG_WINDOW_LENGTH, 7*3);
set_window_value(AT_UTHROW, 1, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_UTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_UTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_UTHROW, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_UTHROW, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_UTHROW, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_UTHROW, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTHROW, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 13);

set_window_value(AT_UTHROW, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTHROW, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTHROW, 5, AG_WINDOW_ANIM_FRAME_START, 17);


set_window_value(AT_UTHROW, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTHROW, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTHROW, 6, AG_WINDOW_ANIM_FRAME_START, 19);

set_window_value(AT_UTHROW, 7, AG_WINDOW_LENGTH, 20);
set_window_value(AT_UTHROW, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTHROW, 7, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(AT_UTHROW, 7, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_UTHROW, 7);

set_hitbox_value(AT_UTHROW, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTHROW, 7, HG_WINDOW, 2);
set_hitbox_value(AT_UTHROW, 7, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_UTHROW, 7, HG_LIFETIME, 9);
set_hitbox_value(AT_UTHROW, 7, HG_HITBOX_X, 2);
set_hitbox_value(AT_UTHROW, 7, HG_HITBOX_Y, -28);
set_hitbox_value(AT_UTHROW, 7, HG_WIDTH, 56);
set_hitbox_value(AT_UTHROW, 7, HG_HEIGHT, 54);
set_hitbox_value(AT_UTHROW, 7, HG_SHAPE, 0);
set_hitbox_value(AT_UTHROW, 7, HG_PRIORITY, 3);
set_hitbox_value(AT_UTHROW, 7, HG_DAMAGE, 2);
set_hitbox_value(AT_UTHROW, 7, HG_ANGLE, 40);
set_hitbox_value(AT_UTHROW, 7, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTHROW, 7, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UTHROW, 7, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_UTHROW, 7, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_UTHROW, 7, HG_VISUAL_EFFECT_Y_OFFSET, 16);
set_hitbox_value(AT_UTHROW, 7, HG_HIT_SFX, sound_get("hweak"));
set_hitbox_value(AT_UTHROW, 7, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_UTHROW, 7, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_UTHROW, 7, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTHROW, 1, HG_WINDOW, 3);
set_hitbox_value(AT_UTHROW, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UTHROW, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_X, 33);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_Y, -41);
set_hitbox_value(AT_UTHROW, 1, HG_WIDTH, 56);
set_hitbox_value(AT_UTHROW, 1, HG_HEIGHT, 74);
set_hitbox_value(AT_UTHROW, 1, HG_SHAPE, 0);
set_hitbox_value(AT_UTHROW, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_UTHROW, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_UTHROW, 1, HG_ANGLE, 40);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTHROW, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UTHROW, 1, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_UTHROW, 1, HG_VISUAL_EFFECT_Y_OFFSET, 16);
set_hitbox_value(AT_UTHROW, 1, HG_HIT_SFX, sound_get("hmed"));
set_hitbox_value(AT_UTHROW, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_UTHROW, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_UTHROW, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTHROW, 2, HG_WINDOW, 3);
set_hitbox_value(AT_UTHROW, 2, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_UTHROW, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_UTHROW, 2, HG_HITBOX_X, 33);
set_hitbox_value(AT_UTHROW, 2, HG_HITBOX_Y, -41);
set_hitbox_value(AT_UTHROW, 2, HG_WIDTH, 56);
set_hitbox_value(AT_UTHROW, 2, HG_HEIGHT, 74);
set_hitbox_value(AT_UTHROW, 2, HG_SHAPE, 0);
set_hitbox_value(AT_UTHROW, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_UTHROW, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_UTHROW, 2, HG_ANGLE, 40);
set_hitbox_value(AT_UTHROW, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTHROW, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UTHROW, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UTHROW, 2, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_UTHROW, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UTHROW, 2, HG_HIT_SFX, sound_get("hweak"));
set_hitbox_value(AT_UTHROW, 2, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_UTHROW, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_UTHROW, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_UTHROW, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTHROW, 3, HG_WINDOW, 4);
set_hitbox_value(AT_UTHROW, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UTHROW, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_UTHROW, 3, HG_HITBOX_X, 33);
set_hitbox_value(AT_UTHROW, 3, HG_HITBOX_Y, -41);
set_hitbox_value(AT_UTHROW, 3, HG_WIDTH, 56);
set_hitbox_value(AT_UTHROW, 3, HG_HEIGHT, 74);
set_hitbox_value(AT_UTHROW, 3, HG_SHAPE, 0);
set_hitbox_value(AT_UTHROW, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_UTHROW, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_UTHROW, 3, HG_ANGLE, 40);
set_hitbox_value(AT_UTHROW, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTHROW, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UTHROW, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UTHROW, 3, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_UTHROW, 3, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_UTHROW, 3, HG_HIT_SFX, sound_get("hmed"));
set_hitbox_value(AT_UTHROW, 3, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_UTHROW, 3, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_UTHROW, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_UTHROW, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTHROW, 4, HG_WINDOW, 4);
set_hitbox_value(AT_UTHROW, 4, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_UTHROW, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_UTHROW, 4, HG_HITBOX_X, 33);
set_hitbox_value(AT_UTHROW, 4, HG_HITBOX_Y, -41);
set_hitbox_value(AT_UTHROW, 4, HG_WIDTH, 56);
set_hitbox_value(AT_UTHROW, 4, HG_HEIGHT, 74);
set_hitbox_value(AT_UTHROW, 4, HG_SHAPE, 0);
set_hitbox_value(AT_UTHROW, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_UTHROW, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_UTHROW, 4, HG_ANGLE, 40);
set_hitbox_value(AT_UTHROW, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTHROW, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UTHROW, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UTHROW, 4, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_UTHROW, 4, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UTHROW, 4, HG_HIT_SFX, sound_get("hmed"));
set_hitbox_value(AT_UTHROW, 4, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_UTHROW, 4, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_UTHROW, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_UTHROW, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTHROW, 5, HG_WINDOW, 5);
set_hitbox_value(AT_UTHROW, 5, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_UTHROW, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_UTHROW, 5, HG_HITBOX_X, 33);
set_hitbox_value(AT_UTHROW, 5, HG_HITBOX_Y, -41);
set_hitbox_value(AT_UTHROW, 5, HG_WIDTH, 56);
set_hitbox_value(AT_UTHROW, 5, HG_HEIGHT, 74);
set_hitbox_value(AT_UTHROW, 5, HG_SHAPE, 0);
set_hitbox_value(AT_UTHROW, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_UTHROW, 5, HG_DAMAGE, 5);
set_hitbox_value(AT_UTHROW, 5, HG_ANGLE, 40);
set_hitbox_value(AT_UTHROW, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTHROW, 5, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UTHROW, 5, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UTHROW, 5, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_UTHROW, 5, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UTHROW, 5, HG_HIT_SFX, sound_get("hstrong"));
set_hitbox_value(AT_UTHROW, 5, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_UTHROW, 5, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_UTHROW, 5, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_UTHROW, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTHROW, 6, HG_WINDOW, 6);
set_hitbox_value(AT_UTHROW, 6, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UTHROW, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_UTHROW, 6, HG_HITBOX_X, 20);
set_hitbox_value(AT_UTHROW, 6, HG_HITBOX_Y, -24);
set_hitbox_value(AT_UTHROW, 6, HG_WIDTH, 96);
set_hitbox_value(AT_UTHROW, 6, HG_HEIGHT, 56);
set_hitbox_value(AT_UTHROW, 6, HG_SHAPE, 0);
set_hitbox_value(AT_UTHROW, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_UTHROW, 6, HG_DAMAGE, 7);
set_hitbox_value(AT_UTHROW, 6, HG_ANGLE, 40);
set_hitbox_value(AT_UTHROW, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UTHROW, 6, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_UTHROW, 6, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UTHROW, 6, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_UTHROW, 6, HG_VISUAL_EFFECT_Y_OFFSET, 16);
set_hitbox_value(AT_UTHROW, 6, HG_HIT_SFX, sound_get("hstrong"));
set_hitbox_value(AT_UTHROW, 6, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_UTHROW, 6, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_UTHROW, 6, HG_HITBOX_GROUP, -1);