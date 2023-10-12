var attack = AT_FSPECIAL_AIR; // Swap Taunt for attack that this is

//Attack Values-----------------------------------------------------------------------------
set_attack_value(attack, AG_CATEGORY, 2);
set_attack_value(attack, AG_SPRITE, sprite_get("fspecial_air")); //sprite_get("")
set_attack_value(attack, AG_AIR_SPRITE, 0);
set_attack_value(attack, AG_HURTBOX_SPRITE, sprite_get("fspecial_air_hurt")); //sprite_get("_hurt")
set_attack_value(attack, AG_HURTBOX_AIR_SPRITE, 0);
set_attack_value(attack, AG_NUM_WINDOWS, 6);
set_attack_value(attack, AG_HAS_LANDING_LAG, 1);
set_attack_value(attack, AG_OFF_LEDGE, 1);
set_attack_value(attack, AG_LANDING_LAG, 6);
set_attack_value(attack, AG_STRONG_CHARGE_WINDOW, 0);
set_attack_value(attack, AG_USES_CUSTOM_GRAVITY, 1);

set_attack_value(attack, 87, "Can be charged to travel further
Can be jump canceled on the ground during dash.
Has partfall if started in the air");

//Window Values-----------------------------------------------------------------------------
var window_num = 1;

// Window #1 / Frame(s) # 0 / Start Up Charging Loop
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 3);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(attack, window_num, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

window_num++;

// Window #2 / Frame(s) # 0\ / Start Up 
set_window_value(attack, window_num, AG_WINDOW_TYPE, 9);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 3);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(attack, window_num, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

window_num++;

// Window #3 / Frame(s) # 1-3 / Before Speed Apply
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(attack, window_num, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1); 
set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_ell_steam_release")); //  or sound_get("")
set_window_value(attack, window_num, AG_WINDOW_SFX_FRAME, get_window_value(attack,window_num,AG_WINDOW_LENGTH)-1); //get_window_value(attack,window_num,AG_WINDOW_LENGTH)-1);


window_num++;

// Window #4 / Frame(s) # 4- / Apply Speed
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(attack, window_num, AG_WINDOW_HSPEED, 8);
set_window_value(attack, window_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_VSPEED, 0);
set_window_value(attack, window_num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

/*
set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1); 
set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_ell_big_missile_fire")); //  or sound_get("")
set_window_value(attack, window_num, AG_WINDOW_SFX_FRAME, get_window_value(attack,window_num,AG_WINDOW_LENGTH)-1); //get_window_value(attack,window_num,AG_WINDOW_LENGTH)-1);
*/
window_num++;

// Window #5 / Frame(s) # 5-6 / FLying
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 10);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(attack, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(attack, window_num, AG_WINDOW_CUSTOM_AIR_FRICTION, air_friction*2);
set_window_value(attack, window_num, AG_WINDOW_CUSTOM_GROUND_FRICTION, ground_friction/4);
set_window_value(attack, window_num, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed/2);

window_num++;

// Window #6 / Frame(s) # 11-12 / Normal Endlag no hitbox Different for Air version to force pratfall
set_window_value(attack, window_num, AG_WINDOW_TYPE, 7);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 11);

set_window_value(attack, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(attack, window_num, AG_WINDOW_CUSTOM_AIR_FRICTION, air_friction*4);
set_window_value(attack, window_num, AG_WINDOW_CUSTOM_GROUND_FRICTION, ground_friction/4);
set_window_value(attack, window_num, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed/2);

window_num++;

// Window #7 / Frame(s) # 6- Optional Active Hitbox Start Up (may need a new frame)
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(attack, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(attack, window_num, AG_WINDOW_CUSTOM_AIR_FRICTION, air_friction*8);
set_window_value(attack, window_num, AG_WINDOW_CUSTOM_GROUND_FRICTION, ground_friction/2);
set_window_value(attack, window_num, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed/2);

set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1); 
set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_med1")); //  or sound_get("")
set_window_value(attack, window_num, AG_WINDOW_SFX_FRAME, get_window_value(attack,window_num,AG_WINDOW_LENGTH)-1); //get_window_value(attack,window_num,AG_WINDOW_LENGTH)-1);

window_num++;

// Window #8 / Frame(s) # 7- / Optional Active Hitbox
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 3);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(attack, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(attack, window_num, AG_WINDOW_CUSTOM_AIR_FRICTION, air_friction*8);
set_window_value(attack, window_num, AG_WINDOW_CUSTOM_GROUND_FRICTION, ground_friction);
set_window_value(attack, window_num, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed/2);

window_num++;

// Window #9 / Frame(s) # 8-12 / Optional Hitbox Endlag
set_window_value(attack, window_num, AG_WINDOW_TYPE, 7);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 20);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(attack, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(attack, window_num, AG_WINDOW_CUSTOM_AIR_FRICTION, air_friction*8);
set_window_value(attack, window_num, AG_WINDOW_CUSTOM_GROUND_FRICTION, ground_friction);
set_window_value(attack, window_num, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed/2);

window_num++;

//Hitbox Values --------------------------------------------------------------------------
//Set Number of Hitboxes
set_num_hitboxes(attack, 3); // Swap 1 for number of hitboxes

var hitbox_num = 1;
var window_for_hitbox = 1; 

// Hitbox #1 / Window #8 - / Main Hitbox
window_for_hitbox = 8; // Set this to change the window that the hitbox comes out at and its length quickly
set_hitbox_value(attack, hitbox_num, 81, "Optional Swing"); //HG_MUNO_HITBOX_NAME woodcock support index 81
set_hitbox_value(attack, hitbox_num, 92, 
"Can input special again after frame 23 
to do this additional attack, 
start: 6f, active 3f, endlag 20f"); //AG_MUNO_ATTACK_MISC_ADD woodcock support index 87

set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, get_window_value(attack, window_for_hitbox, AG_WINDOW_LENGTH)); // Swap 1 for what ever window this attack is
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 60);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -29);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 68);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 37);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 5);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 7);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 45);
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, 0);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, hfx_medium);
set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_medium);
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

hitbox_num++;

//Hitbox 1 - Window 2 - Shell 1 -----------------------------------------------
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_TYPE, 2); // Sets to a projectile
set_hitbox_value(AT_FSPECIAL_AIR, 2, 80, 1); // Exclude from Woodcock
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WINDOW, 1); // Window the attack Spawns from
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WINDOW_CREATION_FRAME, get_window_value(AT_FSPECIAL_AIR,1,AG_WINDOW_LENGTH) - 1); // Window the attack Spawns from
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_LIFETIME, 120); // Hitbox Lifetime in Frames
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_X, -15); // The x position of the center of the hitbox, relative to the center of the player
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_Y, -60); // The y position of the center of the hitbox, relative to the center of the player
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WIDTH, 14); //The width of the hitbox, in pixels.
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HEIGHT, 8); //The width of the hitbox, in pixels.
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PRIORITY, 0); // Priority score for hitbox.
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_DAMAGE, 0); // Damage dealt by hitbox 
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PROJECTILE_SPRITE, sprite_get("shell")); // Call the sprite without "_strip"
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PROJECTILE_MASK, sprite_get("shell")); // This will overlay hit box to make precise.
//set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PROJECTILE_ANIM_SPEED, .5); // How fast it loops through the animation.
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_IGNORES_PROJECTILES, 1 );
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PROJECTILE_GRAVITY, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PROJECTILE_HSPEED, -1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PROJECTILE_VSPEED, 1);

//Shell 2
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_TYPE, 2); // Sets to a projectile
set_hitbox_value(AT_FSPECIAL_AIR, 3, 80, 1); // Exclude from Woodcock
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_WINDOW, 1); // Window the attack Spawns from
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_WINDOW_CREATION_FRAME, get_window_value(AT_FSPECIAL_AIR,1,AG_WINDOW_LENGTH) - 1); // Window the attack Spawns from
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_LIFETIME, 120); // Hitbox Lifetime in Frames
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_X, -25); // The x position of the center of the hitbox, relative to the center of the player
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_Y, -60); // The y position of the center of the hitbox, relative to the center of the player
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_WIDTH, 14); //The width of the hitbox, in pixels.
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HEIGHT, 8); //The width of the hitbox, in pixels.
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_PRIORITY, 0); // Priority score for hitbox.
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_DAMAGE, 0); // Damage dealt by hitbox 0 to 10.
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_PROJECTILE_SPRITE, sprite_get("shell")); // Call the sprite without "_strip"
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_PROJECTILE_MASK, sprite_get("shell")); // This will overlay hit box to make precise.
//set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_PROJECTILE_ANIM_SPEED, .5); // How fast it loops through the animation.
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_PROJECTILE_WALL_BEHAVIOR , 2);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_IGNORES_PROJECTILES, 1 );
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_PROJECTILE_GRAVITY, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_PROJECTILE_HSPEED, -1); // How much the hit box moves, should be Slow or zero for this attack.
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_PROJECTILE_VSPEED, 1);