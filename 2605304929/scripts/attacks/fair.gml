var attack = AT_FAIR; // Swap Taunt for attack that this is

//Attack Values-----------------------------------------------------------------------------
set_attack_value(attack, AG_CATEGORY, 1);
set_attack_value(attack, AG_SPRITE, sprite_get("fair"));
set_attack_value(attack, AG_AIR_SPRITE, 0);
set_attack_value(attack, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));
set_attack_value(attack, AG_HURTBOX_AIR_SPRITE, 0);
set_attack_value(attack, AG_NUM_WINDOWS, 4);
set_attack_value(attack, AG_HAS_LANDING_LAG, 1);
set_attack_value(attack, AG_OFF_LEDGE, 0);
set_attack_value(attack, AG_LANDING_LAG, 8);
set_attack_value(attack, AG_STRONG_CHARGE_WINDOW, 0);
set_attack_value(attack, AG_USES_CUSTOM_GRAVITY, 0);
set_attack_value(attack, 87, "Startup hitboxes Sets Water Mark Status on opponent on hit. Lingering hit does not.");//AG_MUNO_ATTACK_MISC_ADD 

//Window Values-----------------------------------------------------------------------------
var window_num = 1;

// Window #1 / Frame(s) # 0-4 / Start Up
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 16);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1); 
set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2")); // asset_get("") or sound_get("")
set_window_value(attack, window_num, AG_WINDOW_SFX_FRAME, get_window_value(attack, window_num, AG_WINDOW_LENGTH)-1);

window_num++;

// Window #2 / Frame(s) # 5- / Strong Hitbox
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 5);

window_num++;

// Window #3 / Frame(s) # 6-7 / Linger Hitbox
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 6);

window_num++;

// Window #4 / Frame(s) # 8-11 / Endlag
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 14);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(attack, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);
//window_num++;

//Hitbox Values --------------------------------------------------------------------------
//Set Number of Hitboxes
set_num_hitboxes(attack, 3); // Swap 1 for number of hitboxes

var hitbox_num = 1;
var window_for_hitbox = 1; 

//Sweet 1 Spot
window_for_hitbox = 2; // Set this to change the window that the hitbox comes out at and its length quickly
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, get_window_value(attack, window_for_hitbox, AG_WINDOW_LENGTH)); // Swap 1 for what ever window this attack is
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 47);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -45);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 27);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 34);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 8);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 12);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 45);
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 20);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, 1.2);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, hitfx_large_elec); // 157 - lightning extra large
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(attack, hitbox_num, HG_EXTRA_CAMERA_SHAKE, 4);
set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_waterelectric);
set_hitbox_value(attack, hitbox_num, 81, "Sweetspot Tipper");//HG_MUNO_HITBOX_NAME
set_hitbox_value(attack, hitbox_num, 92, "Sets water mark status on hit");//HG_MUNO_HITBOX_MISC_ADD
hitbox_num++;

//Strong 2 start up no sweetspot
window_for_hitbox = 2; // Set this to change the window that the hitbox comes out at and its length quickly
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, get_window_value(attack, window_for_hitbox, AG_WINDOW_LENGTH)); // Swap 1 for what ever window this attack is
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 9);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -43);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 56);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 62);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 6);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 9);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 45);
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, hitfx_elec_paw); // 304 - basic large
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(attack, hitbox_num, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_waterelectric);
set_hitbox_value(attack, hitbox_num, 81, "Start Up No Tipper");//HG_MUNO_HITBOX_NAME
set_hitbox_value(attack, hitbox_num, 92, "Sets water mark status on hit");//HG_MUNO_HITBOX_MISC_ADD
hitbox_num++;

//Hitbox 3 Linger Knee Hitbox
window_for_hitbox = 3; // Set this to change the window that the hitbox comes out at and its length quickly
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, get_window_value(attack, window_for_hitbox, AG_WINDOW_LENGTH)); // Swap 1 for what ever window this attack is
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 4);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -40);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 58);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 42);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 5);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 6);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 45);
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, hitfx_elec_paw);
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_general);
set_hitbox_value(attack, hitbox_num, 81, "Lingering Sour Spot");//HG_MUNO_HITBOX_NAME
set_hitbox_value(attack, hitbox_num, 92, "DOES NOT SET water mark status on hit");//HG_MUNO_HITBOX_MISC_ADD
hitbox_num++;