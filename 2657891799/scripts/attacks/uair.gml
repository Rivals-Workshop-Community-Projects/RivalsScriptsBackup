set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 4);

set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_ori_stomp_spin"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED, -2);
set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED_TYPE, 0);


set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_UAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UAIR, 6);

//body
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -60);
set_hitbox_value(AT_UAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 50);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 70);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR, 1, HG_TECHABLE, 1);

//hit2
set_hitbox_value(AT_UAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -60);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, 2);

//hit3
set_hitbox_value(AT_UAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -60);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_GROUP, 3);

//hit4
set_hitbox_value(AT_UAIR, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_UAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_Y, -60);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_GROUP, 4);

//hit5
set_hitbox_value(AT_UAIR, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 5, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_UAIR, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_Y, -60);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_GROUP, 5);

//launcher
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 6, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 6, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UAIR, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_Y, -60);
set_hitbox_value(AT_UAIR, 6, HG_SHAPE, 0);
set_hitbox_value(AT_UAIR, 6, HG_WIDTH, 55);
set_hitbox_value(AT_UAIR, 6, HG_HEIGHT, 85);
set_hitbox_value(AT_UAIR, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_UAIR, 6, HG_DAMAGE, 6);
set_hitbox_value(AT_UAIR, 6, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 6, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_UAIR, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UAIR, 6, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_UAIR, 6, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UAIR, 6, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_UAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UAIR, 6, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_GROUP, 6);