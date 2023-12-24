set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 6);

set_window_value(AT_UAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_UAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED, -1);

set_window_value(AT_UAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_UAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_UAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 5, AG_WINDOW_LENGTH, 15);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_UAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 5);

set_num_hitboxes(AT_UAIR, 9);

//headstalk
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -62);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 72);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_UAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_UAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -62);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_UAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -62);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_UAIR, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UAIR, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_Y, -62);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_GROUP, 4);

//body
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 5, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UAIR, 5, HG_LIFETIME, 1);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_Y, -44);
set_hitbox_value(AT_UAIR, 5, HG_WIDTH, 40);
set_hitbox_value(AT_UAIR, 5, HG_HEIGHT, 36);
set_hitbox_value(AT_UAIR, 5, HG_SHAPE, 1);
set_hitbox_value(AT_UAIR, 5, HG_PRIORITY, 5);
set_hitbox_value(AT_UAIR, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_UAIR, 5, HG_ANGLE, 80);
set_hitbox_value(AT_UAIR, 5, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_UAIR, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UAIR, 5, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UAIR, 5, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UAIR, 5, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_UAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_UAIR, 5, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_UAIR, 6, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 6, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UAIR, 6, HG_LIFETIME, 1);
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_Y, -44);
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_UAIR, 7, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_UAIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 7, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 7, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UAIR, 7, HG_LIFETIME, 1);
set_hitbox_value(AT_UAIR, 7, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 7, HG_HITBOX_Y, -44);
set_hitbox_value(AT_UAIR, 7, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_UAIR, 8, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_UAIR, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 8, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 8, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UAIR, 8, HG_LIFETIME, 1);
set_hitbox_value(AT_UAIR, 8, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 8, HG_HITBOX_Y, -44);
set_hitbox_value(AT_UAIR, 8, HG_HITBOX_GROUP, 4);

//launcher
set_hitbox_value(AT_UAIR, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 9, HG_WINDOW, 4);
set_hitbox_value(AT_UAIR, 9, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UAIR, 9, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 9, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 9, HG_HITBOX_Y, -56);
set_hitbox_value(AT_UAIR, 9, HG_WIDTH, 72);
set_hitbox_value(AT_UAIR, 9, HG_HEIGHT, 54);
set_hitbox_value(AT_UAIR, 9, HG_SHAPE, 2);
set_hitbox_value(AT_UAIR, 9, HG_PRIORITY, 3);
set_hitbox_value(AT_UAIR, 9, HG_DAMAGE, 4);
set_hitbox_value(AT_UAIR, 9, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 9, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_UAIR, 9, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 9, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_UAIR, 9, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 9, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_UAIR, 9, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_UAIR, 9, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_UAIR, 9, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_UAIR, 9, HG_HITBOX_GROUP, 5);