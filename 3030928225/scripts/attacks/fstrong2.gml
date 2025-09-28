atk = AT_FSTRONG_2;

set_attack_value(atk, AG_SPRITE, sprite_get("airstrong"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("airstrong_hurt"));
set_attack_value(atk, AG_CATEGORY, 1);
set_attack_value(atk, AG_OFF_LEDGE, 0);
set_attack_value(atk, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(atk, AG_HAS_LANDING_LAG, 1);
set_attack_value(atk, AG_LANDING_LAG, 6);

window_num = 1; // Windup
fstrong2_windup_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 7);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_GRAVITY, reduced_gravity_fstrong2);
set_window_value(atk, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_AIR_FRICTION, .05);

window_num++; // Charging
fstrong2_charging_window = window_num;
set_attack_value(atk, AG_STRONG_CHARGE_WINDOW, fstrong2_charging_window);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_GRAVITY, reduced_gravity_fstrong2);
set_window_value(atk, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_AIR_FRICTION, .1);

window_num++; // Charged, can stay in this state by holding button
fstrong2_bonus_charging_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_GRAVITY, reduced_gravity_fstrong2);
set_window_value(atk, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_AIR_FRICTION, .2);

window_num++; // Charged version (uncharged not available for this move)
fstrong2_charged_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 15);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);
set_window_value(atk, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_AIR_FRICTION, .5);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_burnend"));
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_INVINCIBILITY, 2);


// Note: If you need to split up the attack window to adjust hitbox timings,
// please leave fstrong2_charged_window as the first after fstrong2_bonus_charging_window,
// and insert others here, before fstrong2_stancel_window.

window_num++; // Recover
fstrong2_recovery_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(atk, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_AIR_FRICTION, .2);
set_window_value(atk, window_num, AG_WINDOW_INVINCIBILITY, 2);


set_attack_value(atk, AG_NUM_WINDOWS, window_num);

window_num++; // Stance-cancel window, not normally taken
fstrong2_stancel_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, stancle_length);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);


//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

hitbox_num = 0;

// Charged
// First hit (weaker length of the neck plus head)
hitbox_num++;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, fstrong2_charged_window);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 4);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 14);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -60);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 55);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 43);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 4);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 20);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 2);
set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 0)
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(atk, hitbox_num, HG_TECHABLE, 1);
set_hitbox_value(atk, hitbox_num, HG_FORCE_FLINCH, 0);
set_hitbox_value(atk, hitbox_num, HG_DRIFT_MULTIPLIER, -1);
set_hitbox_value(atk, hitbox_num, HG_SDI_MULTIPLIER, -1);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_pow_hit[1]);
set_hitbox_value(atk, hitbox_num, HG_HITSTUN_MULTIPLIER, .8);


// First hit head 
hitbox_num++;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, fstrong2_charged_window);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 4);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 58);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -76);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 43);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 72);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 4);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 20);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 2);
set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 6)
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(atk, hitbox_num, HG_TECHABLE, 1);
set_hitbox_value(atk, hitbox_num, HG_FORCE_FLINCH, 0);
set_hitbox_value(atk, hitbox_num, HG_DRIFT_MULTIPLIER, -1);
set_hitbox_value(atk, hitbox_num, HG_SDI_MULTIPLIER, -1);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_pow_hit[1]);
set_hitbox_value(atk, hitbox_num, HG_HITSTUN_MULTIPLIER, .8);


// second hit (weaker length of the neck plus head)
hitbox_num++;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 2);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, fstrong2_charged_window);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 4);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 76);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -66);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 129);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 38);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 4);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 20);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 2);
set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 6)
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(atk, hitbox_num, HG_TECHABLE, 1);
//set_hitbox_value(atk, hitbox_num, HG_FORCE_FLINCH, 1);
set_hitbox_value(atk, hitbox_num, HG_DRIFT_MULTIPLIER, -1);
set_hitbox_value(atk, hitbox_num, HG_SDI_MULTIPLIER, -1);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_pow_hit[1]);
set_hitbox_value(atk, hitbox_num, HG_HITSTUN_MULTIPLIER, .8);


//head
hitbox_num++;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 2);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, fstrong2_charged_window);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 4);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 162);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -76);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 43);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 72);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 4);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 20);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 2);
set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 6)
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(atk, hitbox_num, HG_TECHABLE, 1);
set_hitbox_value(atk, hitbox_num, HG_FORCE_FLINCH, 0);
set_hitbox_value(atk, hitbox_num, HG_DRIFT_MULTIPLIER, -1);
set_hitbox_value(atk, hitbox_num, HG_SDI_MULTIPLIER, -1);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_pow_hit[1]);
set_hitbox_value(atk, hitbox_num, HG_HITSTUN_MULTIPLIER, .8);


// final hit along the neck
hitbox_num++;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 3);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 1);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, fstrong2_charged_window);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 3);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 86);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -68);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 148);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 50);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 7);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 45);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 0)
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(atk, hitbox_num, HG_TECHABLE, 0);
set_hitbox_value(atk, hitbox_num, HG_FORCE_FLINCH, 0);
set_hitbox_value(atk, hitbox_num, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(atk, hitbox_num, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT,fx_pow_hit[2]);

// Final hit at the head if you want it to behave differently
hitbox_num++;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 3);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, fstrong2_charged_window);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 3);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 164);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -66);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 105);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 64);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 7);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 70);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(atk, hitbox_num, HG_HITSTUN_MULTIPLIER, 1.1);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(atk, hitbox_num, HG_EXTRA_HITPAUSE, 15);
set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 0)
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(atk, hitbox_num, HG_TECHABLE, 0);
set_hitbox_value(atk, hitbox_num, HG_FORCE_FLINCH, 0);
set_hitbox_value(atk, hitbox_num, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(atk, hitbox_num, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_pow_hit[2]);


set_num_hitboxes(atk, hitbox_num);