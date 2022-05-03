set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 7);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 12);

set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 13);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, sound_get("speen"));

set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_NAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_NAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_NAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NAIR, 6, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NAIR, 6, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_NAIR, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 7, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NAIR, 7, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NAIR, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_NAIR, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 8, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NAIR, 8, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_NAIR, 8, AG_WINDOW_ANIM_FRAMES, 5);

set_window_value(AT_NAIR, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 9, AG_WINDOW_LENGTH, 18);
set_window_value(AT_NAIR, 9, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_NAIR, 9, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 9, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NAIR, 12);

set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -14);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 130);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 130);
set_hitbox_value(AT_NAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 8);
//set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, .45);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 2);
//set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, 1.45);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, sound_get("slash_hit"));
set_hitbox_value(AT_NAIR, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_NAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -14);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_NAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -14);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_NAIR, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -14);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_NAIR, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, 5, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_Y, -14);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_NAIR, 6, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 6, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, 6, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_NAIR, 6, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_Y, -14);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_NAIR, 7, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 7, HG_WINDOW, 5);
set_hitbox_value(AT_NAIR, 7, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_Y, -14);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_NAIR, 8, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 8, HG_WINDOW, 5);
set_hitbox_value(AT_NAIR, 8, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_NAIR, 8, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_Y, -14);
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_NAIR, 9, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 9, HG_WINDOW, 6);
set_hitbox_value(AT_NAIR, 9, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 9, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 9, HG_HITBOX_Y, -14);
set_hitbox_value(AT_NAIR, 9, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_NAIR, 10, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 10, HG_WINDOW, 6);
set_hitbox_value(AT_NAIR, 10, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_NAIR, 10, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 10, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 10, HG_HITBOX_Y, -14);
set_hitbox_value(AT_NAIR, 10, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_NAIR, 11, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 11, HG_WINDOW, 70);
set_hitbox_value(AT_NAIR, 11, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 11, HG_HITBOX_X, 40);
set_hitbox_value(AT_NAIR, 11, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NAIR, 11, HG_WIDTH, 100);
set_hitbox_value(AT_NAIR, 11, HG_HEIGHT, 70);
set_hitbox_value(AT_NAIR, 11, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 11, HG_PRIORITY, 7);
set_hitbox_value(AT_NAIR, 11, HG_DAMAGE, 6);
set_hitbox_value(AT_NAIR, 11, HG_ANGLE, 361);
set_hitbox_value(AT_NAIR, 11, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 11, HG_KNOCKBACK_SCALING, .95);
set_hitbox_value(AT_NAIR, 11, HG_BASE_HITPAUSE, 13);
set_hitbox_value(AT_NAIR, 11, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_NAIR, 11, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NAIR, 11, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_NAIR, 11, HG_HIT_LOCKOUT, 8);

set_hitbox_value(AT_NAIR, 12, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 12, HG_WINDOW, 70);
set_hitbox_value(AT_NAIR, 12, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 12, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 12, HG_HITBOX_Y, -70);
set_hitbox_value(AT_NAIR, 12, HG_WIDTH, 120);
set_hitbox_value(AT_NAIR, 12, HG_HEIGHT, 70);
set_hitbox_value(AT_NAIR, 12, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 12, HG_PRIORITY, 6);
set_hitbox_value(AT_NAIR, 12, HG_DAMAGE, 3);
set_hitbox_value(AT_NAIR, 12, HG_ANGLE, 361);
set_hitbox_value(AT_NAIR, 12, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 12, HG_KNOCKBACK_SCALING, .95);
set_hitbox_value(AT_NAIR, 12, HG_BASE_HITPAUSE, 13);
set_hitbox_value(AT_NAIR, 12, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_NAIR, 12, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NAIR, 12, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_NAIR, 12, HG_HIT_LOCKOUT, 8);

set_hitbox_value(AT_NAIR, 13, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 13, HG_WINDOW, 70);
set_hitbox_value(AT_NAIR, 13, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 13, HG_HITBOX_X, 40);
set_hitbox_value(AT_NAIR, 13, HG_HITBOX_Y, -10);
set_hitbox_value(AT_NAIR, 13, HG_WIDTH, 90);
set_hitbox_value(AT_NAIR, 13, HG_HEIGHT, 20);
set_hitbox_value(AT_NAIR, 13, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 13, HG_PRIORITY, 8);
set_hitbox_value(AT_NAIR, 13, HG_DAMAGE, 6);
set_hitbox_value(AT_NAIR, 13, HG_ANGLE, 270);
set_hitbox_value(AT_NAIR, 13, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 13, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_NAIR, 13, HG_BASE_HITPAUSE, 13);
set_hitbox_value(AT_NAIR, 13, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_NAIR, 13, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NAIR, 13, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));