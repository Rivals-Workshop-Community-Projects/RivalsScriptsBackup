set_attack_value(AT_DSTRONG_2, AG_SPRITE, sprite_get("bluedstrong"));
set_attack_value(AT_DSTRONG_2, AG_NUM_WINDOWS, 6);
set_attack_value(AT_DSTRONG_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DSTRONG_2, AG_STRONG_CHARGE_WINDOW, 2);
set_attack_value(AT_DSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("bluedstrong_hurt"));

set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_TYPE, 1);
//set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_SFX, asset_get("sfx_zetter_downb"));
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_DSTRONG_2, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 5, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSTRONG_2, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG_2, 5, AG_WINDOW_ANIM_FRAME_START, 10);

set_window_value(AT_DSTRONG_2, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 6, AG_WINDOW_LENGTH, 24);
set_window_value(AT_DSTRONG_2, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG_2, 6, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_DSTRONG_2, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSTRONG_2, 3);

set_hitbox_value(AT_DSTRONG_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_WINDOW, 5);
set_hitbox_value(AT_DSTRONG_2, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DSTRONG_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG_2, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DSTRONG_2, 1, HG_WIDTH, 100);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HEIGHT, 35);
set_hitbox_value(AT_DSTRONG_2, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG_2, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_DSTRONG_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DSTRONG_2, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG_2, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));


//HITBOX 2
set_hitbox_value(AT_DSTRONG_2, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG_2, 2, HG_WINDOW, 5);
set_hitbox_value(AT_DSTRONG_2, 2, HG_LIFETIME,3);
set_hitbox_value(AT_DSTRONG_2, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITBOX_Y, -13);
set_hitbox_value(AT_DSTRONG_2, 2, HG_WIDTH, 44);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_DSTRONG_2, 2, HG_PRIORITY, 9);
set_hitbox_value(AT_DSTRONG_2, 2, HG_DAMAGE, 5);
//set_hitbox_value(AT_DSTRONG_2, 2, HG_ANGLE, 50);
set_hitbox_value(AT_DSTRONG_2, 2, HG_ANGLE, 90);
//set_hitbox_value(AT_DSTRONG_2, 2, HG_BASE_KNOCKBACK, 8);
//set_hitbox_value(AT_DSTRONG_2, 2, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_DSTRONG_2, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSTRONG_2, 2, HG_BASE_HITPAUSE, 5);
//set_hitbox_value(AT_DSTRONG_2, 2, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DSTRONG_2, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITSTUN_MULTIPLIER, 1.0);

//HITBOX 2
set_hitbox_value(AT_DSTRONG_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG_2, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSTRONG_2, 3, HG_WINDOW, 5);
set_hitbox_value(AT_DSTRONG_2, 3, HG_LIFETIME,3);
set_hitbox_value(AT_DSTRONG_2, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG_2, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DSTRONG_2, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG_2, 3, HG_HITBOX_Y, -28);
set_hitbox_value(AT_DSTRONG_2, 3, HG_WIDTH, 144);
set_hitbox_value(AT_DSTRONG_2, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_DSTRONG_2, 3, HG_PRIORITY, 9);
set_hitbox_value(AT_DSTRONG_2, 3, HG_DAMAGE, 5);
//set_hitbox_value(AT_DSTRONG_23 2, HG_ANGLE, 50);
set_hitbox_value(AT_DSTRONG_2, 3, HG_ANGLE, 45);
//set_hitbox_value(AT_DSTRONG_23 2, HG_BASE_KNOCKBACK, 8);
//set_hitbox_value(AT_DSTRONG_23 2, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_DSTRONG_2, 3, HG_VISUAL_EFFECT, blue_big_hit_vfx);
set_hitbox_value(AT_DSTRONG_2, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG_2, 3, HG_KNOCKBACK_SCALING, 1.15);
set_hitbox_value(AT_DSTRONG_2, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG_2, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSTRONG_2, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DSTRONG_2, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG_2, 3, HG_HITSTUN_MULTIPLIER, 1.0);