// [11] FLASHBANG
atk = 39;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("flashbang"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("flashbang_hurt"));
set_attack_value(atk, AG_AIR_SPRITE, sprite_get("flashbang_air"));
set_attack_value(atk, AG_HURTBOX_AIR_SPRITE, sprite_get("flashbang_air_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 8);

windowNum = 1; //windup 1
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 10);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(atk, windowNum, AG_WINDOW_SFX_FRAME, 8);

windowNum ++; //grab
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 6);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 2);

windowNum ++; //grab fail
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 12); //i'm counting the whifflag here too cuz this is whiffed anyways
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 4);

windowNum ++; //dummy window (window 4)
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 1);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 6);

//GRAB SUCCESS (windows 5 - 8)

windowNum ++; //rotation
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 8);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 7);

windowNum ++; //windup
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 5);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 10);

windowNum ++; //flash
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 4);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 11);

windowNum ++; //endlag - knockback
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 13);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 12);
//set_window_value(atk, windowNum, AG_WINDOW_HSPEED_TYPE, 2);
//set_window_value(atk, windowNum, AG_WINDOW_HSPEED, 3);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED, -10);

set_num_hitboxes(atk, 2);

hitboxNum = 1; //grab
set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 1); // 1 = physical attack || 2 = projectile
set_hitbox_value(atk, hitboxNum, HG_HITBOX_GROUP, hitboxNum);
set_hitbox_value(atk, hitboxNum, HG_WINDOW, 2);
set_hitbox_value(atk, hitboxNum, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 4); //hitbox duration in frames
set_hitbox_value(atk, hitboxNum, HG_HITBOX_X, 36);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_Y, -34);
set_hitbox_value(atk, hitboxNum, HG_WIDTH, 40);
set_hitbox_value(atk, hitboxNum, HG_HEIGHT, 40);
set_hitbox_value(atk, hitboxNum, HG_PRIORITY, 2); //1 = low priority over other moves || 10 = highest
set_hitbox_value(atk, hitboxNum, HG_DAMAGE, 2);
set_hitbox_value(atk, hitboxNum, HG_ANGLE, 361);
set_hitbox_value(atk, hitboxNum, HG_BASE_KNOCKBACK, 0.1);
set_hitbox_value(atk, hitboxNum, HG_BASE_HITPAUSE, 3); //hitstun
set_hitbox_value(atk, hitboxNum, HG_EXTRA_HITPAUSE, 10); //50
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT, 301);
set_hitbox_value(atk, hitboxNum, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

hitboxNum ++; //flashbang
set_hitbox_value(atk, hitboxNum, HG_HITBOX_GROUP, hitboxNum);
set_hitbox_value(atk, hitboxNum, HG_WINDOW, 7);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 1)
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 4);
set_hitbox_value(atk, hitboxNum, HG_PRIORITY, 6);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_X, -32);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_Y, -16);
set_hitbox_value(atk, hitboxNum, HG_WIDTH, 64);
set_hitbox_value(atk, hitboxNum, HG_HEIGHT, 64);
set_hitbox_value(atk, hitboxNum, HG_ANGLE, 260);
set_hitbox_value(atk, hitboxNum, HG_DAMAGE, 3);
set_hitbox_value(atk, hitboxNum, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(atk, hitboxNum, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(atk, hitboxNum, HG_BASE_HITPAUSE, 9);
set_hitbox_value(atk, hitboxNum, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT, fx_lightblow2);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT_Y_OFFSET, 32);
set_hitbox_value(atk, hitboxNum, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(atk, hitboxNum, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_COLOR, 3);


//munophone
if (!get_match_setting(SET_PRACTICE)) exit;
set_attack_value(atk, AG_MUNO_ATTACK_MISC_ADD, "10 MP
Burning Fury alters the launch angle and makes the spike stronger");