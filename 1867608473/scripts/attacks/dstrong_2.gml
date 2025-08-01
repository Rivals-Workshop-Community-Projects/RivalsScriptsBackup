set_attack_value(AT_DSTRONG_2, AG_SPRITE, sprite_get("dstrong2"));
set_attack_value(AT_DSTRONG_2, AG_CATEGORY, 2);
set_attack_value(AT_DSTRONG_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSTRONG_2, AG_NUM_WINDOWS, 7);
set_attack_value(AT_DSTRONG_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DSTRONG_2, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_DSTRONG_2, AG_STRONG_CHARGE_WINDOW, 2);
set_attack_value(AT_DSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("dstrong2_hurt"));

// Start to charge
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_CUSTOM_GRAVITY, 0);

// Start to charge
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_CUSTOM_GRAVITY, 0);

// SWING DOWN
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_CUSTOM_GRAVITY, 0);

// Active Hitbox
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_TYPE, 10);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_CUSTOM_GRAVITY, 7);

// Impact
set_window_value(AT_DSTRONG_2, 5, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSTRONG_2, 5, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSTRONG_2, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG_2, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSTRONG_2, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG_2, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_DSTRONG_2, 5, AG_WINDOW_CUSTOM_GRAVITY, 5);

// Impact
set_window_value(AT_DSTRONG_2, 6, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSTRONG_2, 6, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSTRONG_2, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG_2, 6, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DSTRONG_2, 6, AG_WINDOW_CUSTOM_GRAVITY, 5);

// Recovery
set_window_value(AT_DSTRONG_2, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 7, AG_WINDOW_LENGTH, 16);//22, makes this animation look really janky theres probably a better way to do this
set_window_value(AT_DSTRONG_2, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG_2, 7, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DSTRONG_2, 7, AG_WINDOW_CUSTOM_GRAVITY, 0.5);
set_window_value(AT_DSTRONG_2, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

// SWING DOWN FULLY CHARGED
set_window_value(AT_DSTRONG_2, 8, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSTRONG_2, 8, AG_WINDOW_LENGTH, 32);
set_window_value(AT_DSTRONG_2, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG_2, 8, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSTRONG_2, 8, AG_WINDOW_CUSTOM_GRAVITY, 0);

set_num_hitboxes(AT_DSTRONG_2,3);

// NYOOOOM
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG_2, 1, HG_LIFETIME, 16);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_X, 22);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DSTRONG_2, 1, HG_WIDTH, 41);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HEIGHT, 66);
set_hitbox_value(AT_DSTRONG_2, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG_2, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DSTRONG_2, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DSTRONG_2, 1, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_DSTRONG_2, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSTRONG_2, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSTRONG_2, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITSTUN_MULTIPLIER, 2.0);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_GROUP, 1);

// Impact Hitbox
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG_2, 2, HG_WINDOW, 6);
set_hitbox_value(AT_DSTRONG_2, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITBOX_X, 13);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITBOX_Y, -17);
set_hitbox_value(AT_DSTRONG_2, 2, HG_WIDTH, 130);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HEIGHT, 37);
set_hitbox_value(AT_DSTRONG_2, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG_2, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG_2, 2, HG_DAMAGE, 11);
set_hitbox_value(AT_DSTRONG_2, 2, HG_ANGLE, 55);
set_hitbox_value(AT_DSTRONG_2, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSTRONG_2, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSTRONG_2, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_DSTRONG_2, 2, HG_VISUAL_EFFECT, 13);
set_hitbox_value(AT_DSTRONG_2, 2, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG_2, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITSTUN_MULTIPLIER, 1.0);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITBOX_GROUP, 2);

// Kris Sweetspot
set_hitbox_value(AT_DSTRONG_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG_2, 3, HG_WINDOW, 6);
set_hitbox_value(AT_DSTRONG_2, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG_2, 3, HG_HITBOX_X, 18);
set_hitbox_value(AT_DSTRONG_2, 3, HG_HITBOX_Y, -13);
set_hitbox_value(AT_DSTRONG_2, 3, HG_WIDTH, 41);
set_hitbox_value(AT_DSTRONG_2, 3, HG_HEIGHT, 47);
set_hitbox_value(AT_DSTRONG_2, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG_2, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG_2, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_DSTRONG_2, 3, HG_ANGLE, 70);
set_hitbox_value(AT_DSTRONG_2, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG_2, 3, HG_KNOCKBACK_SCALING, 1.3);
set_hitbox_value(AT_DSTRONG_2, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSTRONG_2, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSTRONG_2, 3, HG_VISUAL_EFFECT, 13);
set_hitbox_value(AT_DSTRONG_2, 3, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG_2, 3, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
set_hitbox_value(AT_DSTRONG_2, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG_2, 3, HG_HITSTUN_MULTIPLIER, 1.0);
set_hitbox_value(AT_DSTRONG_2, 3, HG_HITBOX_GROUP, 2);