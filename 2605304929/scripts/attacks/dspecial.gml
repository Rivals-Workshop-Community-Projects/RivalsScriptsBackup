var attack = AT_DSPECIAL; // Swap Taunt for attack that this is

//Attack Values-----------------------------------------------------------------------------
set_attack_value(attack, AG_CATEGORY, 2);
set_attack_value(attack, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(attack, AG_AIR_SPRITE, 0);
set_attack_value(attack, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(attack, AG_HURTBOX_AIR_SPRITE, 0);
set_attack_value(attack, AG_NUM_WINDOWS, 5);
set_attack_value(attack, AG_HAS_LANDING_LAG, 0);
set_attack_value(attack, AG_OFF_LEDGE, 1);
set_attack_value(attack, AG_LANDING_LAG, 0);
set_attack_value(attack, AG_STRONG_CHARGE_WINDOW, 0);
set_attack_value(attack, AG_USES_CUSTOM_GRAVITY, 0);
set_attack_value(attack, 87, "Refreshes Double Jump once per airtime.");//AG_MUNO_ATTACK_MISC_ADD 

//Window Values-----------------------------------------------------------------------------
var window_num = 1;

// Window #1 / Frame(s) # 0-1 / Slowdown
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 0);
//set_window_value(attack, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(attack, window_num, AG_WINDOW_CUSTOM_GROUND_FRICTION, .5);
set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1); 
set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_absa_cloud_crackle")); // asset_get("") or sound_get("")
set_window_value(attack, window_num, AG_WINDOW_SFX_FRAME, 0);

window_num++;

// Window #2 / Frame(s) # 2-7 / Start Up
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 10);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1); 
set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_ori_glide_start")); // asset_get("") or sound_get("")
set_window_value(attack, window_num, AG_WINDOW_SFX_FRAME, 0);

window_num++;

// Window #3 / Frame(s) #8-9 / Large Box
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 1);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(attack, window_num, AG_WINDOW_HSPEED, 14);
set_window_value(attack, window_num, AG_WINDOW_VSPEED, 0);
set_window_value(attack, window_num, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(attack, window_num, AG_WINDOW_VSPEED_TYPE, 2);
//set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1); 
//set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_absa_dattack")); // asset_get("") or sound_get("") 

window_num++;

// Window #4 / Frame(s) #10-11 / Traveling Box
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 10);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(attack, window_num, AG_WINDOW_HSPEED, 0);
set_window_value(attack, window_num, AG_WINDOW_VSPEED, 0);
set_window_value(attack, window_num, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(attack, window_num, AG_WINDOW_VSPEED_TYPE, 1);

//set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1); 
//set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_absa_dattack")); // asset_get("") or sound_get("") 

window_num++;

// Window #5 / Frame(s) # 12-15 / Endlag
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 26);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(attack, window_num, AG_WINDOW_HSPEED, 0);
set_window_value(attack, window_num, AG_WINDOW_VSPEED, 0);
set_window_value(attack, window_num, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(attack, window_num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(attack, window_num, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
set_window_value(attack, window_num, AG_WINDOW_CUSTOM_GROUND_FRICTION, .6); // Default

window_num++;


//Hitbox Values --------------------------------------------------------------------------
//Set Number of Hitboxes
set_num_hitboxes(attack, 2); // Swap 1 for number of hitboxes

var hitbox_num = 1;
var window_for_hitbox = 1; 

//Larger Hitbox at Start
window_for_hitbox = 3;
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, get_window_value(attack, window_for_hitbox, AG_WINDOW_LENGTH)); // Swap 1 for what ever window this attack is
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 40);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -23);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 70);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 48);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 5);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 1);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 45); // In case she trades
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 7); // In case she trades
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 0); 
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, 302); //197 - lightning large
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_clairen_nspecial_grab_success"));
set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_paw);
set_hitbox_value(attack, hitbox_num, 81, "Start up Hitbox Grab");//HG_MUNO_HITBOX_NAME
set_hitbox_value(attack, hitbox_num, 92, "Hitting this will start the down special Grab.
Has some fixed KB incase she trades.");//HG_MUNO_HITBOX_MISC_ADD
hitbox_num++;

//weak traveling hitbox
window_for_hitbox = 4;
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, get_window_value(attack, window_for_hitbox, AG_WINDOW_LENGTH)); // Swap 1 for what ever window this attack is
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 43);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -20);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 40);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 40);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 4);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 1);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 45); // In case she trades
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 7); // In case she trades
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, 302); //302 - basic small with spin effect in center
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_clairen_nspecial_grab_success"));
set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_paw);
set_hitbox_value(attack, hitbox_num, 81, "Travel Hitbox Grab");//HG_MUNO_HITBOX_NAME
set_hitbox_value(attack, hitbox_num, 92, "Same as above");//HG_MUNO_HITBOX_MISC_ADD = i; i++;

hitbox_num++;
