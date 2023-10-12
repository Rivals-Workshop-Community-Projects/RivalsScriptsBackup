var attack = AT_UTILT; // Swap Taunt for attack that this is

//Attack Values-----------------------------------------------------------------------------
set_attack_value(attack, AG_CATEGORY, 0);
set_attack_value(attack, AG_SPRITE, sprite_get("utilt")); //sprite_get("")
set_attack_value(attack, AG_AIR_SPRITE, 0);
set_attack_value(attack, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt")); //sprite_get("_hurt")
set_attack_value(attack, AG_HURTBOX_AIR_SPRITE, 0);
set_attack_value(attack, AG_NUM_WINDOWS, 4);
set_attack_value(attack, AG_HAS_LANDING_LAG, 0);
set_attack_value(attack, AG_OFF_LEDGE, 0);
set_attack_value(attack, AG_LANDING_LAG, 0);
set_attack_value(attack, AG_STRONG_CHARGE_WINDOW, 0);
set_attack_value(attack, AG_USES_CUSTOM_GRAVITY, 0);
set_attack_value(attack, 87, "Reference Ori Utilt"); 

//Window Values-----------------------------------------------------------------------------
var window_num = 1;

// Window #1 / Frame(s) # 0-1 / Start Up
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 9);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1); 
set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1")); // asset_get("") or sound_get("")
set_window_value(attack, window_num, AG_WINDOW_SFX_FRAME, get_window_value(attack,window_num,AG_WINDOW_LENGTH)-1); //get_window_value(attack,window_num,AG_WINDOW_LENGTH)-1);

window_num++;

// Window #2 / Frame(s) # 2- / Scoop hitbox
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_spin")); // asset_get("") or sound_get("")
set_window_value(attack, window_num, AG_WINDOW_SFX_FRAME, get_window_value(attack,window_num,AG_WINDOW_LENGTH)-1); //get_window_value(attack,window_num,AG_WINDOW_LENGTH)-1);

window_num++;

// Window #3 / Frame(s) # 3-5 / Hitbox active
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 3);

window_num++;

// Window #4 / Frame(s) # 6-7 / Endlag
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 12);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(attack, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);

window_num++;

//Hitbox Values --------------------------------------------------------------------------
//Set Number of Hitboxes
set_num_hitboxes(attack, 4); // Swap 1 for number of hitboxes

var hitbox_num = 1;
var window_for_hitbox = 1; 

// Hitbox #1 / Window #2 - / Scoop Hitbox
window_for_hitbox = 2; // Set this to change the window that the hitbox comes out at and its length quickly
set_hitbox_value(attack, hitbox_num, 81, "Scoop"); // Woodcock Name
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, get_window_value(attack, window_for_hitbox, AG_WINDOW_LENGTH)); // Swap 1 for what ever window this attack is
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 39);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -58);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 52);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 103);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 5);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 2);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 5);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, hfx_small);
set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_small);
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

hitbox_num++;

// Hitbox #2 / Window #3 - / Multihit 1
window_for_hitbox = 3; // Set this to change the window that the hitbox comes out at and its length quickly
set_hitbox_value(attack, hitbox_num, 81, "Multi 1"); // Woodcock Name
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(attack, hitbox_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, 2); // Swap 1 for what ever window this attack is
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 38);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -74);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 70);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 70);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 5);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 2);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 80); // From Ori Utilt
set_hitbox_value(attack, hitbox_num, HG_ANGLE_FLIPPER, 9); // From Ori Utilt
set_hitbox_value(attack, hitbox_num, HG_TECHABLE, 3); // From Ori Utilt / 3 = Cannot tech or bounce
set_hitbox_value(attack, hitbox_num, HG_FORCE_FLINCH, 2); // From Ori Utilt / 2 = Cannot cause opponents to flinch
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 3);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, hfx_small);
set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_small);
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

hitbox_num++;

// Hitbox #3 / Window #3 - / Multihit 2
window_for_hitbox = 3;
set_hitbox_value(attack, hitbox_num, 81, "Multi 2"); // Woodcock Name
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(attack, hitbox_num, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, 2); // Swap 1 for what ever window this attack is
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 38);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -74);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 70);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 70);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 5);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 2);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 80); // From Ori Utilt
set_hitbox_value(attack, hitbox_num, HG_ANGLE_FLIPPER, 9); // From Ori Utilt
set_hitbox_value(attack, hitbox_num, HG_TECHABLE, 3); // From Ori Utilt / 3 = Cannot tech or bounce
set_hitbox_value(attack, hitbox_num, HG_FORCE_FLINCH, 2); // From Ori Utilt / 2 = Cannot cause opponents to flinch
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 3);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, 302); //302 - basic small with spin effect in center
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

hitbox_num++;

// Hitbox #3 / Window #3 - / Finisher
window_for_hitbox = 3; // Set this to change the window that the hitbox comes out at and its length quickly
set_hitbox_value(attack, hitbox_num, 81, "Final Hitbox"); // Woodcock Name
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(attack, hitbox_num, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, 2); // Swap 1 for what ever window this attack is
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 38);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -74);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 70);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 70);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 5);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 2);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 85);
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, hfx_medium);
set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_medium);
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_weak1"));