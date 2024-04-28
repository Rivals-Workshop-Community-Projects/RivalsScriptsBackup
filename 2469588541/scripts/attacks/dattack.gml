set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

set_window_value(AT_DATTACK, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_DATTACK, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 8);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .2);

set_window_value(AT_DATTACK, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DATTACK, 3, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

set_window_value(AT_DATTACK, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HSPEED, 8);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_DATTACK, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 5, AG_WINDOW_LENGTH, 16); //14 7axel7 dattack nerf
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DATTACK, 2);

// 7axel7 dattack1 values
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE_FLIPPER, 4); // 0
set_hitbox_value(AT_DATTACK, 1, HG_EXTRA_HITPAUSE, 3); // 0
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 44);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 60);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 35); // 30
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 9); // 6
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"))


set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -24);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 100);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 48);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 65);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DATTACK, 2, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT_X_OFFSET, 12);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"))