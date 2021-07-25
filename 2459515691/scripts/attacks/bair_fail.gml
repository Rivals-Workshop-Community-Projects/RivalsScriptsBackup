set_attack_value(AT_BAIRFAIL, AG_CATEGORY, 1);
set_attack_value(AT_BAIRFAIL, AG_SPRITE, sprite_get("bair_fail"));
set_attack_value(AT_BAIRFAIL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_BAIRFAIL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIRFAIL, AG_LANDING_LAG, 7);
set_attack_value(AT_BAIRFAIL, AG_HURTBOX_SPRITE, sprite_get("bair_fail_hurt"));

set_window_value(AT_BAIRFAIL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIRFAIL, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_BAIRFAIL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIRFAIL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIRFAIL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_BAIRFAIL, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_BAIRFAIL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIRFAIL, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_BAIRFAIL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIRFAIL, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_BAIRFAIL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIRFAIL, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_BAIRFAIL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIRFAIL, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_BAIRFAIL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIRFAIL, 3, AG_WINDOW_SFX, asset_get("sfx_zetter_shine_taunt"));
set_window_value(AT_BAIRFAIL, 3, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_BAIRFAIL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIRFAIL, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_BAIRFAIL, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIRFAIL, 4, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_BAIRFAIL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIRFAIL, 5, AG_WINDOW_LENGTH, 5);
set_window_value(AT_BAIRFAIL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIRFAIL, 5, AG_WINDOW_ANIM_FRAME_START, 7);

set_num_hitboxes(AT_BAIRFAIL, 2);

set_hitbox_value(AT_BAIRFAIL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_BAIRFAIL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIRFAIL, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_BAIRFAIL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIRFAIL, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_BAIRFAIL, 1, HG_HITBOX_X, -28);
set_hitbox_value(AT_BAIRFAIL, 1, HG_HITBOX_Y, -22);
set_hitbox_value(AT_BAIRFAIL, 1, HG_WIDTH, 40);
set_hitbox_value(AT_BAIRFAIL, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_BAIRFAIL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIRFAIL, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_BAIRFAIL, 1, HG_SHAPE, 1);
set_hitbox_value(AT_BAIRFAIL, 1, HG_ANGLE, 130);
set_hitbox_value(AT_BAIRFAIL, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_BAIRFAIL, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_BAIRFAIL, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_BAIRFAIL, 1, HG_ANGLE_FLIPPER, 6);

set_hitbox_value(AT_BAIRFAIL, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_BAIRFAIL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIRFAIL, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_BAIRFAIL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_BAIRFAIL, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_BAIRFAIL, 2, HG_HITBOX_X, 12);
set_hitbox_value(AT_BAIRFAIL, 2, HG_HITBOX_Y, -18);
set_hitbox_value(AT_BAIRFAIL, 2, HG_WIDTH, 40);
set_hitbox_value(AT_BAIRFAIL, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_BAIRFAIL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIRFAIL, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_BAIRFAIL, 2, HG_SHAPE, 1);
set_hitbox_value(AT_BAIRFAIL, 2, HG_ANGLE, 125);
set_hitbox_value(AT_BAIRFAIL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIRFAIL, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_BAIRFAIL, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_BAIRFAIL, 2, HG_ANGLE_FLIPPER, 0);