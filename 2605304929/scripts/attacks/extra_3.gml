// Nspecial Execution Air Jump on Sleeper Hold
var attack = AT_EXTRA_3; // Swap Taunt for attack that this is

//Attack Values-----------------------------------------------------------------------------
set_attack_value(attack, AG_CATEGORY, 2);
set_attack_value(attack, AG_SPRITE, sprite_get("extra_3"));
set_attack_value(attack, AG_AIR_SPRITE, 0);
set_attack_value(attack, AG_HURTBOX_SPRITE, sprite_get("extra_3_hurt"));
set_attack_value(attack, AG_HURTBOX_AIR_SPRITE, 0);
set_attack_value(attack, AG_NUM_WINDOWS, 5);
set_attack_value(attack, AG_HAS_LANDING_LAG, 0);
set_attack_value(attack, AG_OFF_LEDGE, 0);
set_attack_value(attack, AG_LANDING_LAG, 0);
set_attack_value(attack, AG_STRONG_CHARGE_WINDOW, 0);
set_attack_value(attack, AG_USES_CUSTOM_GRAVITY, 0);
set_attack_value(attack, 87, "- Enhanced Nspecial Grab Aerial
- Consumes Water Mark
- Restores Double Jump");

//Window Values-----------------------------------------------------------------------------
var window_num = 1;

// Window #1 / Frame(s) # 0-1 / Grab Start Up
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(attack, window_num, AG_WINDOW_HSPEED, 0);
set_window_value(attack, window_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_VSPEED, 0);
set_window_value(attack, window_num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1); 
set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_waveland_abs")); //  or sound_get("")
set_window_value(attack, window_num, AG_WINDOW_SFX_FRAME, 1);

window_num++;

// Window #2 / Frame(s) # 2/ Teleport to Opponent
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 3);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(attack, window_num, AG_WINDOW_HSPEED, 0);
set_window_value(attack, window_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_VSPEED, 0);
set_window_value(attack, window_num, AG_WINDOW_VSPEED_TYPE, 1);

window_num++;

// Window #3 / Frame(s) # 3-6 / Jump On Opponent
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START,3);
set_window_value(attack, window_num, AG_WINDOW_HSPEED, 0);
set_window_value(attack, window_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_VSPEED, 0);
set_window_value(attack, window_num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1); 
set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_forsburn_reappear")); //  or sound_get("")
set_window_value(attack, window_num, AG_WINDOW_SFX_FRAME, 1);

window_num++;

// Window #4 / Frame(s) # 7-10 / Shock Window
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 20);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(attack, window_num, AG_WINDOW_HSPEED, 0);
set_window_value(attack, window_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_VSPEED, 0);
set_window_value(attack, window_num, AG_WINDOW_VSPEED_TYPE, 1);

window_num++;

// Window #5 / Frame(s) # 11-14 / Endlag
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 12);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(attack, window_num, AG_WINDOW_HSPEED, -3);
set_window_value(attack, window_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_VSPEED, 0);
set_window_value(attack, window_num, AG_WINDOW_VSPEED_TYPE, 1);

window_num++;

//Hitbox Values --------------------------------------------------------------------------
//Set Number of Hitboxes
set_num_hitboxes(attack, 6); // Swap 1 for number of hitboxes

var hitbox_num = 1;
var window_for_hitbox = 1; 

// Squeeze hitbox
window_for_hitbox = 4; 
    set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, -1);
    set_hitbox_value(attack, hitbox_num, HG_WINDOW_CREATION_FRAME, 1);
    set_hitbox_value(attack, hitbox_num, HG_SHAPE, 2);
    set_hitbox_value(attack, hitbox_num, HG_LIFETIME, 2); // Swap 1 for what ever window this attack is
    set_hitbox_value(attack, hitbox_num, HG_WINDOW_CREATION_FRAME, 0);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 16);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -40);
    set_hitbox_value(attack, hitbox_num, HG_WIDTH, 60);
    set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 28);
    set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 2);
    set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 2);
    set_hitbox_value(attack, hitbox_num, HG_ANGLE, 90);
    set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 5);
    set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 0);
    set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 5);
    //set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, .5);
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, 303); //303 - basic small directional
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT_X_OFFSET, 20);
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
    set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_ice_uspecial_start"));
    set_hitbox_value(attack, hitbox_num, HG_EXTRA_CAMERA_SHAKE, 1);
    set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_general);
    
hitbox_num++;

// Hitbox 2-5
for(var hitbox_num = 2; hitbox_num < 6; hitbox_num++){
window_for_hitbox = 4; 
    set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, -1);
    set_hitbox_value(attack, hitbox_num, HG_SHAPE, 2);
    set_hitbox_value(attack, hitbox_num, HG_LIFETIME, 2); // Swap 1 for what ever window this attack is
    set_hitbox_value(attack, hitbox_num, HG_WINDOW_CREATION_FRAME, (hitbox_num - 1) * 3);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 0);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -40);
    set_hitbox_value(attack, hitbox_num, HG_WIDTH, 80);
    set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 75);
    set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 2);
    set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 2);
    set_hitbox_value(attack, hitbox_num, HG_ANGLE, 90);
    set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 1);
    set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 0);
    set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 3);
    //set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, .5);
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, 303); // 303 - basic small directional
    //set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, 1); // 1  - No Visual Effect
    set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_absa_singlezap2"));
    set_hitbox_value(attack, hitbox_num, HG_DRIFT_MULTIPLIER, -1); // Negate most drive and SDI during shock.
    set_hitbox_value(attack, hitbox_num, HG_SDI_MULTIPLIER, -1);
    set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_electric);
}

// #5 Final Shock
window_for_hitbox = 5; 
    set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, -1);
    set_hitbox_value(attack, hitbox_num, HG_SHAPE, 2);
    set_hitbox_value(attack, hitbox_num, HG_LIFETIME, 2); // Swap 1 for what ever window this attack is
    //set_hitbox_value(attack, hitbox_num, HG_WINDOW_CREATION_FRAME, 19);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 0);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -40);
    set_hitbox_value(attack, hitbox_num, HG_WIDTH, 80);
    set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 75);
    set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 8);
    set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 2);
    set_hitbox_value(attack, hitbox_num, HG_ANGLE, 90); // This is changed in attack update if this move is used in air.
    set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 7);
    set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, .25);
    set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 20);
    set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, 0);
    set_hitbox_value(attack, hitbox_num, HG_EXTRA_HITPAUSE, 10);
    set_hitbox_value(attack, hitbox_num, HG_HITSTUN_MULTIPLIER, 1.2);
    //set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, 1);
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, hitfx_large_elec); // 157 - lightning extra large
    set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
    set_hitbox_value(attack, hitbox_num, HG_EXTRA_CAMERA_SHAKE, 1);
    set_hitbox_value(attack, hitbox_num, HG_DRIFT_MULTIPLIER, 1); // Reset SDI
    set_hitbox_value(attack, hitbox_num, HG_SDI_MULTIPLIER, 1); // Reset SDI
    set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_electric);