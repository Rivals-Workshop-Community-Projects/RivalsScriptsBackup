var attack = AT_FINAL_SMASH_THROW; // Swap Taunt for attack that this is


//Attack Values-----------------------------------------------------------------------------
set_attack_value(attack, AG_CATEGORY, 2);
set_attack_value(attack, AG_SPRITE, sprite_get("fthrow"));
set_attack_value(attack, AG_AIR_SPRITE, 0);
set_attack_value(attack, AG_HURTBOX_SPRITE, sprite_get("fthrow_hurt"));
set_attack_value(attack, AG_HURTBOX_AIR_SPRITE, 0);
set_attack_value(attack, AG_NUM_WINDOWS, 6);
set_attack_value(attack, AG_HAS_LANDING_LAG, 0);
set_attack_value(attack, AG_OFF_LEDGE, 1);
set_attack_value(attack, AG_LANDING_LAG, 0);
set_attack_value(attack, AG_STRONG_CHARGE_WINDOW, 0);
set_attack_value(attack, AG_USES_CUSTOM_GRAVITY, 0);

//Window Values-----------------------------------------------------------------------------
var window_num = 1;

// Window #1 / Frame(s) #0-1 / Inital Air Catch
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 0);

window_num++;

// Window #2 / Frame(s) #2 / Grabbed in the air Loop
set_window_value(attack, window_num, AG_WINDOW_TYPE, 10);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 3);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(attack, window_num, AG_WINDOW_VSPEED, 2);
set_window_value(attack, window_num, AG_WINDOW_VSPEED_TYPE, 0);

window_num++;

// Window #3 / Frame(s) #3-4 / Land Start up (Skip pancake frame)
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 60);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 4);

window_num++;

// Window #4 / Frame(s) #5-8 / Electric Shock
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 60);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1); 
set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_absa_boltcloud")); // asset_get("sfx_absa_boltcloud") or sound_get("")
set_window_value(attack, window_num, AG_WINDOW_SFX_FRAME, 8); // asset_get("sfx_absa_boltcloud") or sound_get("")

window_num++;

// Window #5 / Frame(s) #9 - / End Shock
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 9);

window_num++;

// Window #6 / Frame(s) #10 - 11 / Dismounted / Pushed Off
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(attack, window_num, AG_WINDOW_HSPEED, -6);
set_window_value(attack, window_num, AG_WINDOW_HSPEED_TYPE, 0);

window_num++;

//Hitbox Values --------------------------------------------------------------------------
//Set Number of Hitboxes
set_num_hitboxes(attack, 6); // Swap 1 for number of hitboxes

var hitbox_num = 1;
var window_for_hitbox = 1;

// visual effect randomization. Uses hitbox numbers to seed random function

// Landing Hitbox
window_for_hitbox = 3; 
    set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, 5);
    set_hitbox_value(attack, hitbox_num, HG_SHAPE, 2);
    set_hitbox_value(attack, hitbox_num, HG_LIFETIME, 2);
    set_hitbox_value(attack, hitbox_num, HG_WINDOW_CREATION_FRAME, 1);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 0);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -33);
    set_hitbox_value(attack, hitbox_num, HG_WIDTH, 90);
    set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 66);
    set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 2);
    set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 2);
    set_hitbox_value(attack, hitbox_num, HG_ANGLE, 0);
    set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 5);
    set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 0);
    set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 10);
    //set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, .5);
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, 303); //303 - basic small directional
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT_X_OFFSET, 40);
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT_Y_OFFSET, 20);
    set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_kragg_rock_land")); //sfx_absa_singlezap1 sfx_absa_singlezap2
    set_hitbox_value(attack, hitbox_num, HG_EXTRA_CAMERA_SHAKE, 1);
hitbox_num++;

// Hitbox 1 
window_for_hitbox = 4; 
    set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, 0);
    set_hitbox_value(attack, hitbox_num, HG_SHAPE, 2);
    set_hitbox_value(attack, hitbox_num, HG_LIFETIME, 2); // Swap 1 for what ever window this attack is
    set_hitbox_value(attack, hitbox_num, HG_WINDOW_CREATION_FRAME, 1);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 0);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -33);
    set_hitbox_value(attack, hitbox_num, HG_WIDTH, 90);
    set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 66);
    set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 2);
    set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 1);
    set_hitbox_value(attack, hitbox_num, HG_ANGLE, 0);
    set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 1);
    set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 0);
    set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 2);
    //set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, .5);
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, 20); // 20  - lightning small 
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
    set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_absa_singlezap1")); //sfx_absa_singlezap1 sfx_absa_singlezap2
hitbox_num++;

// Hitbox 2
window_for_hitbox = 4; 
    set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, 1);
    set_hitbox_value(attack, hitbox_num, HG_SHAPE, 2);
    set_hitbox_value(attack, hitbox_num, HG_LIFETIME, 2); // Swap 1 for what ever window this attack is
    set_hitbox_value(attack, hitbox_num, HG_WINDOW_CREATION_FRAME, 5);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 0);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -33);
    set_hitbox_value(attack, hitbox_num, HG_WIDTH, 90);
    set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 66);
    set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 2);
    set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 1);
    set_hitbox_value(attack, hitbox_num, HG_ANGLE, 0);
    set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 1);
    set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 0);
    set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 2);
    //set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, .5);
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, 21); // 21  - lightning medium
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
    set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_absa_singlezap2"));
    
hitbox_num++;

// Hitbox 3
window_for_hitbox = 4; 
    set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, 2);
    set_hitbox_value(attack, hitbox_num, HG_SHAPE, 2);
    set_hitbox_value(attack, hitbox_num, HG_LIFETIME, 2); // Swap 1 for what ever window this attack is
    set_hitbox_value(attack, hitbox_num, HG_WINDOW_CREATION_FRAME, 10);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 0);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -33);
    set_hitbox_value(attack, hitbox_num, HG_WIDTH, 90);
    set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 66);
    set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 2);
    set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 1);
    set_hitbox_value(attack, hitbox_num, HG_ANGLE, 0);
    set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 1);
    set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 0);
    set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 2);
    //set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, .5);
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, 20); // 20  - lightning small
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
    set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
hitbox_num++;

// Hitbox 4
window_for_hitbox = 4; 
    set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, 3);
    set_hitbox_value(attack, hitbox_num, HG_SHAPE, 2);
    set_hitbox_value(attack, hitbox_num, HG_LIFETIME, 2); // Swap 1 for what ever window this attack is
    set_hitbox_value(attack, hitbox_num, HG_WINDOW_CREATION_FRAME, 15);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 0);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -33);
    set_hitbox_value(attack, hitbox_num, HG_WIDTH, 90);
    set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 66);
    set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 2);
    set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 1);
    set_hitbox_value(attack, hitbox_num, HG_ANGLE, 0);
    set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 1);
    set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 0);
    set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 2);
    //set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, .5);
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, 20); // 21  - lightning medium
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
    set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_absa_singlezap2"));
hitbox_num++;

// Hitbox 5 - Final Hitbox with knockback
window_for_hitbox = 4; 
    set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, 4);
    set_hitbox_value(attack, hitbox_num, HG_SHAPE, 2);
    set_hitbox_value(attack, hitbox_num, HG_LIFETIME, 2); // Swap 1 for what ever window this attack is
    set_hitbox_value(attack, hitbox_num, HG_WINDOW_CREATION_FRAME, 19);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 0);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -33);
    set_hitbox_value(attack, hitbox_num, HG_WIDTH, 90);
    set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 66);
    set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 2);
    set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 30);
    set_hitbox_value(attack, hitbox_num, HG_ANGLE, 60);
    set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 11);
    set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 1.4);
    set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 20);
    set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, 1);
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, 197); // 197 - lightning large
    set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, sound_get("thunder"));
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
    set_hitbox_value(attack, hitbox_num, HG_EXTRA_HITPAUSE, 20);
hitbox_num++;

