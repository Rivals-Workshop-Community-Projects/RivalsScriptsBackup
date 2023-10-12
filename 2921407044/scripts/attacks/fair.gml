var attack = AT_FAIR; // Swap Taunt for attack that this is

//Attack Values-----------------------------------------------------------------------------
set_attack_value(attack, AG_CATEGORY, 1);
set_attack_value(attack, AG_SPRITE, sprite_get("fair")); //sprite_get("")
set_attack_value(attack, AG_AIR_SPRITE, 0);
set_attack_value(attack, AG_HURTBOX_SPRITE, sprite_get("fair_hurt")); //sprite_get("_hurt")
set_attack_value(attack, AG_HURTBOX_AIR_SPRITE, 0);
set_attack_value(attack, AG_NUM_WINDOWS, 3);
set_attack_value(attack, AG_HAS_LANDING_LAG, 1);
set_attack_value(attack, AG_OFF_LEDGE, 0);
set_attack_value(attack, AG_LANDING_LAG, 10);
set_attack_value(attack, AG_STRONG_CHARGE_WINDOW, 0);
set_attack_value(attack, AG_USES_CUSTOM_GRAVITY, 0);
set_attack_value(attack, 87, 
"Reference Slyv Fair");

//Window Values-----------------------------------------------------------------------------
var window_num = 1;

// Window #1 / Frame(s) # 0-5 / Start Up
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 17);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1); 
set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_heavy1")); // asset_get("") or sound_get("")
set_window_value(attack, window_num, AG_WINDOW_SFX_FRAME, get_window_value(attack,window_num,AG_WINDOW_LENGTH)-1); //get_window_value(attack,window_num,AG_WINDOW_LENGTH)-1);

window_num++;

// Window #2 / Frame(s) # 6- / Active
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 6);

window_num++;

// Window #3 / Frame(s) # 7-10 / Endlag
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 16);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(attack, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);

window_num++;

//Hitbox Values --------------------------------------------------------------------------
//Set Number of Hitboxes
set_num_hitboxes(attack, 3); // Swap 1 for number of hitboxes

var hitbox_num = 1;
var window_for_hitbox = 1; 

// Hitbox #1 / Window #2 - / Top Hitbox
window_for_hitbox = 2; // Set this to change the window that the hitbox comes out at and its length quickly
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, 81, "Top Hitbox"); // Muno Name
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, get_window_value(attack, window_for_hitbox, AG_WINDOW_LENGTH)); // Swap 1 for what ever window this attack is
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 51);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -78);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 47);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 60);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 6);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 10);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 45);
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, .95);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 9);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, hfx_large);
set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_large);
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

hitbox_num++;

// Hitbox #2 / Window #2 - / Bottom Hitbox
window_for_hitbox = 2; // Set this to change the window that the hitbox comes out at and its length quickly
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, 81, "Bottom Hitbox"); // Muno Name
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, get_window_value(attack, window_for_hitbox, AG_WINDOW_LENGTH)); // Swap 1 for what ever window this attack is
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 61);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -21);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 61);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 60);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 5);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 10);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 45);
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, .95);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 9);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, hfx_large);
set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_large);
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

hitbox_num++;

// Hitbox #2 / Window #2 - / Sour Inner
window_for_hitbox = 2; // Set this to change the window that the hitbox comes out at and its length quickly
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, 81, "Inside Sour Hitbox"); // Muno Name
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, get_window_value(attack, window_for_hitbox, AG_WINDOW_LENGTH)); // Swap 1 for what ever window this attack is
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 28);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -39);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 48);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 64);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 4);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 7);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 45);
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, hfx_medium);
set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_medium);
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

hitbox_num++;