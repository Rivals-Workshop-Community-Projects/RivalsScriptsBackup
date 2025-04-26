var attack = AT_NAIR; // Swap Taunt for attack that this is

//Attack Values-----------------------------------------------------------------------------
set_attack_value(attack, AG_CATEGORY, 1);
set_attack_value(attack, AG_SPRITE, sprite_get("nair")); //sprite_get("")
set_attack_value(attack, AG_AIR_SPRITE, 0);
set_attack_value(attack, AG_HURTBOX_SPRITE, sprite_get("nair_hurt")); //sprite_get("_hurt")
set_attack_value(attack, AG_HURTBOX_AIR_SPRITE, 0);
set_attack_value(attack, AG_NUM_WINDOWS, 4);
set_attack_value(attack, AG_HAS_LANDING_LAG, 1);
set_attack_value(attack, AG_OFF_LEDGE, 0);
set_attack_value(attack, AG_LANDING_LAG, 4);
set_attack_value(attack, AG_STRONG_CHARGE_WINDOW, 0);
set_attack_value(attack, AG_USES_CUSTOM_GRAVITY, 0);
set_attack_value(attack, 87, "Reference Ranno Nair");//AG_MUNO_ATTACK_MISC_ADD

//Window Values-----------------------------------------------------------------------------
var window_num = 1;

// Window #1 / Frame(s) # 1-2 / Start Up Skip 0 and 3
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1); 
set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1")); // asset_get("") or sound_get("")
set_window_value(attack, window_num, AG_WINDOW_SFX_FRAME, get_window_value(attack,window_num,AG_WINDOW_LENGTH)-3); //get_window_value(attack,window_num,AG_WINDOW_LENGTH)-1);

window_num++;

// Window #2 / Frame(s) # 10- / Start up Kick Clean Hit
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 3);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 10);

window_num++;

// Window #3 / Frame(s) # 11-14 / Hold Kick Weak
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 15);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 11);

window_num++;
// Window #4 / Frame(s) # 15-17 / Endlag
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 10);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(attack, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);
window_num++;

//Hitbox Values --------------------------------------------------------------------------
//Set Number of Hitboxes
set_num_hitboxes(attack, 4); // Swap 1 for number of hitboxes

var hitbox_num = 1;
var window_for_hitbox = 1; 

// Hitbox #1 / Window # 2- / Front Hitbox Clean
window_for_hitbox = 2; // Set this to change the window that the hitbox comes out at and its length quickly
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, 0);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, get_window_value(attack, window_for_hitbox, AG_WINDOW_LENGTH)); // Swap 1 for what ever window this attack is
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 42);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -26);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 53);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 28);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 6);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 361);
set_hitbox_value(attack, hitbox_num, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, vfx_fire_medium); //301 - basic small (default)
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_fire_small);
set_hitbox_value(attack, hitbox_num, 81, "Front Hitbox Clean");//HG_MUNO_HITBOX_NAME
hitbox_num++;

// Hitbox #2 / Window # 2- / Bottom Hitbox Clean
window_for_hitbox = 2; // Set this to change the window that the hitbox comes out at and its length quickly
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, 0);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, get_window_value(attack, window_for_hitbox, AG_WINDOW_LENGTH)); // Swap 1 for what ever window this attack is
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, -1);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -11);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 29);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 25);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 1);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 6);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 361);
set_hitbox_value(attack, hitbox_num, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, vfx_fire_medium); //301 - basic small (default)
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_fire_small);
set_hitbox_value(attack, hitbox_num, 81, "Bottom Hitbox Clean");//HG_MUNO_HITBOX_NAME

hitbox_num++;

// Hitbox #3 / Window # 3- / Front Hitbox Weak
window_for_hitbox = 3; // Set this to change the window that the hitbox comes out at and its length quickly
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, 0);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, get_window_value(attack, window_for_hitbox, AG_WINDOW_LENGTH)); // Swap 1 for what ever window this attack is
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 42);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -26);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 53);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 28);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 4);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 361);
set_hitbox_value(attack, hitbox_num, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, vfx_fire_medium); //302 - basic small with spin effect in center
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_fire_small);
set_hitbox_value(attack, hitbox_num, 81, "Front Hitbox Weak");//HG_MUNO_HITBOX_NAME
hitbox_num++;

// Hitbox #4 / Window # 3- / Bottom Hitbox Weak
window_for_hitbox = 3; // Set this to change the window that the hitbox comes out at and its length quickly
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, 0);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, get_window_value(attack, window_for_hitbox, AG_WINDOW_LENGTH)); // Swap 1 for what ever window this attack is
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, -1);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -11);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 29);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 25);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 1);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 4);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 361);
set_hitbox_value(attack, hitbox_num, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, vfx_fire_directional); //301 - basic small (default)
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_fire_small);
set_hitbox_value(attack, hitbox_num, 81, "Bottom Hitbox Weak");//HG_MUNO_HITBOX_NAME
hitbox_num++;