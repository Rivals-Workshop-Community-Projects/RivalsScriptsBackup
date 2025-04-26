// F-STRONG - theikos ver.
var atk = AT_FSTRONG_2;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("fstrong2"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("fstrong2_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 7);
set_attack_value(atk, AG_STRONG_CHARGE_WINDOW, 2);
set_attack_value(atk, AG_HAS_LANDING_LAG, 1);
set_attack_value(atk, AG_LANDING_LAG, 10);
set_attack_value(atk, AG_OFF_LEDGE, 1);

var window_num = 1; //windup 1
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_zetter_shine_charged"));
set_window_value(atk, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
//set_window_value(atk, window_num, AG_WINDOW_HSPEED, -8);      //done in attack_update
//set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 1);

window_num ++; //windup 2 (charge window)
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 1);

window_num ++; //attack flurry
set_window_value(atk, window_num, AG_WINDOW_TYPE, 9);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(atk, window_num, AG_WINDOW_HSPEED, 10);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LOOP_TIMES, 4);

window_num ++; //last attack windup 1
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(atk, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 1);

window_num ++; //last attack windup 2
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(atk, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 1);

window_num ++; //last attack windup 3
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(atk, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

window_num ++; //final hit
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 18);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(atk, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.5);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.5);
set_window_value(atk, window_num, AG_WINDOW_HSPEED, 12);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);

//amount of hitboxes
set_num_hitboxes(atk, 3);

var hitbox_num = 1; //attack flurry 1
set_hitbox_value(atk, hitbox_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 3);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 32);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -36);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 50);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 70);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 6); //1 = low priority over other moves || 10 = highest
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 1);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 70);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 1);
set_hitbox_value(atk, hitbox_num, HG_EXTRA_HITPAUSE, 9);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 1);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(atk, hitbox_num, HG_SDI_MULTIPLIER, 0.01);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, hitbox_num, HG_TECHABLE, 3);
set_hitbox_value(atk, hitbox_num, HG_NO_POLARIS, true);

hitbox_num ++; //attack flurry 2
set_hitbox_value(atk, hitbox_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 3);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 32);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -36);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 2);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(atk, hitbox_num, HG_NO_POLARIS, true);

hitbox_num ++; //last attack
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 7);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 8);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 20);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -32);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 60);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 40);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 9); //1 = low priority over other moves || 10 = highest
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 10);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 35);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 8); //6
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 1.1); //0.9
set_hitbox_value(atk, hitbox_num, HG_SDI_MULTIPLIER, 0.01);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 15); //hitstun
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(atk, hitbox_num, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_hit_big);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, sound_get("sfx_tauntattack"));
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 3);