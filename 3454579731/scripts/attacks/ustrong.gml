set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 6);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sound_get("sfx_propeller"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_USTRONG, 4, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_USTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 11);

set_window_value(AT_USTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_USTRONG, 6, AG_WINDOW_HAS_WHIFFLAG, 12);

set_num_hitboxes(AT_USTRONG,5);

set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 5);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -88);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, -4);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 47);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 75);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_USTRONG, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, -6);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -84);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 102);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 22);
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 2, HG_TECHABLE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

set_hitbox_value(AT_USTRONG, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, -6);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -84);

set_hitbox_value(AT_USTRONG, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, -6);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -84);

set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_X, -4);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_Y, -42);
set_hitbox_value(AT_USTRONG, 5, HG_WIDTH, 43);
set_hitbox_value(AT_USTRONG, 5, HG_HEIGHT, 87);
set_hitbox_value(AT_USTRONG, 5, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 5, HG_TECHABLE, 2);
set_hitbox_value(AT_USTRONG, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG, 5, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 5, HG_HIT_SFX, asset_get("sfx_blow_medium2"));