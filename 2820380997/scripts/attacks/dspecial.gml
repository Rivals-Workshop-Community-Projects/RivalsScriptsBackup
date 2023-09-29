var attack = AT_DSPECIAL; // Swap Taunt for attack that this is

//Attack Values-----------------------------------------------------------------------------
set_attack_value(attack, AG_CATEGORY, 2);
set_attack_value(attack, AG_SPRITE, sprite_get("dspecial")); //sprite_get("")
set_attack_value(attack, AG_AIR_SPRITE, 0);
set_attack_value(attack, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt")); //sprite_get("_hurt")
set_attack_value(attack, AG_HURTBOX_AIR_SPRITE, 0);
set_attack_value(attack, AG_NUM_WINDOWS, 3);
set_attack_value(attack, AG_HAS_LANDING_LAG, 0);
set_attack_value(attack, AG_OFF_LEDGE, 0);
set_attack_value(attack, AG_LANDING_LAG, 0);
set_attack_value(attack, AG_STRONG_CHARGE_WINDOW, 0);
set_attack_value(attack, AG_USES_CUSTOM_GRAVITY, 0);
set_attack_value(attack, 87, "Can input up on joystick to do an upwards angled grab. Clone will also use this move on input. Clone can do it while the real Roekoko is in any other state other than hitstun. Grab the opponent while the clone is grabbing them for the boosted version of this attack.");//AG_MUNO_ATTACK_MISC_ADD

//Window Values-----------------------------------------------------------------------------
var window_num = 1;

// Window #1 / Frame(s) # 0-2 / Start Up
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 7);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1); 
set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1")); // asset_get("") or sound_get("")
set_window_value(attack, window_num, AG_WINDOW_SFX_FRAME, get_window_value(attack,window_num,AG_WINDOW_LENGTH)-1); //get_window_value(attack,window_num,AG_WINDOW_LENGTH)-1);
window_num++;

// Window #2 / Frame(s) # 3- / Active Frames
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 3);

window_num++;

// Window #3 / Frame(s) # 4-7 / Description
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 12);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(attack, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);
window_num++;

//Hitbox Values --------------------------------------------------------------------------
//Set Number of Hitboxes
set_num_hitboxes(attack, 2); // Swap 1 for number of hitboxes

var hitbox_num = 1;
var window_for_hitbox = 1; 

// Hitbox #1 / Window #2 - / Description
window_for_hitbox = 2; // Set this to change the window that the hitbox comes out at and its length quickly
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, get_window_value(attack, window_for_hitbox, AG_WINDOW_LENGTH)); // Swap 1 for what ever window this attack is
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 35);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -26);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 54);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 24);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 5);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 1);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, vfx_fire_paw);
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_clairen_nspecial_grab_success"));
set_hitbox_value(attack, hitbox_num, HG_HIT_LOCKOUT, 3);
set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_fire_small);
set_hitbox_value(attack, hitbox_num, 81, "Roekoko's Hitbox");//HG_MUNO_HITBOX_NAME = i; i++;	

hitbox_num++;

// Hitbox #2 / Window #2 - / Clone Hitbox
window_for_hitbox = 2; // Set this to change the window that the hitbox comes out at and its length quickly
set_hitbox_value(attack, hitbox_num, HG_WINDOW, 0);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, 3);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 35);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -100);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 54);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 24);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 5);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 1);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, vfx_fire_paw);
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_clairen_nspecial_grab_success"));
set_hitbox_value(attack, hitbox_num, HG_HIT_LOCKOUT, 3);
set_hitbox_value(attack, hitbox_num, HG_EXTENDED_PARRY_STUN, 1);

set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR, 1); //1 = Goes through Walls
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1); //1 = Goes through Ground
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1); //1 = Goes through enemies
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_fire_small);
set_hitbox_value(attack, hitbox_num, 81, "Clone's Hitbox");//HG_MUNO_HITBOX_NAME = i; i++;

hitbox_num++;