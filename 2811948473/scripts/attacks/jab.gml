set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 12);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, sound_get("swipe"));

set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_SFX, sound_get("blipblip"));

set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 0);


set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX, sound_get("swipe"));

set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 5);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_JAB, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_SFX, sound_get("blipblip"));

set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_FRAME, 0);


set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(AT_JAB, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_SFX, asset_get("sfx_orca_soak"));

set_window_value(AT_JAB, 8, AG_WINDOW_LENGTH, 10);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAME_START, 23);
set_window_value(AT_JAB, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 8, AG_WINDOW_SFX, asset_get("sfx_orca_shake_water"));

set_window_value(AT_JAB, 9, AG_WINDOW_LENGTH, 10);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAME_START, 23);
set_window_value(AT_JAB, 9, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_JAB, 9, AG_WINDOW_SFX, asset_get("sfx_orca_shake_water"));

set_window_value(AT_JAB, 10, AG_WINDOW_LENGTH, 8);
set_window_value(AT_JAB, 10, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 10, AG_WINDOW_ANIM_FRAME_START, 28);
set_window_value(AT_JAB, 10, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 10, AG_WINDOW_CANCEL_FRAME, 0);

set_window_value(AT_JAB, 11, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 11, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 11, AG_WINDOW_ANIM_FRAME_START, 30);
set_window_value(AT_JAB, 11, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 11, AG_WINDOW_SFX, sound_get("bwip"));

set_window_value(AT_JAB, 12, AG_WINDOW_LENGTH, 16);
set_window_value(AT_JAB, 12, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 12, AG_WINDOW_ANIM_FRAME_START, 33);

set_num_hitboxes(AT_JAB, 8);

set_hitbox_value(AT_JAB, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 45);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 61);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 53);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 45);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_JAB, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, sound_get("hit_weak"));

set_hitbox_value(AT_JAB, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_JAB, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 45);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 61);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 53);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 45);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_JAB, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, sound_get("hit_weak"));
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_JAB, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 64);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -38);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 56);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 78);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 45);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT, 280);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, sound_get("hit_weak"));
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_JAB, 4, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 4, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 4, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_JAB, 4, HG_LIFETIME, 5);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_X, 64);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_Y, -38);

set_hitbox_value(AT_JAB, 5, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 5, HG_WINDOW, 9);
set_hitbox_value(AT_JAB, 5, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_JAB, 5, HG_LIFETIME, 5);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_X, 64);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_Y, -38);

set_hitbox_value(AT_JAB, 6, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_JAB, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 6, HG_WINDOW, 9);
set_hitbox_value(AT_JAB, 6, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_JAB, 6, HG_LIFETIME, 5);
set_hitbox_value(AT_JAB, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 6, HG_HITBOX_X, 64);
set_hitbox_value(AT_JAB, 6, HG_HITBOX_Y, -38);

set_hitbox_value(AT_JAB, 8, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_JAB, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 8, HG_WINDOW, 11);
set_hitbox_value(AT_JAB, 8, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 8, HG_HITBOX_X, 58);
set_hitbox_value(AT_JAB, 8, HG_HITBOX_Y, -40);
set_hitbox_value(AT_JAB, 8, HG_WIDTH, 68);
set_hitbox_value(AT_JAB, 8, HG_HEIGHT, 85);
set_hitbox_value(AT_JAB, 8, HG_PRIORITY, 3);
set_hitbox_value(AT_JAB, 8, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 8, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 8, HG_ANGLE, 45);
set_hitbox_value(AT_JAB, 8, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_JAB, 8, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_JAB, 8, HG_BASE_HITPAUSE, 25);
set_hitbox_value(AT_JAB, 8, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_JAB, 8, HG_VISUAL_EFFECT, 303  );
set_hitbox_value(AT_JAB, 8, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 8, HG_HIT_SFX, sound_get("hit_med"));
set_hitbox_value(AT_JAB, 8, HG_HITBOX_GROUP, -1);