set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 2);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 6);

set_window_value(AT_UAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_UAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_UAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_CANCEL_TYPE, 1);

set_window_value(AT_UAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_UAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_UAIR, 4, AG_WINDOW_SFX_FRAME, 14);

set_window_value(AT_UAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 5, AG_WINDOW_LENGTH, 2);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAME_START, 11);

set_window_value(AT_UAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 6, AG_WINDOW_LENGTH, 21);
set_window_value(AT_UAIR, 6, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_UAIR, 6, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_UAIR, 6, AG_WINDOW_HAS_WHIFFLAG, 1);
//set_window_value(AT_UAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UAIR,4);

set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, -27);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -33);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 40);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 55);
set_hitbox_value(AT_UAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 110);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(AT_UAIR, 1, HG_EXTRA_HITPAUSE, 2);
//set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));


set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, -12);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -66);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 67);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 63);
set_hitbox_value(AT_UAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 110);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(AT_UAIR, 2, HG_EXTRA_HITPAUSE, 2);
//set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, 18);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -64);
set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 33);
set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 46);
set_hitbox_value(AT_UAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_UAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 3, HG_ANGLE, 280);
set_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_UAIR, 3, HG_KNOCKBACK_SCALING, .05);
set_hitbox_value(AT_UAIR, 3, HG_EXTRA_HITPAUSE, 2);
//set_hitbox_value(A_NAIR, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_UAIR, 3, HG_HITPAUSE_SCALING, .05);
set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

set_hitbox_value(AT_UAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW, 5);
set_hitbox_value(AT_UAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_X, -10);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_Y, -54);
set_hitbox_value(AT_UAIR, 4, HG_WIDTH, 42);
set_hitbox_value(AT_UAIR, 4, HG_HEIGHT, 92);
set_hitbox_value(AT_UAIR, 4, HG_SHAPE, 2);
set_hitbox_value(AT_UAIR, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 4, HG_DAMAGE, 16);
set_hitbox_value(AT_UAIR, 4, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 4, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_UAIR, 4, HG_KNOCKBACK_SCALING, 1.0);
//set_hitbox_value(A_NAIR, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_UAIR, 4, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_UAIR, 4, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_UAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));