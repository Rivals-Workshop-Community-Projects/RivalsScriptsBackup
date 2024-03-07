var attack = AT_FTILT; // Swap Taunt for attack that this is

//Attack Values-----------------------------------------------------------------------------
set_attack_value(attack, AG_CATEGORY, 0);
set_attack_value(attack, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(attack, AG_AIR_SPRITE, 0);
set_attack_value(attack, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));
set_attack_value(attack, AG_HURTBOX_AIR_SPRITE, 0);
set_attack_value(attack, AG_NUM_WINDOWS, 3);
set_attack_value(attack, AG_HAS_LANDING_LAG, 0);
set_attack_value(attack, AG_OFF_LEDGE, 0);
set_attack_value(attack, AG_LANDING_LAG, 0);
set_attack_value(attack, AG_STRONG_CHARGE_WINDOW, 0);
set_attack_value(attack, AG_USES_CUSTOM_GRAVITY, 0);

//Window Values-----------------------------------------------------------------------------
var window_num = 1;

// Window #1 / Frame(s) # 0-3 / Start Up
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 12);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(attack, window_num, AG_WINDOW_HSPEED, 5);
set_window_value(attack, window_num, AG_WINDOW_HSPEED_TYPE, 0); 
set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1); 
set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1")); // asset_get("sfx_swipe_medium1") or sound_get("")
set_window_value(attack, window_num, AG_WINDOW_SFX_FRAME, get_window_value(attack, window_num, AG_WINDOW_LENGTH)-1); // asset_get("sfx_swipe_medium1") or sound_get("")

window_num++;

// Window #2 / Frame(s) # 4 / Active hitbox
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 4);

window_num++;

// Window #3 / Frame(s) # 5-7 / Endlag
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 10);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(attack, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);

window_num++;


//Hitbox Values --------------------------------------------------------------------------
//Set Number of Hitboxes
set_num_hitboxes(attack, 1); // Swap 1 for number of hitboxes

var hitbox_num = 1;
var window_for_hitbox = 1; 

//Set Hitbox Values - This is the basic block of a functional hitbox
window_for_hitbox = 2; // Set this to change the window that the hitbox comes out at and its length quickly
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, get_window_value(attack, window_for_hitbox, AG_WINDOW_LENGTH));
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 60);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -41);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 84);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 50);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 3);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 7);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 45);
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, 303); //303 - basic small directional
set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_water);
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

hitbox_num++;
