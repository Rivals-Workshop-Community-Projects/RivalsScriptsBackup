var attack = AT_DTHROW; // Swap Taunt for attack that this is

//Attack Values-----------------------------------------------------------------------------
set_attack_value(attack, AG_CATEGORY, 2);
set_attack_value(attack, AG_SPRITE, sprite_get("dthrow"));
//set_attack_value(attack, AG_SPRITE, asset_get("empty_sprite"));
set_attack_value(attack, AG_AIR_SPRITE, 0);
set_attack_value(attack, AG_HURTBOX_SPRITE, sprite_get("dthrow_hurt"));
set_attack_value(attack, AG_HURTBOX_AIR_SPRITE, 0);
set_attack_value(attack, AG_NUM_WINDOWS, 7);
set_attack_value(attack, AG_HAS_LANDING_LAG, 0);
set_attack_value(attack, AG_OFF_LEDGE, 0);
set_attack_value(attack, AG_LANDING_LAG, 0);
set_attack_value(attack, AG_STRONG_CHARGE_WINDOW, 0);
set_attack_value(attack, AG_USES_CUSTOM_GRAVITY, 0);
set_attack_value(attack, 87, 
"- Can cancel grab before final hit with parry input.");//AG_MUNO_ATTACK_MISC_ADD 

//Window Values-----------------------------------------------------------------------------
var window_num = 1;

// Window #1 / Frame(s) # 0-4 / Start up In Front
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 12);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(attack, window_num, AG_WINDOW_VSPEED, 1);
set_window_value(attack, window_num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_HSPEED, 5);
set_window_value(attack, window_num, AG_WINDOW_HSPEED_TYPE, 1);


window_num++;

// Window #2 / Frame(s) # 5-8 / Start up Behind
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 12);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(attack, window_num, AG_WINDOW_VSPEED, 3);
set_window_value(attack, window_num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_HSPEED, 0);
set_window_value(attack, window_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1); 
set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1")); //  or sound_get("")
set_window_value(attack, window_num, AG_WINDOW_SFX_FRAME, 5);

window_num++;

// Window #3 / Frame(s) # 9 / Hit
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 9);

window_num++;

// Window #4 / Frame(s) # 10-13 / Shock Window
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 20);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(attack, window_num, AG_WINDOW_VSPEED, 0);
set_window_value(attack, window_num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_HSPEED, 0);
set_window_value(attack, window_num, AG_WINDOW_HSPEED_TYPE, 1);

window_num++;

// Window #5 / Frame(s) # 14-18 / Jump Start Up
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(attack, window_num, AG_WINDOW_HSPEED, 0);
set_window_value(attack, window_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_VSPEED, 0);
set_window_value(attack, window_num, AG_WINDOW_VSPEED_TYPE, 1);

window_num++;

// Window #6 / Frame(s) # 19 / Hit Frame
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(attack, window_num, AG_WINDOW_HSPEED, 0);
set_window_value(attack, window_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_VSPEED, -10);
set_window_value(attack, window_num, AG_WINDOW_VSPEED_TYPE, 0);

window_num++;

// Window #7 / Frame(s) # 20-23 / End Lag
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 12);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 20);

//Hitbox Values --------------------------------------------------------------------------
//Set Number of Hitboxes
set_num_hitboxes(attack, 6); // Swap 1 for number of hitboxes


var hitbox_num = 1;
var window_for_hitbox = 1; 

// Hitbox 1 - Start Up
window_for_hitbox = 3; 
    set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, -1);
    set_hitbox_value(attack, hitbox_num, HG_WINDOW_CREATION_FRAME, 1);
    set_hitbox_value(attack, hitbox_num, HG_SHAPE, 2);
    set_hitbox_value(attack, hitbox_num, HG_LIFETIME, get_window_value(attack, window_for_hitbox, AG_WINDOW_LENGTH)); // Swap 1 for what ever window this attack is
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 0);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -57);
    set_hitbox_value(attack, hitbox_num, HG_WIDTH, 88);
    set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 114);
    set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 6);
    set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 2);
    set_hitbox_value(attack, hitbox_num, HG_ANGLE, 90);
    set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 4);
    set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 0);
    set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 8);
    set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, 0);
    set_hitbox_value(attack, hitbox_num, HG_EXTRA_HITPAUSE, 0);
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, 302); // 
    set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
    set_hitbox_value(attack, hitbox_num, HG_DRIFT_MULTIPLIER, -1); // Reset SDI
    set_hitbox_value(attack, hitbox_num, HG_SDI_MULTIPLIER, -1); // Reset SDI
    set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_paw);
    set_hitbox_value(attack, hitbox_num, 81, "Start Hit");//HG_MUNO_HITBOX_NAME

// Hitbox 2-5
for(var hitbox_num = 2; hitbox_num < 6; hitbox_num++){
window_for_hitbox = 4; 
    set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, -1);
    set_hitbox_value(attack, hitbox_num, HG_SHAPE, 2);
    set_hitbox_value(attack, hitbox_num, HG_LIFETIME, 2); // Swap 1 for what ever window this attack is
    set_hitbox_value(attack, hitbox_num, HG_WINDOW_CREATION_FRAME, hitbox_num * 3);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 0);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -57);
    set_hitbox_value(attack, hitbox_num, HG_WIDTH, 88);
    set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 114);
    set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 2);
    set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 1);
    set_hitbox_value(attack, hitbox_num, HG_ANGLE, 270);
    set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 1);
    set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 0);
    set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 3);
    //set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, .5);
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, 303); // 303 basic directional
    //set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, 1); // 1  - No Visual Effect
    set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_absa_singlezap2"));
    set_hitbox_value(attack, hitbox_num, HG_DRIFT_MULTIPLIER, -1); // Negate most drive and SDI during shock.
    set_hitbox_value(attack, hitbox_num, HG_SDI_MULTIPLIER, -1);
    set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_electric);
    set_hitbox_value(attack, hitbox_num, 81, "Shock" + string(hitbox_num - 1));//HG_MUNO_HITBOX_NAME
    set_hitbox_value(attack, hitbox_num, 91, "Turns off SDI and Drift during grab");//HG_MUNO_HITBOX_MISC
}

// Hitbox 6 - Final Hitbox with knockback
window_for_hitbox = 6; 
    set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, -1);
    set_hitbox_value(attack, hitbox_num, HG_WINDOW_CREATION_FRAME, 1);
    set_hitbox_value(attack, hitbox_num, HG_SHAPE, 2);
    set_hitbox_value(attack, hitbox_num, HG_LIFETIME, get_window_value(attack, window_for_hitbox, AG_WINDOW_LENGTH)); // Swap 1 for what ever window this attack is
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 0);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -57);
    set_hitbox_value(attack, hitbox_num, HG_WIDTH, 88);
    set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 114);
    set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 6);
    set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 2);
    set_hitbox_value(attack, hitbox_num, HG_ANGLE, 270);
    set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 5);
    set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, .3);
    set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 8);
    set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, .4);
    set_hitbox_value(attack, hitbox_num, HG_EXTRA_HITPAUSE, 8);
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, 303); // 
    set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_bird_downspecial_end"));
    set_hitbox_value(attack, hitbox_num, HG_DRIFT_MULTIPLIER, 1); // Reset SDI
    set_hitbox_value(attack, hitbox_num, HG_SDI_MULTIPLIER, 1); // Reset SDI
    set_hitbox_value(attack, hitbox_num, HG_HITSTUN_MULTIPLIER, .9);
    set_hitbox_value(attack, hitbox_num, HG_EXTRA_CAMERA_SHAKE, 1);
    set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_electric);
    set_hitbox_value(attack, hitbox_num, 81, "Final Hit");//HG_MUNO_HITBOX_NAME
//hitbox_num++;