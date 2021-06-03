set_attack_value(AT_NTHROW, AG_CATEGORY, 1);
set_attack_value(AT_NTHROW, AG_SPRITE, sprite_get("nodispenser_nair"));
set_attack_value(AT_NTHROW, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NTHROW, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NTHROW, AG_LANDING_LAG, 6);
set_attack_value(AT_NTHROW, AG_HURTBOX_SPRITE, sprite_get("nodispenser_nair_hurt"));

set_window_value(AT_NTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_NTHROW, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_NTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_NTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NTHROW, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_NTHROW,4);

set_hitbox_value(AT_NTHROW, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NTHROW, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_Y, -26);
set_hitbox_value(AT_NTHROW, 1, HG_WIDTH, 54);
set_hitbox_value(AT_NTHROW, 1, HG_HEIGHT, 54);
set_hitbox_value(AT_NTHROW, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NTHROW, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_NTHROW, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_NTHROW, 1, HG_ANGLE, 55);
set_hitbox_value(AT_NTHROW, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NTHROW, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NTHROW, 1, HG_HITPAUSE_SCALING, .22)
set_hitbox_value(AT_NTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_NTHROW, 1, HG_HIT_LOCKOUT, 9);

set_hitbox_value(AT_NTHROW, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NTHROW, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NTHROW, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NTHROW, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NTHROW, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_NTHROW, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_NTHROW, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NTHROW, 2, HG_WIDTH, 54);
set_hitbox_value(AT_NTHROW, 2, HG_HEIGHT, 54);
set_hitbox_value(AT_NTHROW, 2, HG_SHAPE, 0);
set_hitbox_value(AT_NTHROW, 2, HG_PRIORITY, 10);
set_hitbox_value(AT_NTHROW, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_NTHROW, 2, HG_ANGLE, 80);
set_hitbox_value(AT_NTHROW, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NTHROW, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NTHROW, 2, HG_KNOCKBACK_SCALING, .25);
set_hitbox_value(AT_NTHROW, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NTHROW, 2, HG_HITPAUSE_SCALING, .22)
set_hitbox_value(AT_NTHROW, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_NTHROW, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_NTHROW, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NTHROW, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NTHROW, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NTHROW, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_NTHROW, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_NTHROW, 3, HG_HITBOX_X, -24);
set_hitbox_value(AT_NTHROW, 3, HG_HITBOX_Y, -26);
set_hitbox_value(AT_NTHROW, 3, HG_WIDTH, 54);
set_hitbox_value(AT_NTHROW, 3, HG_HEIGHT, 54);
set_hitbox_value(AT_NTHROW, 3, HG_SHAPE, 0);
set_hitbox_value(AT_NTHROW, 3, HG_PRIORITY, 10);
set_hitbox_value(AT_NTHROW, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_NTHROW, 3, HG_ANGLE, 100);
set_hitbox_value(AT_NTHROW, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NTHROW, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NTHROW, 3, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_NTHROW, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NTHROW, 3, HG_HITPAUSE_SCALING, .22)
set_hitbox_value(AT_NTHROW, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_NTHROW, 3, HG_HIT_LOCKOUT, 8);
set_hitbox_value(AT_NTHROW, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_NTHROW, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NTHROW, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NTHROW, 4, HG_WINDOW, 2);
set_hitbox_value(AT_NTHROW, 4, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_NTHROW, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_NTHROW, 4, HG_HITBOX_X, 2);
set_hitbox_value(AT_NTHROW, 4, HG_HITBOX_Y, -56);
set_hitbox_value(AT_NTHROW, 4, HG_WIDTH, 54);
set_hitbox_value(AT_NTHROW, 4, HG_HEIGHT, 54);
set_hitbox_value(AT_NTHROW, 4, HG_SHAPE, 0);
set_hitbox_value(AT_NTHROW, 4, HG_PRIORITY, 10);
set_hitbox_value(AT_NTHROW, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_NTHROW, 4, HG_ANGLE, 361);
set_hitbox_value(AT_NTHROW, 4, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NTHROW, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NTHROW, 4, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_NTHROW, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NTHROW, 4, HG_HITPAUSE_SCALING, .22)
set_hitbox_value(AT_NTHROW, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NTHROW, 4, HG_HIT_LOCKOUT, 8);
set_hitbox_value(AT_NTHROW, 4, HG_HITBOX_GROUP, -1);