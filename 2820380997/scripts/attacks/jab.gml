var attack = AT_JAB; // Swap Taunt for attack that this is

//Attack Values-----------------------------------------------------------------------------
set_attack_value(attack, AG_CATEGORY, 0);
set_attack_value(attack, AG_SPRITE, sprite_get("jab")); //sprite_get("")
set_attack_value(attack, AG_AIR_SPRITE, 0);
set_attack_value(attack, AG_HURTBOX_SPRITE, sprite_get("jab_hurt")); //sprite_get("_hurt")
set_attack_value(attack, AG_HURTBOX_AIR_SPRITE, 0);
set_attack_value(attack, AG_NUM_WINDOWS, 9);
set_attack_value(attack, AG_HAS_LANDING_LAG, 0);
set_attack_value(attack, AG_OFF_LEDGE, 0);
set_attack_value(attack, AG_LANDING_LAG, 0);
set_attack_value(attack, AG_STRONG_CHARGE_WINDOW, 0);
set_attack_value(attack, AG_USES_CUSTOM_GRAVITY, 0);
set_attack_value(attack, 87, "Can be Teched out of on Jab 3");//AG_MUNO_ATTACK_MISC_ADD = i; i++;	

//Window Values-----------------------------------------------------------------------------
var window_num = 1;

// Window #1 / Frame(s) # 0-2 / Jab 1 Start Up
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 5);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1")); // asset_get("sfx_swipe_weak1") or sound_get("")
set_window_value(attack, window_num, AG_WINDOW_SFX_FRAME, get_window_value(attack,window_num,AG_WINDOW_LENGTH) -1);

window_num++;

// Window #2 / Frame(s) # 3- / Jab 1 Active hitbox
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 3);

window_num++;

// Window #3 / Frame(s) # 4-6 / Jab 1 Endlag
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 12);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(attack, window_num, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_CANCEL_FRAME, 4);

window_num++;

// Window #4 / Frame(s) # 7-8 / Jab 2 Start Up
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(attack, window_num, AG_WINDOW_HSPEED, 3);
set_window_value(attack, window_num, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1); 
set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1")); // asset_get("sfx_swipe_weak1") or sound_get("")
set_window_value(attack, window_num, AG_WINDOW_SFX_FRAME, get_window_value(attack,window_num,AG_WINDOW_LENGTH) -1);
// Extra sounds in attack update
window_num++;

// Window #5 / Frame(s) # 9-13 / Jab 2 Active Hitboxes
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 9);

window_num++;

// Window #6 / Frame(s) # 14- / Jab 2 Endlag
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 12);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(attack, window_num, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_CANCEL_FRAME, 4);

window_num++;

// Window #7 / Frame(s) # 15-17 / Jab 3 Start Up
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 10);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(attack, window_num, AG_WINDOW_HSPEED, 6);
set_window_value(attack, window_num, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1); 
set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1")); // asset_get("sfx_swipe_weak1") or sound_get("")
set_window_value(attack, window_num, AG_WINDOW_SFX_FRAME, get_window_value(attack,window_num,AG_WINDOW_LENGTH) -1);

window_num++;

// Window #8 / Frame(s) # 18- / Jab 3 Active Hitbox
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 3);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(attack, window_num, AG_WINDOW_HSPEED, 3);
set_window_value(attack, window_num, AG_WINDOW_HSPEED_TYPE, 1);

window_num++;

// Window #9 / Frame(s) # 19-26 / Jab 3 Endlag
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 17);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(attack, window_num, AG_WINDOW_HSPEED, 1);
set_window_value(attack, window_num, AG_WINDOW_HSPEED_TYPE, 1);

//Hitbox Values --------------------------------------------------------------------------
//Set Number of Hitboxes
set_num_hitboxes(attack, 5); // Swap 1 for number of hitboxes

var hitbox_num = 1;
var window_for_hitbox = 1; 

//Jab 1
window_for_hitbox = 2; // Set this to change the window that the hitbox comes out at and its length quickly
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, get_window_value(attack, window_for_hitbox, AG_WINDOW_LENGTH)); // Swap 1 for what ever window this attack is
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 40);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -30);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 52);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 37);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 4);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 361);
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 4);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, vfx_fire_directional);
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(attack, hitbox_num, HG_FORCE_FLINCH, 1);
set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_fire_small);
set_hitbox_value(attack, hitbox_num, 81, "Jab 1");//HG_MUNO_HITBOX_NAME
hitbox_num++;

//Jab 2 Hitbox 1 Straight Angle
window_for_hitbox = 5;
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, 2); // Swap 1 for what ever window this attack is
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 38);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -47);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 64);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 36);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 1);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 1);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 60);
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 2.5);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 4);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, vfx_fire_directional);
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(attack, hitbox_num, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_fire_small);
set_hitbox_value(attack, hitbox_num, 81, "Jab 2 Hit 1");//HG_MUNO_HITBOX_NAME

hitbox_num++;
//Jab 2 Hitbox 2 Lower Angle
window_for_hitbox = 5;
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, 2); // Swap 1 for what ever window this attack is
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 39);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -24);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 60);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 34);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 1);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 1);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 60);
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 2.5);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 4);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, vfx_fire_directional);
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(attack, hitbox_num, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_fire_small);
set_hitbox_value(attack, hitbox_num, 81, "Jab 2 Hit 2");//HG_MUNO_HITBOX_NAME

hitbox_num++;

//Jab 2 Hitbox 3 High Angle
window_for_hitbox = 5; 
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, 2); // Swap 1 for what ever window this attack is
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 44);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -37);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 64);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 32);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 1);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 2);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 361);
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 5);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, vfx_fire_directional);
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(attack, hitbox_num, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_fire_disperse);
set_hitbox_value(attack, hitbox_num, 81, "Jab 2 Hit 3");//HG_MUNO_HITBOX_NAME

hitbox_num++;

//Jab 3
window_for_hitbox = 8; // Set this to change the window that the hitbox comes out at and its length quickly
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, get_window_value(attack, window_for_hitbox, AG_WINDOW_LENGTH)); // Swap 1 for what ever window this attack is
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 20);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -48);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 64);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 70);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 3);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 8);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 70);
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, vfx_fire_medium);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(attack, hitbox_num, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_fire_large);
set_hitbox_value(attack, hitbox_num, 81, "Jab 3");//HG_MUNO_HITBOX_NAME

hitbox_num++;