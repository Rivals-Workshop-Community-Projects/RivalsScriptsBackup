atk = AT_NSPECIAL;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(atk, AG_LANDING_LAG, 10);

window_num = 1; //windup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8); //12
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, sound_get("sfx_charge"));
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 2);

window_num ++; //windup spin (target detection)
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 20);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(atk, window_num, AG_WINDOW_VSPEED, -7);

//TARGET NOT FOUND (WINDOWS 3 - 6)
window_num ++; //shoot off windup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, sound_get("sfx_homingattack"));
set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 2);

window_num ++; //shoot off attack
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(atk, window_num, AG_WINDOW_HSPEED, 10);
set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(atk, window_num, AG_WINDOW_VSPEED, -2);

window_num ++; //endlag loop
//set_window_value(atk, window_num, AG_WINDOW_TYPE, 9);
//set_window_value(atk, window_num, AG_WINDOW_LOOP_TIMES, 3);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 6); //10
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 12);

window_num ++; //endlag
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(atk, window_num, AG_WINDOW_GOTO, 31);

//TARGET FOUND (WINDOWS 7 - 10)
window_num ++; //attack
//set_window_value(atk, window_num, AG_WINDOW_LENGTH, 0);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 17);

window_num ++; //hit surface/player
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 10);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 1);

window_num ++; //endlag - hit
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 20); //30
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 23);
set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(atk, window_num, AG_WINDOW_VSPEED, -8);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(atk, window_num, AG_WINDOW_HSPEED, -2);
set_window_value(atk, window_num, AG_WINDOW_GOTO, 31);

window_num ++; //endlag - whiff
set_window_value(atk, window_num, AG_WINDOW_TYPE, 7);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 29);
set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(atk, window_num, AG_WINDOW_VSPEED, -6);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

hitbox_num = 1; //hit - fail
//set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
//set_hitbox_value(atk, hitbox_num, HG_WINDOW, 4);
//set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 10);
//set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 0);
//set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -32);
//set_hitbox_value(atk, hitbox_num, HG_WIDTH, 64);
//set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 50);
//set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
//set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 5);
//set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);
//set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 5);
//set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.8);
//set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 6);
//set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.2);
//set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_windhit[0]);
//set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//hitbox_num ++; //hit - success
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 7);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 100);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 0);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -32);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 32);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 32);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 5);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 60);
set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 6); //7
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.4); //0.8
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 8); //12
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.6); //1
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_windhit[1]);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_num_hitboxes(atk, hitbox_num);