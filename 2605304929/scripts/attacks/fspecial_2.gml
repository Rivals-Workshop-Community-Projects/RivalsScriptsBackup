//Paired with FSpecial

var attack = AT_FSPECIAL_2; // Swap Taunt for attack that this is

//Attack Values-----------------------------------------------------------------------------
set_attack_value(attack, AG_CATEGORY, 2);
set_attack_value(attack, AG_SPRITE, sprite_get("fspecial_2"));
set_attack_value(attack, AG_AIR_SPRITE, 0);
set_attack_value(attack, AG_HURTBOX_SPRITE, sprite_get("fspecial_2_hurt"));
set_attack_value(attack, AG_HURTBOX_AIR_SPRITE, 0);
set_attack_value(attack, AG_NUM_WINDOWS, 8);
set_attack_value(attack, AG_HAS_LANDING_LAG, 0);
set_attack_value(attack, AG_OFF_LEDGE, 0);
set_attack_value(attack, AG_LANDING_LAG, 0);
set_attack_value(attack, AG_STRONG_CHARGE_WINDOW, 0);
set_attack_value(attack, AG_USES_CUSTOM_GRAVITY, 0);
set_attack_value(attack, 87, 
"- Enhanced version of Fspecial
- Consumes Mark
- Has Anti Gannoncide Platform code.");//AG_MUNO_ATTACK_MISC_ADD 

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

// Window #3 / Frame(s) #3-12 / Land and Stomp Start Up
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 10);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 3);

window_num++;

// Window #4 / Frame(s) #13-17 / Stomp 1 (8 /13 is whole motion)
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 13);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1); 
set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_absa_singlezap1")); // asset_get("") or sound_get("")
set_window_value(attack, window_num, AG_WINDOW_SFX_FRAME, 12);

window_num++;

// Window #5 / Frame(s) #13-17 / Stomp 2 (8 /13 is whole motion)
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 13);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1); 
set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_absa_singlezap2")); // asset_get("") or sound_get("")
set_window_value(attack, window_num, AG_WINDOW_SFX_FRAME, 12);

window_num++;

// Window #6 / Frame(s) #18 - 21 / Stomp end / Kick Start Up
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1); 
set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_absa_cloud_crackle")); // asset_get("") or sound_get("")
set_window_value(attack, window_num, AG_WINDOW_SFX_FRAME, 0);

window_num++;

// Window #7 / Frame(s) #22 - / Kick Active Frame
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 22);

window_num++;

// Window #8 / Frame(s) #23 - 27 / Kick End
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 15);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 23);

//Hitbox Values --------------------------------------------------------------------------
//Set Number of Hitboxes
set_num_hitboxes(attack, 4); // Swap 1 for number of hitboxes

var hitbox_num = 1;
var window_for_hitbox = 1;

// #1 Landing Hitbox
window_for_hitbox = 3; 
    set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, -1);
    set_hitbox_value(attack, hitbox_num, HG_SHAPE, 2);
    set_hitbox_value(attack, hitbox_num, HG_LIFETIME, 2);
    set_hitbox_value(attack, hitbox_num, HG_WINDOW_CREATION_FRAME, 1);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 0);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -33);
    set_hitbox_value(attack, hitbox_num, HG_WIDTH, 90);
    set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 66);
    set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 2);
    set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 1);
    set_hitbox_value(attack, hitbox_num, HG_ANGLE, 90);
    set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 5);
    set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 0);
    set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 10);
    //set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, .5);
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, 303); //303 - basic small directional
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT_X_OFFSET, 40);
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT_Y_OFFSET, 20);
    set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_kragg_rock_land")); //sfx_absa_singlezap1 sfx_absa_singlezap2
    set_hitbox_value(attack, hitbox_num, HG_EXTRA_CAMERA_SHAKE, 1);
    set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_general);
hitbox_num++;

// #2 Stomp Hitbox
window_for_hitbox = 4; 
    set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, -1);
    set_hitbox_value(attack, hitbox_num, HG_SHAPE, 2);
    set_hitbox_value(attack, hitbox_num, HG_LIFETIME, 2);
    set_hitbox_value(attack, hitbox_num, HG_WINDOW_CREATION_FRAME, 12);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 19);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -19);
    set_hitbox_value(attack, hitbox_num, HG_WIDTH, 47);
    set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 41);
    set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 2);
    set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 4);
    set_hitbox_value(attack, hitbox_num, HG_ANGLE, 45);
    set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 5);
    set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 0);
    set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 5);
    //set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, .5);
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, 303); //303 - basic small directional
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT_X_OFFSET, 40);
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT_Y_OFFSET, 20);
    set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy1")); //sfx_absa_singlezap1 sfx_absa_singlezap2
    set_hitbox_value(attack, hitbox_num, HG_EXTRA_CAMERA_SHAKE, 1);
    set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_paw);
hitbox_num++;

// #3 Stomp 2 Hitbox
window_for_hitbox = 5; 
    set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, -1);
    set_hitbox_value(attack, hitbox_num, HG_SHAPE, 2);
    set_hitbox_value(attack, hitbox_num, HG_LIFETIME, 2);
    set_hitbox_value(attack, hitbox_num, HG_WINDOW_CREATION_FRAME, 12);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 19);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -19);
    set_hitbox_value(attack, hitbox_num, HG_WIDTH, 47);
    set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 41);
    set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 2);
    set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 4);
    set_hitbox_value(attack, hitbox_num, HG_ANGLE, 45);
    set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 5);
    set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 0);
    set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 5);
    //set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, .5);
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, 303); //303 - basic small directional
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT_X_OFFSET, 40);
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT_Y_OFFSET, 20);
    set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy1")); //sfx_absa_singlezap1 sfx_absa_singlezap2
    set_hitbox_value(attack, hitbox_num, HG_EXTRA_CAMERA_SHAKE, 1);
    set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_paw);
hitbox_num++;

// #4 Kick Hitbox - Final Hitbox with knockback
window_for_hitbox = 7; 
    set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, -1);
    set_hitbox_value(attack, hitbox_num, HG_SHAPE, 2);
    set_hitbox_value(attack, hitbox_num, HG_LIFETIME, 2); // Swap 1 for what ever window this attack is
    //set_hitbox_value(attack, hitbox_num, HG_WINDOW_CREATION_FRAME, 19);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 28);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -30);
    set_hitbox_value(attack, hitbox_num, HG_WIDTH, 68);
    set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 83);
    set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 8);
    set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 10);
    set_hitbox_value(attack, hitbox_num, HG_ANGLE, 45);
    set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 8);
    set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 1.15);
    set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 10);
    set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, 1);
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, 304); // Normal Large
    set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT_X_OFFSET, 40);
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT_Y_OFFSET, 20);
    set_hitbox_value(attack, hitbox_num, HG_EXTRA_CAMERA_SHAKE, 1);
    set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_paw);
    set_hitbox_value(attack, hitbox_num, 92, "If gannoncide platform is active, 
    this sends at angle 90 always");//HG_MUNO_HITBOX_MISC
hitbox_num++;