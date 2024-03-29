set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 2);

set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 7);

set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_USTRONG, 1, AG_WINDOW_GOTO, 2);

//spin
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_ori_stomp_spin"));
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_USTRONG, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_USTRONG, 5, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_USTRONG, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 11);

set_window_value(AT_USTRONG, 7, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_USTRONG, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG, 8);

//multihit charge
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 0);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, -36);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -24);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 50);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 80);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USTRONG, 1, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_med2"));
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, vfx_small_sword);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, -1);

//multihit
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -84);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 90);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 30);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 60);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USTRONG, 3, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_USTRONG, 3, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USTRONG, 3, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_USTRONG, 3, HG_TECHABLE, 2);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, 0);

set_hitbox_value(AT_USTRONG, 4, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -84);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_USTRONG, 5, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_USTRONG, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_Y, -84);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_USTRONG, 6, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 6, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 6, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_USTRONG, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_Y, -84);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_GROUP, 3);

//launcher
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 7, HG_WINDOW, 6);
set_hitbox_value(AT_USTRONG, 7, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG, 7, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_Y, -100);
set_hitbox_value(AT_USTRONG, 7, HG_WIDTH, 40);
set_hitbox_value(AT_USTRONG, 7, HG_HEIGHT, 90);
set_hitbox_value(AT_USTRONG, 7, HG_PRIORITY, 4);
set_hitbox_value(AT_USTRONG, 7, HG_DAMAGE, 7);
set_hitbox_value(AT_USTRONG, 7, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 7, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USTRONG, 7, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 7, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 7, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_USTRONG, 7, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USTRONG, 7, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_USTRONG, 7, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy1"));
set_hitbox_value(AT_USTRONG, 7, HG_VISUAL_EFFECT, vfx_large_sword);
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_GROUP, 4);

//body hitbox
set_hitbox_value(AT_USTRONG, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 8, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 8, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG, 8, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 8, HG_HITBOX_X, 20);
set_hitbox_value(AT_USTRONG, 8, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USTRONG, 8, HG_WIDTH, 40);
set_hitbox_value(AT_USTRONG, 8, HG_HEIGHT, 60);
set_hitbox_value(AT_USTRONG, 8, HG_PRIORITY, 5);
set_hitbox_value(AT_USTRONG, 8, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_USTRONG, 8, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG, 8, HG_ANGLE, 80);
set_hitbox_value(AT_USTRONG, 8, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_USTRONG, 8, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 8, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 8, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_USTRONG, 8, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 8, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USTRONG, 8, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_USTRONG, 8, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USTRONG, 8, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));
set_hitbox_value(AT_USTRONG, 8, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_USTRONG, 8, HG_TECHABLE, 1);
set_hitbox_value(AT_USTRONG, 8, HG_HITBOX_GROUP, 0);