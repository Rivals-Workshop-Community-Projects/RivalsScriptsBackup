var attack = AT_USPECIAL; // Swap Taunt for attack that this is

//Attack Values-----------------------------------------------------------------------------
set_attack_value(attack, AG_CATEGORY, 2);
set_attack_value(attack, AG_SPRITE, sprite_get("uspecial")); //sprite_get("")
set_attack_value(attack, AG_AIR_SPRITE, 0);
set_attack_value(attack, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt")); //sprite_get("_hurt")
set_attack_value(attack, AG_HURTBOX_AIR_SPRITE, 0);
set_attack_value(attack, AG_NUM_WINDOWS, 9);
set_attack_value(attack, AG_HAS_LANDING_LAG, 0);
set_attack_value(attack, AG_OFF_LEDGE, 0);
set_attack_value(attack, AG_LANDING_LAG, 0);
set_attack_value(attack, AG_STRONG_CHARGE_WINDOW, 0);
set_attack_value(attack, AG_USES_CUSTOM_GRAVITY, 0);

//set_attack_value(attack, 87, "Has 14 soft armor until shotgun catch"); // Misc notes for the attack


//Window Values-----------------------------------------------------------------------------
var window_num = 1;

// Window #1 / Frame(s) # 0-1 / Start up
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 12);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(attack, window_num, AG_WINDOW_VSPEED, 0);
set_window_value(attack, window_num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_HSPEED, 0);
set_window_value(attack, window_num, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1); 
set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1")); // asset_get("sfx_swipe_weak1") or sound_get("")
set_window_value(attack, window_num, AG_WINDOW_SFX_FRAME, get_window_value(attack,window_num,AG_WINDOW_LENGTH)-1); //get_window_value(attack,window_num,AG_WINDOW_LENGTH)-1);



window_num++;

// Window #2 / Frame(s) # 2- / Scoop Hitbox
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 3);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(attack, window_num, AG_WINDOW_VSPEED, 0);
set_window_value(attack, window_num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_HSPEED, 0);
set_window_value(attack, window_num, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1); 
set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_spin_longer")); // asset_get("sfx_swipe_weak1") or sound_get("")
set_window_value(attack, window_num, AG_WINDOW_SFX_FRAME, get_window_value(attack,window_num,AG_WINDOW_LENGTH)-1); //get_window_value(attack,window_num,AG_WINDOW_LENGTH)-1);


window_num++;

// Window #3 / Frame(s) # 3-6 / Preparing to leap
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 12);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(attack, window_num, AG_WINDOW_VSPEED, 0);
set_window_value(attack, window_num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_HSPEED, 0);
set_window_value(attack, window_num, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1); // Jump
set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_jumpground")); // asset_get("sfx_swipe_weak1") or sound_get("")
set_window_value(attack, window_num, AG_WINDOW_SFX_FRAME, get_window_value(attack,window_num,AG_WINDOW_LENGTH)-1); //get_window_value(attack,window_num,AG_WINDOW_LENGTH)-1);

window_num++;

// Window #4 / Frame(s) # 7- / Leap
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(attack, window_num, AG_WINDOW_VSPEED, -14);
set_window_value(attack, window_num, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(attack, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(attack, window_num, AG_WINDOW_CUSTOM_AIR_FRICTION, .08) // base is .02;

window_num++;

// Window #5 / Frame(s) # 8-9 / Air Travel
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 16);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(attack, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(attack, window_num, AG_WINDOW_CUSTOM_AIR_FRICTION, .08) // base is .02;

set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1); // Catch Shotgun
set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_ell_utilt_hit")); // asset_get("sfx_swipe_weak1") or sound_get("")
set_window_value(attack, window_num, AG_WINDOW_SFX_FRAME, get_window_value(attack,window_num,AG_WINDOW_LENGTH)-1); //get_window_value(attack,window_num,AG_WINDOW_LENGTH)-1);


window_num++;

// Window #6 / Frame(s) # 10-13 / Caught shotgun + Falling Wind up
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(attack, window_num, AG_WINDOW_VSPEED, 0);
set_window_value(attack, window_num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(attack, window_num, AG_WINDOW_CUSTOM_AIR_FRICTION, .08) // base is .02;
//set_window_value(attack, window_num, AG_WINDOW_CANCEL_TYPE, 2) // base is .02;
//set_window_value(attack, window_num, AG_WINDOW_CANCEL_FRAME, ) // base is .02;

set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1); // Wind up for fall
set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1")); // asset_get("sfx_swipe_weak1") or sound_get("")
set_window_value(attack, window_num, AG_WINDOW_SFX_FRAME, get_window_value(attack,window_num,AG_WINDOW_LENGTH)-1); //get_window_value(attack,window_num,AG_WINDOW_LENGTH)-1);

//

window_num++;

// Window #7 / Frame(s) # 14- / Falling
set_window_value(attack, window_num, AG_WINDOW_TYPE, 10);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(attack, window_num, AG_WINDOW_VSPEED, 15);
set_window_value(attack, window_num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(attack, window_num, AG_WINDOW_CUSTOM_AIR_FRICTION, .08) // base is .02;


window_num++;

// Window #8 / Frame(s) # 15- / Landing Shockwave
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1); // Falling type
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 3);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1); // Wind up for fall
set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_tow_anchor_land")); // asset_get("sfx_swipe_weak1") or sound_get("")
set_window_value(attack, window_num, AG_WINDOW_SFX_FRAME, 1); //get_window_value(attack,window_num,AG_WINDOW_LENGTH)-1);

window_num++;

// Window #9 / Frame(s) # 16-18 / Endlag
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 30);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 16);

window_num++;

//Hitbox Values --------------------------------------------------------------------------
//Set Number of Hitboxes
set_num_hitboxes(attack, 4); // Swap 1 for number of hitboxes

var hitbox_num = 1;
var window_for_hitbox = 1; 

// Hitbox #1 / Window # 2- / Scoop Hitbox
window_for_hitbox = 2; // Set this to change the window that the hitbox comes out at and its length quickly
set_hitbox_value(attack, hitbox_num, 81, "Scoop"); //HG_MUNO_HITBOX_NAME woodcock support index 81
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, 0);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, get_window_value(attack, window_for_hitbox, AG_WINDOW_LENGTH)); // Swap 1 for what ever window this attack is
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 42);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -58);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 44);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 103);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 5);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 4);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 70);
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 14);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(attack, hitbox_num, HG_HIT_LOCKOUT, 10); // Prevent shotgun prkfrom hitting until top
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, hfx_medium);
set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_medium);
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

hitbox_num++;

// Hitbox #2 / Window 7# - / Falling Hitbox
window_for_hitbox = 7; // Set this to change the window that the hitbox comes out at and its length quickly
set_hitbox_value(attack, hitbox_num, 81, "Falling"); //HG_MUNO_HITBOX_NAME woodcock support index 81
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 1);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, get_window_value(attack, window_for_hitbox, AG_WINDOW_LENGTH)); // Swap 1 for what ever window this attack is
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 63);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -51);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 48);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 68);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 5);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 4);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 270);
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, hfx_medium);
set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_medium);
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(attack, hitbox_num, HG_TECHABLE, 3);

hitbox_num++;

// Hitbox #3 / Window #8 - / Shockwave
window_for_hitbox = 8; // Set this to change the window that the hitbox comes out at and its length quickly
set_hitbox_value(attack, hitbox_num, 81, "Shockwave"); //HG_MUNO_HITBOX_NAME woodcock support index 81
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, HG_WINDOW_CREATION_FRAME,2)
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, 2);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, get_window_value(attack, window_for_hitbox, AG_WINDOW_LENGTH)); // Swap 1 for what ever window this attack is
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 59);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -29);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 92);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 56);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 5);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 4);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 45);
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, .95);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, hfx_large);
set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_large);
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

hitbox_num++;

// Hitbox #4 / Window #2 - / Shotgun Proj
window_for_hitbox = 2; // Set this to change the window that the hitbox comes out at and its length quickly
set_hitbox_value(attack, hitbox_num, 81, "Shotgun Proj"); //HG_MUNO_HITBOX_NAME woodcock support index 81
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, HG_WINDOW_CREATION_FRAME, get_window_value(attack, window_for_hitbox, AG_WINDOW_LENGTH) - 1);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, // adds window 3 + 4 + 5
    get_window_value(attack, 3, AG_WINDOW_LENGTH) +
    get_window_value(attack, 4, AG_WINDOW_LENGTH) +
    get_window_value(attack, 5, AG_WINDOW_LENGTH)
    );
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 10);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -70);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 72);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 72);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 5);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 1);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 70);
//set_hitbox_value(attack, hitbox_num, HG_ANGLE_FLIPPER, 4);
//4 = Horizontal knockback sends toward the center of the hitbox
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, hfx_small);
set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_small);
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(attack, hitbox_num, HG_EXTRA_HITPAUSE, 10);

set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_SPRITE, sprite_get("uspecial_proj"));
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_ANIM_SPEED, .25);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_HSPEED, 2);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_VSPEED, -13);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(attack, hitbox_num, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_DESTROY_EFFECT, 0);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_PLASMA_SAFE, 1);

hitbox_num++;