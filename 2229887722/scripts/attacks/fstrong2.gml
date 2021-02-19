set_attack_value(AT_FSTRONG_2, AG_SPRITE, sprite_get("idle"));
set_attack_value(AT_FSTRONG_2, AG_NUM_WINDOWS, 8);
set_attack_value(AT_FSTRONG_2, AG_CATEGORY, 2);
//set_attack_value(AT_FSTRONG_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG_2, AG_STRONG_CHARGE_WINDOW, 2);
set_attack_value(AT_FSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("hurtbox"));
set_attack_value(AT_FSTRONG_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSTRONG_2, AG_USES_CUSTOM_GRAVITY, 1);



//Startup
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

//set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .1);

//Charging
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

//Leap
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_HSPEED, 7);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_VSPEED, -15);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

//Spinning
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_VSPEED, -6);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_SFX, asset_get("sfx_ori_stomp_spin"));
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.05);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.5);

//Crashing Down (Active)
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_VSPEED, 60);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_VSPEED_TYPE, 2);
//set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_HSPEED, 10);
//set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_SFX, asset_get("sfx_charge_blade_swing"));
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

//Recovery/Landing
set_window_value(AT_FSTRONG_2, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG_2, 6, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSTRONG_2, 6, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG_2, 6, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSTRONG_2, 6, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FSTRONG_2, 6, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSTRONG_2, 6, AG_WINDOW_HSPEED_TYPE, 1);
//t_window_value(AT_FSTRONG_2, 6, AG_WINDOW_HAS_SFX, 1);
//t_window_value(AT_FSTRONG_2, 6, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_med1"));
set_window_value(AT_FSTRONG_2, 6, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FSTRONG_2, 6, AG_WINDOW_CUSTOM_GRAVITY, 0);

//End Lag
set_window_value(AT_FSTRONG_2, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 7, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG_2, 7, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSTRONG_2, 7, AG_WINDOW_ANIM_FRAME_START, 3);
//set_window_value(AT_FSTRONG_2, 7, AG_WINDOW_VSPEED, 0);
//set_window_value(AT_FSTRONG_2, 7, AG_WINDOW_VSPEED_TYPE, 1);
//set_window_value(AT_FSTRONG_2, 7, AG_WINDOW_VSPEED, 0);
//set_window_value(AT_FSTRONG_2, 7, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSTRONG_2, 7, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSTRONG_2, 7, AG_WINDOW_HSPEED_TYPE, 1);
//t_window_value(AT_FSTRONG_2, 7, AG_WINDOW_HAS_SFX, 1);
//t_window_value(AT_FSTRONG_2, 7, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_med1"));
set_window_value(AT_FSTRONG_2, 7, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FSTRONG_2, 7, AG_WINDOW_CUSTOM_GRAVITY, 0);

//Return to Idle (IASA)
set_window_value(AT_FSTRONG_2, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 8, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG_2, 8, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSTRONG_2, 8, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG_2, 8, AG_WINDOW_CUSTOM_GRAVITY, 0.1);

set_num_hitboxes(AT_FSTRONG_2, 3);

//Crashing hitbox on grounded enemies
set_hitbox_value(AT_FSTRONG_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WINDOW, 5);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_X, 15);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_Y, -24);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WIDTH, 75);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HEIGHT, 74);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG_2, 1, HG_DAMAGE, 14);
set_hitbox_value(AT_FSTRONG_2, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSTRONG_2, 1, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_FSTRONG_2, 1, HG_GROUNDEDNESS, 1);
//set_hitbox_value(AT_FSTRONG_2, 1, HG_EFFECT, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_HITPAUSE, 18);
//set_hitbox_value(AT_FSTRONG_2, 1, HG_EXTRA_HITPAUSE, 18);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG_2, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
//set_hitbox_value(AT_FSTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_burnconsume"));

//Leaping hitbox
set_hitbox_value(AT_FSTRONG_2, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSTRONG_2, 2, HG_WINDOW, 3);
//set_hitbox_value(AT_FSTRONG_2, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSTRONG_2, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_X, 16);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_Y, -24);
set_hitbox_value(AT_FSTRONG_2, 2, HG_WIDTH, 60);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_FSTRONG_2, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG_2, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_FSTRONG_2, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG_2, 2, HG_BASE_KNOCKBACK, 9);
//set_hitbox_value(AT_FSTRONG_2, 2, HG_KNOCKBACK_SCALING, 0.7);
//set_hitbox_value(AT_FSTRONG_2, 1, HG_EFFECT, 1);
set_hitbox_value(AT_FSTRONG_2, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSTRONG_2, 2, HG_TECHABLE, 3);
//set_hitbox_value(AT_FSTRONG_2, 1, HG_EXTRA_HITPAUSE, 18);
//set_hitbox_value(AT_FSTRONG_2, 2, HG_HITPAUSE_SCALING, 1.0);
//set_hitbox_value(AT_FSTRONG_2, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG_2, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

//Crashing hitbox on aerial enemies
set_hitbox_value(AT_FSTRONG_2, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_FSTRONG_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG_2, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG_2, 3, HG_WINDOW, 5);
set_hitbox_value(AT_FSTRONG_2, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSTRONG_2, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG_2, 3, HG_HITBOX_X, 15);
set_hitbox_value(AT_FSTRONG_2, 3, HG_HITBOX_Y, -24);
set_hitbox_value(AT_FSTRONG_2, 3, HG_WIDTH, 75);
set_hitbox_value(AT_FSTRONG_2, 3, HG_HEIGHT, 74);
set_hitbox_value(AT_FSTRONG_2, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG_2, 3, HG_DAMAGE, 14);
set_hitbox_value(AT_FSTRONG_2, 3, HG_ANGLE, 361);
set_hitbox_value(AT_FSTRONG_2, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG_2, 3, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_FSTRONG_2, 3, HG_GROUNDEDNESS, 2);
//set_hitbox_value(AT_FSTRONG_2, 1, HG_EFFECT, 1);
set_hitbox_value(AT_FSTRONG_2, 3, HG_BASE_HITPAUSE, 18);
//set_hitbox_value(AT_FSTRONG_2, 1, HG_EXTRA_HITPAUSE, 18);
set_hitbox_value(AT_FSTRONG_2, 3, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG_2, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG_2, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG_2, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
//set_hitbox_value(AT_FSTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_burnconsume"));

//set_hitbox_value(AT_FSTRONG_2, 1, HG_HIT_LOCKOUT, 10);