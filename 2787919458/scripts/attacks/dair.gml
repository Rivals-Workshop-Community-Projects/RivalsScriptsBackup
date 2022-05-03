set_attack_value(AT_DAIR, AG_CATEGORY, 2);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 10);
set_attack_value(AT_DAIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 24);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));

set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_GOTO, 6);

set_window_value(AT_DAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_SFX, sound_get("sfx_sonic_spindash_turn"));
set_window_value(AT_DAIR, 4, AG_WINDOW_SFX_FRAME, 1);

set_num_hitboxes(AT_DAIR, 7);

set_hitbox_value(AT_DAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 1);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 80);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_DAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 1);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, 1);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DAIR, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X, 1);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DAIR, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_DAIR, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_X, 1);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DAIR, 6, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 6, HG_WINDOW_CREATION_FRAME, 20);
set_hitbox_value(AT_DAIR, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_X, 1);
set_hitbox_value(AT_DAIR, 6, HG_WIDTH, 80);
set_hitbox_value(AT_DAIR, 6, HG_HEIGHT, 60);
set_hitbox_value(AT_DAIR, 6, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 6, HG_DAMAGE, 4);
set_hitbox_value(AT_DAIR, 6, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 6, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DAIR, 6, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_DAIR, 6, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DAIR, 6, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DAIR, 7, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DAIR, 7, HG_WINDOW, 4);
set_hitbox_value(AT_DAIR, 7, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DAIR, 7, HG_LIFETIME, 6);
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_X, -10);
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DAIR, 7, HG_WIDTH, 80);
set_hitbox_value(AT_DAIR, 7, HG_HEIGHT, 50);
set_hitbox_value(AT_DAIR, 7, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 7, HG_PRIORITY, 8);
set_hitbox_value(AT_DAIR, 7, HG_DAMAGE, 4);
set_hitbox_value(AT_DAIR, 7, HG_ANGLE, 361);
set_hitbox_value(AT_DAIR, 7, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DAIR, 7, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_DAIR, 7, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DAIR, 7, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_DAIR, 7, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DAIR, 7, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DAIR, 7, HG_HIT_LOCKOUT, 10);