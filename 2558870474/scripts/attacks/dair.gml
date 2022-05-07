set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 7);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

//Startup
set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_DAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 1.0);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 1);

//First swing
set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED, -1);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED_TYPE, 0);

//Pull Back
set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED, -3);
set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_DAIR, 3, AG_WINDOW_SFX_FRAME, 2);

//Opens Umbrella
set_window_value(AT_DAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 5);

//Endlag
set_window_value(AT_DAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAME_START, 6);

//Endlag (No Tipper Hit)
set_window_value(AT_DAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DAIR, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DAIR, 4);

//Confirm swing hitbox
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 3);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -6);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 44);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 51);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, 1, HG_HIT_LOCKOUT, 4);
//set_hitbox_value(AT_DAIR, 1, HG_FORCE_FLINCH, 1);

//Confirm swing hitbox tipper
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 3);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, 33);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 40);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 53);
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_icehit_medium1"));
set_hitbox_value(AT_DAIR, 2, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, 1);
//set_hitbox_value(AT_DAIR, 2, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_DAIR, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DAIR, 2, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_DAIR, 2, HG_TIPPER, 1);

//Opening hitbox
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 4);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, 5);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, 5);
set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 132);
set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_DAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 45);
set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DAIR, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, 2);

//Spike hitbox on open
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 4);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X, 5);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, 3);
set_hitbox_value(AT_DAIR, 4, HG_WIDTH, 28);
set_hitbox_value(AT_DAIR, 4, HG_HEIGHT, 58);
set_hitbox_value(AT_DAIR, 4, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 4, HG_DAMAGE, 10);
set_hitbox_value(AT_DAIR, 4, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DAIR, 4, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_DAIR, 4, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_DAIR, 4, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DAIR, 4, HG_VISUAL_EFFECT_X_OFFSET, -8);
set_hitbox_value(AT_DAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, 50);
set_hitbox_value(AT_DAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DAIR, 4, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DAIR, 4, HG_HIT_LOCKOUT, 8);
set_hitbox_value(AT_DAIR, 4, HG_TIPPER, 1);
