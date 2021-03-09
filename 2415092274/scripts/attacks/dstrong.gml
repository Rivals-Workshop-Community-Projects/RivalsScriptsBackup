//AR DSTRONG [WIP]

set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 6);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

//dsc   dss   dsa   dsa2  dsh   dsr
//0-0:1 1-2:2 3-4:2 5-6:2 7-7:1 8-10:3

set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 4);//11
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_DSTRONG, 6, AG_WINDOW_LENGTH, 11);//16
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSTRONG, 2);

set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 37);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 60);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 37);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 10);//9
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 40);//37
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 7);//8
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 1.05);//.56
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 10);//5
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 1);//1.1
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, 16);
//set_hitbox_value(AT_DSTRONG, 1, HG_HITSTUN_MULTIPLIER, 0.75);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, -34);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 50);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 37);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 10);//11
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 40);//47
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 7);//5
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 1.05);//.62
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 10);//6
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, 1);//1.3
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, 16);
//set_hitbox_value(AT_DSTRONG, 2, HG_HITSTUN_MULTIPLIER, 0.75);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));








