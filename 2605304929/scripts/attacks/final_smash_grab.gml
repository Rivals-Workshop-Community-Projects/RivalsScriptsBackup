var attack = AT_FINAL_SMASH_GRAB; // Final Smash Index

//Attack Values-----------------------------------------------------------------------------
set_attack_value(attack, AG_CATEGORY, 2);
set_attack_value(attack, AG_SPRITE, sprite_get("final_smash_grab"));
set_attack_value(attack, AG_AIR_SPRITE, 0);
set_attack_value(attack, AG_HURTBOX_SPRITE, sprite_get("final_smash_grab_hurt"));
set_attack_value(attack, AG_HURTBOX_AIR_SPRITE, 0);
set_attack_value(attack, AG_NUM_WINDOWS, 5);
set_attack_value(attack, AG_HAS_LANDING_LAG, 0);
set_attack_value(attack, AG_OFF_LEDGE, 1);
set_attack_value(attack, AG_LANDING_LAG, 0);
set_attack_value(attack, AG_STRONG_CHARGE_WINDOW, 0);
set_attack_value(attack, AG_USES_CUSTOM_GRAVITY, 0);

//Window Values-----------------------------------------------------------------------------
var window_num = 1;

// Window #1 / Frame(s) # 0-7 / Start Up 
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 30);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(attack, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(attack, window_num, AG_WINDOW_CUSTOM_AIR_FRICTION, 2);
set_window_value(attack, window_num, AG_WINDOW_CUSTOM_GROUND_FRICTION, 2);
set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1); 
set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_syl_dspecial_howl")); // asset_get("sfx_syl_dspecial_howl") or sound_get("")
set_window_value(attack, window_num, AG_WINDOW_SFX_FRAME, 1); // asset_get("sfx_syl_dspecial_howl") or sound_get("")
set_window_value(attack, window_num, AG_WINDOW_HSPEED, 0);
set_window_value(attack, window_num, AG_WINDOW_VSPEED, 0);
set_window_value(attack, window_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_VSPEED_TYPE, 1);
window_num++;

// Window #2 / Frame(s) # 8- / Start Momentum Frame
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 3);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(attack, window_num, AG_WINDOW_HSPEED, 8);
set_window_value(attack, window_num, AG_WINDOW_VSPEED, -4);
set_window_value(attack, window_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_VSPEED_TYPE, 1);

window_num++;

// Window #3 / Frame(s) # 9-11 / Leaping forward most and hitbox active
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1); //10 = Goes to the next window if it’s on the ground, otherwise loops
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 12);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_absa_jab2")); 

window_num++;

//Window #4 / Frame(s) # 12-14 / Repeating falling frames
set_window_value(attack, window_num, AG_WINDOW_TYPE, 10); //10 = Goes to the next window if it’s on the ground, otherwise loops
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 9);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_absa_jab1")); 

window_num++;

// Window #5 / Frame(s) # 15-21 / Whiffed and Landing Endlag
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 28);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(attack, window_num, AG_WINDOW_HSPEED, 4);
set_window_value(attack, window_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_waveland_ran"));
set_window_value(attack, window_num, AG_WINDOW_SFX_FRAME, 2);


window_num++;

//Hitbox Values --------------------------------------------------------------------------
//Set Number of Hitboxes
set_num_hitboxes(attack, 2); // Swap 1 for number of hitboxes

var hitbox_num = 1;
var window_for_hitbox = 1; // Set this to change the window that the hitbox comes out at and its length quickly

//Set Hitbox Values - This is the basic block of a functional hitbox
window_for_hitbox = 3;
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, get_window_value(attack, window_for_hitbox, AG_WINDOW_LENGTH)); // Swap 1 for what ever window this attack is
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 60);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -20);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 68);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 36);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 1);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 0);
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 20);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, 21); //21  - lightning medium
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
hitbox_num++;

//Set Hitbox Values - This is the basic block of a functional hitbox
window_for_hitbox = 4;
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, get_window_value(attack, window_for_hitbox, AG_WINDOW_LENGTH)); // Swap 1 for what ever window this attack is
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 53);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, 4);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 68);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 36);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 0);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 0);
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 20);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, 21); //21  - lightning medium
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

hitbox_num++;