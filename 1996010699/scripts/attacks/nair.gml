set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NAIR,8);

set_hitbox_value(AT_NAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, -15);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 45);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 45);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 60);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 1, HG_HIT_LOCKOUT, 5);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_NAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, -8);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -43);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_NAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -48);
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_NAIR, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, 8);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -43);
set_hitbox_value(AT_NAIR, 4, HG_DAMAGE, 7);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_NAIR, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_NAIR, 5, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_X, 15);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_Y, -38);
set_hitbox_value(AT_NAIR, 5, HG_DAMAGE, 7);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_NAIR, 6, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 6, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_NAIR, 6, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_X, 13);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_Y, -23);
set_hitbox_value(AT_NAIR, 6, HG_DAMAGE, 7);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_NAIR, 7, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 7, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 7, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_NAIR, 7, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_X, 6);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_Y, -18);
set_hitbox_value(AT_NAIR, 7, HG_DAMAGE, 7);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_NAIR, 8, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 8, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 8, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_NAIR, 8, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_X, -10);
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_Y, -23);
set_hitbox_value(AT_NAIR, 8, HG_DAMAGE, 7);
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_GROUP, 1);