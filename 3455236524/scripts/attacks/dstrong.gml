set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

//Pre Charge
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"));

//Post Charge
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_ori_stomp_hit"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, 1);

//Slam
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_ori_stomp_hit"));
set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX_FRAME, 15);

//Finisher
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 10);

//Endlag
set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSTRONG, 4);

set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 88);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 300);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 0.0);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DSTRONG, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 10);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 108);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 280);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 0.0);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DSTRONG, 2, HG_TECHABLE, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSTRONG, 2, HG_HITSTUN_MULTIPLIER, 1.5);

set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 40);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 88);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_DSTRONG, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 300);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, 0.0);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DSTRONG, 3, HG_TECHABLE, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, 15);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSTRONG, 4, HG_WIDTH, 128);
set_hitbox_value(AT_DSTRONG, 4, HG_HEIGHT, 40);
set_hitbox_value(AT_DSTRONG, 4, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_DAMAGE, 6);
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE, 70);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 4, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 4, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DSTRONG, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DSTRONG, 4, HG_HITSTUN_MULTIPLIER, 1.0);