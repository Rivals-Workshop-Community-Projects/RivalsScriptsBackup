set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 0.1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 5);

set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 25);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 0.5);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_med2"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_ell_arc_taunt_end"));
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 14);

set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 19);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 13);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 12);

set_num_hitboxes(AT_USTRONG,4);



set_hitbox_value(AT_USTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -72);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 7);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 30);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 7.5);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 40);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 5);
set_hitbox_value(AT_USTRONG, 1, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_USTRONG, 1, HG_SDI_MULTIPLIER, -.25);
set_hitbox_value(AT_USTRONG, 1, HG_DRIFT_MULTIPLIER, -.25);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_med2"));
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 147);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, 1);



set_hitbox_value(AT_USTRONG, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -69);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 5);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 10);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 15);
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 2, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 13);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, sound_get("squack4"));
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 157);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, 2);





set_hitbox_value(AT_USTRONG, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -70);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 5);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 100);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 115);
set_hitbox_value(AT_USTRONG, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 7.5);
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG, 3, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_USTRONG, 3, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, sound_get("squack5"));
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 197);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, 2);




set_hitbox_value(AT_USTRONG, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 7);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -80);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, 5);
set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 110);
set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 60);
set_hitbox_value(AT_USTRONG, 4, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 8);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE, 83);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 4, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG, 4, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_USTRONG, 4, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_USTRONG, 4, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, sound_get("squack2"));
set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT, 197);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_GROUP, 2);


