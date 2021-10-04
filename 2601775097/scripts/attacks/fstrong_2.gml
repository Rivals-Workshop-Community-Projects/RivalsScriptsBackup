// F-STRONG - theikos ver.
atk = AT_FSTRONG_2;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("theikos_fstrong"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("theikos_fstrong_hurt"));
set_attack_value(atk, AG_AIR_SPRITE, sprite_get("theikos_fstrong"));
set_attack_value(atk, AG_HURTBOX_AIR_SPRITE, sprite_get("theikos_fstrong_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 8);
set_attack_value(atk, AG_STRONG_CHARGE_WINDOW, 2);
set_attack_value(atk, AG_HAS_LANDING_LAG, 1);
set_attack_value(atk, AG_LANDING_LAG, 10);
set_attack_value(atk, AG_OFF_LEDGE, 1);

windowNum = 1; //windup 1
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 8); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX, asset_get("sfx_zetter_shine_charged"));
set_window_value(atk, windowNum, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, windowNum, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
set_window_value(atk, windowNum, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED, -8);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED, 0);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED_TYPE, 1);

windowNum ++; //windup 2 (charge window)
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 1); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 1); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, windowNum, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, windowNum, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
set_window_value(atk, windowNum, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED, 0);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED_TYPE, 1);

windowNum ++; //attack flurry
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 9);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 12);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 3); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_OFF_LEDGE, 1);
set_window_value(atk, windowNum, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, windowNum, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
set_window_value(atk, windowNum, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED, 10);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED, 0);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED_TYPE, 1);

windowNum ++; //dummy parry window
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 1);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 9);

windowNum ++; //last attack windup 1
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 8);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 9); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_OFF_LEDGE, 1);
set_window_value(atk, windowNum, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, windowNum, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
set_window_value(atk, windowNum, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED, -8);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED, 0);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED_TYPE, 1);

windowNum ++; //last attack windup 2
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 6);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 11); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_OFF_LEDGE, 1);
set_window_value(atk, windowNum, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, windowNum, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
set_window_value(atk, windowNum, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED, 0);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED, 0);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED_TYPE, 1);

windowNum ++; //last attack windup 3
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 2);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 12); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_OFF_LEDGE, 1);
set_window_value(atk, windowNum, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, windowNum, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
set_window_value(atk, windowNum, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED, 0);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED, 0);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

windowNum ++; //final hit
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 18);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(atk, windowNum, AG_OFF_LEDGE, 1);
set_window_value(atk, windowNum, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, windowNum, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.5);
set_window_value(atk, windowNum, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.5);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED, 12);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED, 0);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_HAS_WHIFFLAG, 1); //if the attack misses it's punishable

//amount of hitboxes
set_num_hitboxes(atk, 3);

hitboxNum = 1; //attack flurry 1
set_hitbox_value(atk, hitboxNum, HG_PARENT_HITBOX, 1);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 1); // 1 = physical attack || 2 = projectile
set_hitbox_value(atk, hitboxNum, HG_WINDOW, 3); //at which window from the above the attack is created
set_hitbox_value(atk, hitboxNum, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 1); //hitbox duration in frames
set_hitbox_value(atk, hitboxNum, HG_HITBOX_X, 32);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_Y, -36);
set_hitbox_value(atk, hitboxNum, HG_WIDTH, 50);
set_hitbox_value(atk, hitboxNum, HG_HEIGHT, 70);
set_hitbox_value(atk, hitboxNum, HG_PRIORITY, 6); //1 = low priority over other moves || 10 = highest
set_hitbox_value(atk, hitboxNum, HG_DAMAGE, 1);
set_hitbox_value(atk, hitboxNum, HG_ANGLE, 95);
set_hitbox_value(atk, hitboxNum, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, hitboxNum, HG_BASE_HITPAUSE, 1); //hitstun
set_hitbox_value(atk, hitboxNum, HG_EXTRA_HITPAUSE, 9);
set_hitbox_value(atk, hitboxNum, HG_HITPAUSE_SCALING, 3);
set_hitbox_value(atk, hitboxNum, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT, 303);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT_Y_OFFSET, 4);
set_hitbox_value(atk, hitboxNum, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(atk, hitboxNum, HG_SDI_MULTIPLIER, 0.01);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_GROUP, 1); //it needs to be a different value for every different move in the file
set_hitbox_value(atk, hitboxNum, HG_TECHABLE, 3);
set_hitbox_value(atk, hitboxNum, HG_FORCE_FLINCH, 0);

hitboxNum ++; //attack flurry 2
set_hitbox_value(atk, hitboxNum, HG_PARENT_HITBOX, 1);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 1); // 1 = physical attack || 2 = projectile
set_hitbox_value(atk, hitboxNum, HG_WINDOW, 3); //at which window from the above the attack is created
set_hitbox_value(atk, hitboxNum, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 1); //hitbox duration in frames
set_hitbox_value(atk, hitboxNum, HG_HITBOX_X, 32);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_Y, -36);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_GROUP, 2); //it needs to be a different value for every different move in the file

hitboxNum ++; //last attack
set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 1); // 1 = physical attack || 2 = projectile
set_hitbox_value(atk, hitboxNum, HG_WINDOW, 8); //at which window from the above the attack is created
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 8); //hitbox duration in frames
set_hitbox_value(atk, hitboxNum, HG_HITBOX_X, 20);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_Y, -32);
set_hitbox_value(atk, hitboxNum, HG_WIDTH, 60);
set_hitbox_value(atk, hitboxNum, HG_HEIGHT, 40);
set_hitbox_value(atk, hitboxNum, HG_PRIORITY, 9); //1 = low priority over other moves || 10 = highest
set_hitbox_value(atk, hitboxNum, HG_DAMAGE, 10);
set_hitbox_value(atk, hitboxNum, HG_ANGLE, 35);
set_hitbox_value(atk, hitboxNum, HG_BASE_KNOCKBACK, 8); //6
set_hitbox_value(atk, hitboxNum, HG_KNOCKBACK_SCALING, 1.1); //0.9
set_hitbox_value(atk, hitboxNum, HG_HITSTUN_MULTIPLIER, 1.2); //1.5
set_hitbox_value(atk, hitboxNum, HG_SDI_MULTIPLIER, 0.01);
set_hitbox_value(atk, hitboxNum, HG_BASE_HITPAUSE, 15); //hitstun
set_hitbox_value(atk, hitboxNum, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT, 304);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT_Y_OFFSET, 4);
set_hitbox_value(atk, hitboxNum, HG_HIT_SFX, sound_get("sfx_tauntattack"));
set_hitbox_value(atk, hitboxNum, HG_HITBOX_GROUP, 3);