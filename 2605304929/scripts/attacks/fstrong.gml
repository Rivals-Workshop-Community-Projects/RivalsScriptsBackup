var attack = AT_FSTRONG; // Swap Taunt for attack that this is

//Attack Values-----------------------------------------------------------------------------
set_attack_value(attack, AG_CATEGORY, 0);
set_attack_value(attack, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(attack, AG_AIR_SPRITE, 0);
set_attack_value(attack, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(attack, AG_HURTBOX_AIR_SPRITE, 0);
set_attack_value(attack, AG_NUM_WINDOWS, 5);
set_attack_value(attack, AG_HAS_LANDING_LAG, 0);
set_attack_value(attack, AG_OFF_LEDGE, 0);
set_attack_value(attack, AG_LANDING_LAG, 0);
set_attack_value(attack, AG_STRONG_CHARGE_WINDOW, 2);
set_attack_value(attack, AG_USES_CUSTOM_GRAVITY, 0);
set_attack_value(attack, 87, "Sets Water Mark Status on opponent on hit.");//AG_MUNO_ATTACK_MISC_ADD 

//Window Values-----------------------------------------------------------------------------
var window_num = 1;

// Window #1 / Frame(s) # 0-1 / Start up
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 0);

window_num++;

// Window #2 / Frame(s) # 2- / Charge Frame
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 2);

window_num++;

// Window #3 / Frame(s) # 3-7 / Before Hitbox
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 10);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1); 
set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2")); // asset_get("") or sound_get("")
set_window_value(attack, window_num, AG_WINDOW_SFX_FRAME, get_window_value(attack,window_num,AG_WINDOW_LENGTH) -1);
set_window_value(attack, window_num, AG_WINDOW_HSPEED, 7);
set_window_value(attack, window_num, AG_WINDOW_HSPEED_TYPE, 0);

window_num++;

// Window #4 / Frame(s) # 8- / Hitbox
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1); 
set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_shovel_dig")); // asset_get("") or sound_get("")
set_window_value(attack, window_num, AG_WINDOW_SFX_FRAME, get_window_value(attack,window_num,AG_WINDOW_LENGTH)-1);//);

window_num++;

// Window #5 / Frame(s) # 9-12 / Endlag
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 12);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(attack, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);


window_num++;

//Hitbox Values --------------------------------------------------------------------------
//Set Number of Hitboxes
set_num_hitboxes(attack, 2); // Swap 1 for number of hitboxes

var hitbox_num = 1;
var window_for_hitbox = 1; 

//Top Hitbox
window_for_hitbox = 4; // Set this to change the window that the hitbox comes out at and its length quickly
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, get_window_value(attack, window_for_hitbox, AG_WINDOW_LENGTH)); // Swap 1 for what ever window this attack is
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 30);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -84);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 76);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 25);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 5);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 10);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 270);
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(attack, hitbox_num, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(attack, hitbox_num, HG_TECHABLE, 1);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, hitfx_large_elec); // // 304 - basic large
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_waterelectric);
set_hitbox_value(attack, hitbox_num, 81, "Top Hitbox");//HG_MUNO_HITBOX_NAME
set_hitbox_value(attack, hitbox_num, 92, "Sets water mark status on hit");//HG_MUNO_HITBOX_MISC_ADD

hitbox_num++;

// Bottom hitbox / spike
window_for_hitbox = 4; // Set this to change the window that the hitbox comes out at and its length quickly
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, get_window_value(attack, window_for_hitbox, AG_WINDOW_LENGTH)); // Swap 1 for what ever window this attack is
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 39);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -37);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 80);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 76);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 7);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 10);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 270);
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(attack, hitbox_num, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, hitfx_large_elec); // 304 - basic large
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(attack, hitbox_num, HG_TECHABLE, 1);
set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_waterelectric);
set_hitbox_value(attack, hitbox_num, 81, "Bottom Hitbox");//HG_MUNO_HITBOX_NAME
set_hitbox_value(attack, hitbox_num, 92, "Sets water mark status on hit");//HG_MUNO_HITBOX_MISC_ADD
hitbox_num++;