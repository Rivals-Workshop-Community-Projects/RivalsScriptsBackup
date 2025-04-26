var attack = AT_DSPECIAL_AIR; // Swap Taunt for attack that this is

//Attack Values-----------------------------------------------------------------------------
set_attack_value(attack, AG_CATEGORY, 2);
set_attack_value(attack, AG_SPRITE, sprite_get("dspecial_air"));
set_attack_value(attack, AG_AIR_SPRITE, 0);
set_attack_value(attack, AG_HURTBOX_SPRITE, sprite_get("dspecial_air_hurt"));
set_attack_value(attack, AG_HURTBOX_AIR_SPRITE, 0);
set_attack_value(attack, AG_NUM_WINDOWS, 5);
set_attack_value(attack, AG_HAS_LANDING_LAG, 1);
set_attack_value(attack, AG_OFF_LEDGE, 1);
set_attack_value(attack, AG_LANDING_LAG, 15);
set_attack_value(attack, AG_STRONG_CHARGE_WINDOW, 0);
set_attack_value(attack, AG_USES_CUSTOM_GRAVITY, 0);
set_attack_value(attack, 87, "-Refreshes Double Jump once per airtime.");//AG_MUNO_ATTACK_MISC_ADD 

//Window Values-----------------------------------------------------------------------------
var window_num = 1;

// Window #1 / Frame(s) # 0-1 / Slowdown
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(attack, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(attack, window_num, AG_WINDOW_CUSTOM_GROUND_FRICTION, .5);
set_window_value(attack, window_num, AG_WINDOW_HSPEED, 0);
set_window_value(attack, window_num, AG_WINDOW_VSPEED, 0);
set_window_value(attack, window_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1); 
set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_absa_cloud_crackle")); // asset_get("") or sound_get("")
set_window_value(attack, window_num, AG_WINDOW_SFX_FRAME, 1);

window_num++;

// Window #2 / Frame(s) # 2-3 / Start Up
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(attack, window_num, AG_WINDOW_HSPEED, 0);
set_window_value(attack, window_num, AG_WINDOW_VSPEED, 0);
set_window_value(attack, window_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1); 
set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_ori_glide_start")); // asset_get("") or sound_get("")
set_window_value(attack, window_num, AG_WINDOW_SFX_FRAME, 0);

window_num++;

// Window #3 / Frame(s) #4 / Active Hitbox Strong Box
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 1);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(attack, window_num, AG_WINDOW_HSPEED, 3);
set_window_value(attack, window_num, AG_WINDOW_VSPEED, 7);
set_window_value(attack, window_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_VSPEED_TYPE, 1);
//set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1); 
//set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_absa_dattack")); // asset_get("") or sound_get("") 

window_num++;

// Window #4 / Frame(s) # 5-7 / Active Hitbox Late Hit Grab
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(attack, window_num, AG_WINDOW_VSPEED, 7);
set_window_value(attack, window_num, AG_WINDOW_VSPEED_TYPE, 1);

window_num++;

// Window #5 / Frame(s) # 8-10 / Endlag Air
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 10);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 8);

window_num++;

// Ground Endlag

// Window #6 / Frame(s) # 11-15 / Custom Landing Lag
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 20);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1); 
set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_land_heavy")); // asset_get("sfx_swipe_medium1") or sound_get("")
set_window_value(attack, window_num, AG_WINDOW_SFX_FRAME, 0);

window_num++;


//Hitbox Values --------------------------------------------------------------------------
//Set Number of Hitboxes
set_num_hitboxes(attack, 4); // Swap 1 for number of hitboxes

var hitbox_num = 1;
var window_for_hitbox = 1; 

//1 Strong Hitbox for Kick
window_for_hitbox = 3;
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, get_window_value(attack, window_for_hitbox, AG_WINDOW_LENGTH)); // Swap 1 for what ever window this attack is
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 28);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, 0);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 50);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 50);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 5);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 1);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 270);
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, 197); //197 - lightning large
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_clairen_nspecial_grab_success"));
set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_paw);
set_hitbox_value(attack, hitbox_num, 81, "Start Up Grab Hitbox");//HG_MUNO_HITBOX_NAME
set_hitbox_value(attack, hitbox_num, 92, "Hitting this will start the down special Grab.
Has Kb in case of trade.");//HG_MUNO_HITBOX_MISC_ADD
hitbox_num++;

//2 Sweetspot Hit Grab cannot hit if strong start up hits
window_for_hitbox = 4;
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, get_window_value(attack, window_for_hitbox, AG_WINDOW_LENGTH)); // Swap 1 for what ever window this attack is
//set_hitbox_value(attack, hitbox_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 28);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, 2);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 40);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 40);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 4);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 1);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 270); // In case of trade
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 6); // In case of trade
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, 197); //197 - lightning large
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_clairen_nspecial_grab_success"));
set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_paw);
set_hitbox_value(attack, hitbox_num, 81, "Traveling Grab Hitbox");//HG_MUNO_HITBOX_NAME
set_hitbox_value(attack, hitbox_num, 92, "Same as Above");//HG_MUNO_HITBOX_MISC_ADD = i; i++;

hitbox_num++;

// Hitbox #3 / Window # 6- / Weak Shockwave Hitbox Front
window_for_hitbox = 6; // Set this to change the window that the hitbox comes out at and its length quickly
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, 2);
set_hitbox_value(attack, hitbox_num, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, 4); // Swap 1 for what ever window this attack is
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 54);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -16);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 35);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 35);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 5);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 4);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 70);
set_hitbox_value(attack, hitbox_num, HG_ANGLE_FLIPPER, 6); // 6 = Horizontal knockback sends away from the enemy player
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, 302); //302 - basic small with spin effect in center
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_waterelectric);
set_hitbox_value(attack, hitbox_num, 81, "Shockwave Front");//HG_MUNO_HITBOX_NAME
set_hitbox_value(attack, hitbox_num, 92, "Only spawns if ground hit for shockwave");//HG_MUNO_HITBOX_MISC_ADD = i; i++;

hitbox_num++;

// Hitbox #4 / Window # 6- / Weak Shockwave Hitbox Back
window_for_hitbox = 6; // Set this to change the window that the hitbox comes out at and its length quickly
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, 2);
set_hitbox_value(attack, hitbox_num, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, 4); // Swap 1 for what ever window this attack is
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, -58);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -16);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 35);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 35);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 4);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 3);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 110);
set_hitbox_value(attack, hitbox_num, HG_ANGLE_FLIPPER, 6); // 6 = Horizontal knockback sends away from the enemy player
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, 302); //302 - basic small with spin effect in center
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_waterelectric);
set_hitbox_value(attack, hitbox_num, 81, "Shockwave Back");//HG_MUNO_HITBOX_NAME
set_hitbox_value(attack, hitbox_num, 92, "Only spawns if ground hit for shockwave");//HG_MUNO_HITBOX_MISC_ADD = i; i++;

hitbox_num++;