//Nspecial Execution Ground Ankle Strech
var attack = AT_EXTRA_2; // Swap Taunt for attack that this is

//Attack Values-----------------------------------------------------------------------------
set_attack_value(attack, AG_CATEGORY, 0);
set_attack_value(attack, AG_SPRITE, sprite_get("extra_2"));
set_attack_value(attack, AG_AIR_SPRITE, 0);
set_attack_value(attack, AG_HURTBOX_SPRITE, sprite_get("extra_2_hurt"));
set_attack_value(attack, AG_HURTBOX_AIR_SPRITE, 0);
set_attack_value(attack, AG_NUM_WINDOWS, 12);
set_attack_value(attack, AG_HAS_LANDING_LAG, 0);
set_attack_value(attack, AG_OFF_LEDGE, 0);
set_attack_value(attack, AG_LANDING_LAG, 0);
set_attack_value(attack, AG_STRONG_CHARGE_WINDOW, 0);
set_attack_value(attack, AG_USES_CUSTOM_GRAVITY, 0);
set_attack_value(attack, 87, "- Enhanced Nspecial Grab Grounded
- Consumes Water Mark");

//Window Values-----------------------------------------------------------------------------
var window_num = 1;

// Window #1 / Frame(s) # 0-3 / Start Up / Lift
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1); 
set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2")); // asset_get("") or sound_get("")
set_window_value(attack, window_num, AG_WINDOW_SFX_FRAME, get_window_value(attack,window_num,AG_WINDOW_LENGTH) -1);

window_num++;

// Window #2 / Frame(s) # 4- / Throw Start / 90 Degrees Render Opponent
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 4);

window_num++;

// Window #3 / Frame(s) # 5- / Slam Oppoent (Before hitbox)
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 5);

window_num++;

// Window #4 / Frame(s) # 5- / Hitbox Creation
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 5);

window_num++;

// Window #5 / Frame(s) # 6-9 / Trans to Grab
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1); 
set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1")); // asset_get("") or sound_get("")
set_window_value(attack, window_num, AG_WINDOW_SFX_FRAME, get_window_value(attack,window_num,AG_WINDOW_LENGTH)-1);

window_num++;

// Window #6 / Frame(s) # 10-14 / Drag Down Drop // Turn Around
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 5);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1); 
set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_land_light")); // asset_get("") or sound_get("")
set_window_value(attack, window_num, AG_WINDOW_SFX_FRAME, get_window_value(attack,window_num,AG_WINDOW_LENGTH)-1);

window_num++;

// Window #7 / Frame(s) # 15-18 / Arm / Leg Wrap (includes one cell backwars)
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1); 
set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe")); // asset_get("") or sound_get("")
set_window_value(attack, window_num, AG_WINDOW_SFX_FRAME, 1);

window_num++;

// Window #8 / Frame(s) # 19-21 / Transition to Stretch
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 10);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1); 
set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1")); // asset_get("") or sound_get("")
set_window_value(attack, window_num, AG_WINDOW_SFX_FRAME ,get_window_value(attack,window_num,AG_WINDOW_LENGTH)-1);

window_num++;

// Window #9 / Frame(s) # 22- / Stretch Hitbox
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 22);
window_num++;

// Window #10 / Frame(s) # 23-27 / Tranisiton to kick
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 10);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 23);
set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1); 
set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1")); // asset_get("") or sound_get("")
set_window_value(attack, window_num, AG_WINDOW_SFX_FRAME ,get_window_value(attack,window_num,AG_WINDOW_LENGTH)-1);

window_num++;

// Window #11 / Frame(s) # 28 / Kick Off
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 28);

window_num++;

// Window #12 / Frame(s) # 29-35 / Endlag
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);                    
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 10); 
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 29);

window_num++;

//Hitbox Values --------------------------------------------------------------------------
//Set Number of Hitboxes
set_num_hitboxes(attack, 4); // Swap 1 for number of hitboxes

var hitbox_num = 1;
var window_for_hitbox = 1; 

// 1: Slam Hitbox
window_for_hitbox = 4; // Set this to change the window that the hitbox comes out at and its length quickly
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, get_window_value(attack, window_for_hitbox, AG_WINDOW_LENGTH)); // Swap 1 for what ever window this attack is
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, -40);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -41);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 100);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 85);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 7);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 3);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 100);
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(attack, hitbox_num, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, 302); // 302 - basic small with spin effect in center
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_general);
hitbox_num++;

// 2: Ankle Grab hitbox
window_for_hitbox = 6; 
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(attack, hitbox_num, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, 2); // Swap 1 for what ever window this attack is
set_hitbox_value(attack, hitbox_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 40);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -41);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 100);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 85);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 1);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 45);
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 2);
//set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, 19); //19  - sweetspot small
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT_Y_OFFSET, -100);
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_clairen_nspecial_grab_success"));
set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_paw);
    
hitbox_num++;

// 3: Stetch hitbox
window_for_hitbox = 9; 
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(attack, hitbox_num, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, 2); // Swap 1 for what ever window this attack is
set_hitbox_value(attack, hitbox_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 40);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -41);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 100);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 85);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 6);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 20);
//set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, 304); //304 - basic large
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, sound_get("bone-crunch"));
set_hitbox_value(attack, hitbox_num, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_general);

hitbox_num++;

// 4: Kick Off
window_for_hitbox = 11; 
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, 2); // Swap 1 for what ever window this attack is
//set_hitbox_value(attack, hitbox_num, HG_WINDOW_CREATION_FRAME, 19);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 40);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -41);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 100);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 85);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 8);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 2);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 90); // This is changed in attack update if this move is used in air.
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(attack, hitbox_num, HG_EXTRA_HITPAUSE, 6);
//set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, hitfx_large_elec); // 157 - lightning extra large
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(attack, hitbox_num, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(attack, hitbox_num, HG_DRIFT_MULTIPLIER, 1); // Reset SDI
set_hitbox_value(attack, hitbox_num, HG_SDI_MULTIPLIER, 1); // Reset SDI
set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_paw);