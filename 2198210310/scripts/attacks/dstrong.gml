set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);

set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 3);

set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSTRONG, 4);

set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 150);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 55);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 60);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 50);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 65);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 52);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -60);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 35);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 65);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 3, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSTRONG, 4, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, -52);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, -60);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_GROUP, 1);
