var attack = AT_FINAL_STRONG_THROW; // Swap Taunt for attack that this is

//Attack Values-----------------------------------------------------------------------------
set_attack_value(attack, AG_CATEGORY, 2);
set_attack_value(attack, AG_SPRITE, sprite_get("final_smash_grab"));
set_attack_value(attack, AG_AIR_SPRITE, 0);
set_attack_value(attack, AG_HURTBOX_SPRITE, sprite_get("final_smash_grab_hurt"));
set_attack_value(attack, AG_HURTBOX_AIR_SPRITE, 0);
set_attack_value(attack, AG_NUM_WINDOWS, 6);
set_attack_value(attack, AG_HAS_LANDING_LAG, 0);
set_attack_value(attack, AG_OFF_LEDGE, 1);
set_attack_value(attack, AG_LANDING_LAG, 0);
set_attack_value(attack, AG_STRONG_CHARGE_WINDOW, 0);
set_attack_value(attack, AG_USES_CUSTOM_GRAVITY, 0);

//Window Values-----------------------------------------------------------------------------
var window_num = 1;

// Window #1 / Frame(s) #0-2 / Spawn in
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 9);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 0);

window_num++;

// Window #2 / Frame(s) #3-6 / Start Up
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 12);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 3);

window_num++;

// Window #3 / Frame(s) #7-11 / Looping Curbstomp
set_window_value(attack, window_num, AG_WINDOW_TYPE, 9);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 15);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 7);

window_num++;

// Window #4 / Frame(s) #12-14 / Clone Despawn
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 16);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 12);

window_num++;

// Window #5 / Frame(s) #15 - / Final Hit
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 3);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 15);

window_num++;

// Window #6 / Frame(s) #16 - 19 / Endlag
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 24);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 16);

window_num++;

//Hitbox Values --------------------------------------------------------------------------
//Set Number of Hitboxes
set_num_hitboxes(attack, 5); // Swap 1 for number of hitboxes

var hitbox_num = 1;
var window_for_hitbox = 1;

// Hitbox #1 / Window #3 - / Hit 1
window_for_hitbox = 3; // Set this to change the window that the hitbox comes out at and its length quickly
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, 1);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 50);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -25);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 100);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 50);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 8);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 3);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 4);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, vfx_fire_directional);
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

hitbox_num++;

// Hitbox #2 / Window #3 - / Hit 2
window_for_hitbox = 3; // Set this to change the window that the hitbox comes out at and its length quickly
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, 1);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 50);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -25);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 100);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 50);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 8);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 3);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 4);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, vfx_fire_directional);
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

hitbox_num++;

// Hitbox #3 / Window #3 - / Hit 3
window_for_hitbox = 3; // Set this to change the window that the hitbox comes out at and its length quickly
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, 1);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 50);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -25);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 100);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 50);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 8);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 3);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 4);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, vfx_fire_directional);
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

hitbox_num++;

// Hitbox #4 / Window #3 - / Hit 4
window_for_hitbox = 3; // Set this to change the window that the hitbox comes out at and its length quickly
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, 1);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 50);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -25);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 100);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 50);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 8);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 3);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 4);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, vfx_fire_directional);
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

hitbox_num++;

// Hitbox 5 - Final Hitbox with knockback
window_for_hitbox = 5; 
    set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, -1);
    set_hitbox_value(attack, hitbox_num, HG_SHAPE, 2);
    set_hitbox_value(attack, hitbox_num, HG_LIFETIME, 2); // Swap 1 for what ever window this attack is
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 50);
    set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -25);
    set_hitbox_value(attack, hitbox_num, HG_WIDTH, 100);
    set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 50);
    set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 10);
    set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 6);
    set_hitbox_value(attack, hitbox_num, HG_ANGLE, 45);
    set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 11);
    set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 1.4);
    set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 20);
    set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, 1);
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, vfx_fire_large); // 197 - lightning large
    set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
    set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
hitbox_num++;

