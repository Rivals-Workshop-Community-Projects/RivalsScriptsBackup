var attack = AT_NAIR; // Swap Taunt for attack that this is

//Attack Values-----------------------------------------------------------------------------
set_attack_value(attack, AG_CATEGORY, 1);
set_attack_value(attack, AG_SPRITE, sprite_get("nair")); //sprite_get("")
set_attack_value(attack, AG_AIR_SPRITE, 0);
set_attack_value(attack, AG_HURTBOX_SPRITE, sprite_get("nair_hurt")); //sprite_get("_hurt")
set_attack_value(attack, AG_HURTBOX_AIR_SPRITE, 0);
set_attack_value(attack, AG_NUM_WINDOWS, 7);
set_attack_value(attack, AG_HAS_LANDING_LAG, 1);
set_attack_value(attack, AG_OFF_LEDGE, 0);
set_attack_value(attack, AG_LANDING_LAG, 7);
set_attack_value(attack, AG_STRONG_CHARGE_WINDOW, 0);
set_attack_value(attack, AG_USES_CUSTOM_GRAVITY, 0);
set_attack_value(attack, 87, "Has different inital hitboxes for grounded / air enemy to prevent instant techs");//AG_MUNO_ATTACK_MISC_ADD

//Window Values-----------------------------------------------------------------------------
var window_num = 1;

// Window #1 / Frame(s) # 0-3 / Start Up
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1); 
set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1")); // asset_get("") or sound_get("")
set_window_value(attack, window_num, AG_WINDOW_SFX_FRAME, get_window_value(attack,window_num,AG_WINDOW_LENGTH)-3); //get_window_value(attack,window_num,AG_WINDOW_LENGTH)-1);

window_num++;

// Window #2 / Frame(s) # 4- / 1st kick
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 4);

window_num++;

// Window #3 / Frame(s) # 5- / in between
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1); 
set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2")); // asset_get("") or sound_get("")
set_window_value(attack, window_num, AG_WINDOW_SFX_FRAME, 1); //get_window_value(attack,window_num,AG_WINDOW_LENGTH)-1);


window_num++;

// Window #4 / Frame(s) # 6- / 2nd kick
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 6);

window_num++;

// Window #5 / Frame(s) # 7-9 / In between to kick 3
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 3);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1); 
set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2")); // asset_get("") or sound_get("")
set_window_value(attack, window_num, AG_WINDOW_SFX_FRAME, get_window_value(attack,window_num,AG_WINDOW_LENGTH)-1); //get_window_value(attack,window_num,AG_WINDOW_LENGTH)-1);

window_num++;

// Window #6 / Frame(s) # 10- / Kick 3
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 3);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 10);

window_num++;

// Window #7 / Frame(s) # 11-17 / Endlag
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 11);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(attack, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);
window_num++;

//Hitbox Values --------------------------------------------------------------------------
//Set Number of Hitboxes
set_num_hitboxes(attack, 5); // Swap 1 for number of hitboxes

var hitbox_num = 1;
var window_for_hitbox = 1; 

// Hitbox #1 / Window # 2- / Hit 1 - Only affects Aerial Characters
window_for_hitbox = 2; // Set this to change the window that the hitbox comes out at and its length quickly
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, 2); // Swap 1 for what ever window this attack is
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 33);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -34);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 70);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 44);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 3);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 2);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 75);
set_hitbox_value(attack, hitbox_num, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 5);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, vfx_fire_directional); //301 - basic small (default)
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(attack, hitbox_num, HG_GROUNDEDNESS, 2); //0 = Can hit both aerial and grounded opponents 1 = Can only hit grounded opponents 2 = Can only hit aerial opponents
set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_fire_small);
set_hitbox_value(attack, hitbox_num, 81, "Hit 1 Air Enemy");//HG_MUNO_HITBOX_NAME
hitbox_num++;

// Hitbox #2 / Window # 4- / Hit 2 - Only affects Aerial Characters
window_for_hitbox = 4; // Set this to change the window that the hitbox comes out at and its length quickly
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, 2);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, 2); // Swap 1 for what ever window this attack is
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 30);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -17);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 68);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 44);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 4);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 2);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 75);
set_hitbox_value(attack, hitbox_num, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 5);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, vfx_fire_directional); //301 - basic small (default)
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(attack, hitbox_num, HG_GROUNDEDNESS, 2); //0 = Can hit both aerial and grounded opponents 1 = Can only hit grounded opponents 2 = Can only hit aerial opponents
set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_fire_small);
set_hitbox_value(attack, hitbox_num, 81, "Hit 2 Air Enemy");//HG_MUNO_HITBOX_NAME

hitbox_num++;

// Hitbox #3 / Window # 6- / Hit 3 final hit, hits all opponents
window_for_hitbox = 6; // Set this to change the window that the hitbox comes out at and its length quickly
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, 3);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, get_window_value(attack, window_for_hitbox, AG_WINDOW_LENGTH)); // Swap 1 for what ever window this attack is
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 40);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -24);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 70);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 44);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 6);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 4);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 45);
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, vfx_fire_medium); //302 - basic small with spin effect in center
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_fire_large);
set_hitbox_value(attack, hitbox_num, 81, "Hit 3 (All)");//HG_MUNO_HITBOX_NAME
hitbox_num++;

// Hitbox #4 / Window # 2- / Hit 1 - Only affects grounded opponents
window_for_hitbox = 2; // Set this to change the window that the hitbox comes out at and its length quickly
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, 2); // Swap 1 for what ever window this attack is
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 33);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -34);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 70);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 44);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 3);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 2);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 75);
set_hitbox_value(attack, hitbox_num, HG_FORCE_FLINCH, 1);
//set_hitbox_value(attack, hitbox_num, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 5);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, vfx_fire_directional); //301 - basic small (default)
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(attack, hitbox_num, HG_GROUNDEDNESS, 1); //0 = Can hit both aerial and grounded opponents 1 = Can only hit grounded opponents 2 = Can only hit aerial opponents
set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_fire_small);
set_hitbox_value(attack, hitbox_num, 81, "Hit 1 Grounded Enemy");//HG_MUNO_HITBOX_NAME
hitbox_num++;

// Hitbox #5 / Window # 4- / Hit 2 - Only affects grounded opponents
window_for_hitbox = 4; // Set this to change the window that the hitbox comes out at and its length quickly
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, 2);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, 2); // Swap 1 for what ever window this attack is
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 30);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -17);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 68);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 44);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 4);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 2);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 75);
//set_hitbox_value(attack, hitbox_num, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 5);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, vfx_fire_directional); //301 - basic small (default)
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(attack, hitbox_num, HG_GROUNDEDNESS, 1); //0 = Can hit both aerial and grounded opponents 1 = Can only hit grounded opponents 2 = Can only hit aerial opponents
set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_fire_small);
set_hitbox_value(attack, hitbox_num, 81, "Hit 2 Grounded Enemy");//HG_MUNO_HITBOX_NAME
hitbox_num++;