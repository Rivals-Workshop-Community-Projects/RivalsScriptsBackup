var attack = AT_USTRONG; // Swap Taunt for attack that this is

//Attack Values-----------------------------------------------------------------------------
set_attack_value(attack, AG_CATEGORY, 2);
set_attack_value(attack, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(attack, AG_AIR_SPRITE, 0);
set_attack_value(attack, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
set_attack_value(attack, AG_HURTBOX_AIR_SPRITE, 0);
set_attack_value(attack, AG_NUM_WINDOWS, 7);
set_attack_value(attack, AG_HAS_LANDING_LAG, 1);
set_attack_value(attack, AG_OFF_LEDGE, 0);
set_attack_value(attack, AG_LANDING_LAG, 4);
set_attack_value(attack, AG_STRONG_CHARGE_WINDOW, 2);
set_attack_value(attack, AG_USES_CUSTOM_GRAVITY, 0);
set_attack_value(attack, 87, "Sets Water Mark Status on opponent on hit. Sets into pratfall on whiff. Pratland adds 10 extra whiff to this move.");//AG_MUNO_ATTACK_MISC_ADD 

//Window Values-----------------------------------------------------------------------------
var window_num = 1;

// Window #1 / Frame(s) # 0- / Start Up
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 0);

window_num++;

// Window #2 / Frame(s) # 1- / Charge Frame
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 1);

window_num++;

// Window #3 / Frame(s) # 2- / Before Hitbox
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1); 
set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2")); // asset_get("sfx_swipe_heavy2") or sound_get("")
set_window_value(attack, window_num, AG_WINDOW_SFX_FRAME, 0);

window_num++;

// Window #4 / Frame(s) # 3 / Start Up Strong Hitbox
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 3);

window_num++;

// Window #5 / Frame(s) # 4- / Mid Hitboxes
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(attack, window_num, AG_WINDOW_VSPEED, -8);
set_window_value(attack, window_num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_HSPEED, 0);
set_window_value(attack, window_num, AG_WINDOW_HSPEED_TYPE, 1);

window_num++;

// Window #6 / Frame(s) # 5-6 / Ending Hitboxs
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(attack, window_num, AG_WINDOW_VSPEED, -4);
set_window_value(attack, window_num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_HSPEED, 0);
set_window_value(attack, window_num, AG_WINDOW_HSPEED_TYPE, 1);

window_num++;

// Window #7 / Frame(s) # 7-10 / Endlag
set_window_value(attack, window_num, AG_WINDOW_TYPE, 7);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 14);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(attack, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);

//window_num++;

//Hitbox Values --------------------------------------------------------------------------
//Set Number of Hitboxes
set_num_hitboxes(attack, 3); // Swap 1 for number of hitboxes

var hitbox_num = 1;
var window_for_hitbox = 1; 

//Start Up Hitbox
window_for_hitbox = 4; // Set this to change the window that the hitbox comes out at and its length quickly
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, get_window_value(attack, window_for_hitbox, AG_WINDOW_LENGTH)); // Swap 1 for what ever window this attack is
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 52);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -53);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 57);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 60);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 8);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 13);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 12);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, hitfx_large_elec); //// 304 - basic large
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_waterelectric);
set_hitbox_value(attack, hitbox_num, 81, "Start Up");//HG_MUNO_HITBOX_NAME

hitbox_num++;

//Rising Hitbox
window_for_hitbox = 5; // Set this to change the window that the hitbox comes out at and its length quickly
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, get_window_value(attack, window_for_hitbox, AG_WINDOW_LENGTH)); // Swap 1 for what ever window this attack is
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 55);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -74);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 57);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 76);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 4);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 9);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 9);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, hitfx_large_elec); //// 304 - basic large
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_waterelectric);
set_hitbox_value(attack, hitbox_num, 81, "Rising");//HG_MUNO_HITBOX_NAME

hitbox_num++;

//End Hitbox Sour
window_for_hitbox = 6; // Set this to change the window that the hitbox comes out at and its length quickly
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, get_window_value(attack, window_for_hitbox, AG_WINDOW_LENGTH)); // Swap 1 for what ever window this attack is
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 7);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -97);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 91);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 43);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 4);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 9);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, hitfx_elec_paw);//// 304 - basic large
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_waterelectric);
set_hitbox_value(attack, hitbox_num, 81, "Late");//HG_MUNO_HITBOX_NAME