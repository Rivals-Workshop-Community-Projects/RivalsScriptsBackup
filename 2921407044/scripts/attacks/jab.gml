var attack = AT_JAB; // Swap Taunt for attack that this is
// References Forsburn Jab

//Attack Values-----------------------------------------------------------------------------
set_attack_value(attack, AG_CATEGORY, 0);
set_attack_value(attack, AG_SPRITE, sprite_get("jab"));
set_attack_value(attack, AG_AIR_SPRITE, 0);
set_attack_value(attack, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));
set_attack_value(attack, AG_HURTBOX_AIR_SPRITE, 0);
set_attack_value(attack, AG_NUM_WINDOWS, 9);
set_attack_value(attack, AG_HAS_LANDING_LAG, 0);
set_attack_value(attack, AG_OFF_LEDGE, 0);
set_attack_value(attack, AG_LANDING_LAG, 0);
set_attack_value(attack, AG_STRONG_CHARGE_WINDOW, 0);
set_attack_value(attack, AG_USES_CUSTOM_GRAVITY, 0);
set_attack_value(attack, 87,"Reference Forsburn Jab");

//Window Values-----------------------------------------------------------------------------
var window_num = 1;

// Window #1 / Frame(s) # 0-1 / Jab 1 Start Up
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 5);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1")); // asset_get("sfx_swipe_weak1") or sound_get("")
set_window_value(attack, window_num, AG_WINDOW_SFX_FRAME, get_window_value(attack,window_num,AG_WINDOW_LENGTH) -1);

window_num++;

// Window #2 / Frame(s) # 2- / Jab 1 Active hitbox
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 2);

window_num++;

// Window #3 / Frame(s) # 3-6 / Jab 1 Endlag
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 12);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(attack, window_num, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_CANCEL_FRAME, 4);

window_num++;

// Window #4 / Frame(s) # 7-8 / Jab 2 Start Up
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1); 
set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1")); // asset_get("sfx_swipe_weak1") or sound_get("")
set_window_value(attack, window_num, AG_WINDOW_SFX_FRAME, get_window_value(attack,window_num,AG_WINDOW_LENGTH) -1);
set_window_value(attack, window_num, AG_WINDOW_HSPEED, 4);
set_window_value(attack, window_num, AG_WINDOW_HSPEED_TYPE, 0);

window_num++;

// Window #5 / Frame(s) # 9- / Jab 2 Active Hitbox
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 9);

window_num++;

// Window #6 / Frame(s) # 10-13 / Jab 2 Endlag
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 14);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(attack, window_num, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_CANCEL_FRAME, 4);

window_num++;

// Window #7 / Frame(s) # 14-18 / Jab 3 Start Up
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 10);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(attack, window_num, AG_WINDOW_HSPEED, 8);
set_window_value(attack, window_num, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1); 
set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2")); // asset_get("sfx_swipe_weak1") or sound_get("")
set_window_value(attack, window_num, AG_WINDOW_SFX_FRAME, get_window_value(attack,window_num,AG_WINDOW_LENGTH) -1);

window_num++;

// Window #8 / Frame(s) # 19- / Jab 3 Active Hitbox
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(attack, window_num, AG_WINDOW_HSPEED, 1);
set_window_value(attack, window_num, AG_WINDOW_HSPEED_TYPE, 1);

window_num++;

// Window #9 / Frame(s) # 20-24 / Jab 3 Endlag
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 17);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(attack, window_num, AG_WINDOW_HSPEED, 1);
set_window_value(attack, window_num, AG_WINDOW_HSPEED_TYPE, 1);
//window_num++;

//Hitbox Values --------------------------------------------------------------------------
//Set Number of Hitboxes
set_num_hitboxes(attack, 4); // Swap 1 for number of hitboxes

var hitbox_num = 1;
var window_for_hitbox = 1; 

//Jab 1
window_for_hitbox = 2; // Set this to change the window that the hitbox comes out at and its length quickly
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, 81, "Jab 1");
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, get_window_value(attack, window_for_hitbox, AG_WINDOW_LENGTH)); // Swap 1 for what ever window this attack is
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 30);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -39);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 60);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 38);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 4);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 361);
set_hitbox_value(attack, hitbox_num, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 5);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, hfx_feather);
set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_feather);
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(attack, hitbox_num, HG_FORCE_FLINCH, 1);
hitbox_num++;

//Jab 2
window_for_hitbox = 5; // Set this to change the window that the hitbox comes out at and its length quickly
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, 81, "Jab 2");
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, get_window_value(attack, window_for_hitbox, AG_WINDOW_LENGTH)); // Swap 1 for what ever window this attack is
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 38);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -41);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 62);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 33);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 1);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 4);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 361);
set_hitbox_value(attack, hitbox_num, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 5);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, hfx_feather);
set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_feather);
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, 2);
set_hitbox_value(attack, hitbox_num, HG_EXTRA_HITPAUSE, 3);

hitbox_num++;

//Jab 3 Top Hitbox
window_for_hitbox = 8; // Set this to change the window that the hitbox comes out at and its length quickly
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, 81, "Jab 3 Top");
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, get_window_value(attack, window_for_hitbox, AG_WINDOW_LENGTH)); // Swap 1 for what ever window this attack is
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 32);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -64);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 49);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 37);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 3);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 6);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 45);
//set_hitbox_value(attack, hitbox_num, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, hfx_large);
set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_large);
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, 3);
set_hitbox_value(attack, hitbox_num, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(attack, hitbox_num, HG_EXTRA_CAMERA_SHAKE, 1);

hitbox_num++;

//Jab 3 Bottom Hitbox
window_for_hitbox = 8; // Set this to change the window that the hitbox comes out at and its length quickly
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, 81, "Jab 3 Bottom");
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, get_window_value(attack, window_for_hitbox, AG_WINDOW_LENGTH)); // Swap 1 for what ever window this attack is
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 55);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -38);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 58);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 54);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 3);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 6);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 361);
//set_hitbox_value(attack, hitbox_num, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, hfx_large);
set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_large);
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, 3);
set_hitbox_value(attack, hitbox_num, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(attack, hitbox_num, HG_EXTRA_CAMERA_SHAKE, 1);

hitbox_num++;