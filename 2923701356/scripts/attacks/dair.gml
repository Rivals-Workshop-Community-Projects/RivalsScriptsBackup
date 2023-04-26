//AT_DAIR Values-----------------------------------------------------------------------------
set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair")); //sprite_get("")
set_attack_value(AT_DAIR, AG_AIR_SPRITE, 0);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt")); //sprite_get("_hurt")
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 6);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 7);
set_attack_value(AT_DAIR, AG_USES_CUSTOM_GRAVITY, 0);

//Window Values-----------------------------------------------------------------------------
var window_num = 1;

// Window 1 / Frame(s) 1 - 2 / Startup
set_window_value(AT_DAIR, window_num, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, window_num, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DAIR, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, window_num, AG_WINDOW_SFX, asset_get("sfx_ori_stomp_spin")); // asset_get("") or sound_get("")
set_window_value(AT_DAIR, window_num, AG_WINDOW_SFX_FRAME, 4); //get_window_value(AT_DAIR,window_num,AG_WINDOW_LENGTH)-1);

window_num++;

// Window 2 / Frame(s) 3 / Active
set_window_value(AT_DAIR, window_num, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DAIR, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, window_num, AG_WINDOW_ANIM_FRAME_START, 2);

window_num++;

// Window 3 / Frame(s) 4 - 7 / Endlag
set_window_value(AT_DAIR, window_num, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DAIR, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, window_num, AG_WINDOW_ANIM_FRAME_START, 7);

window_num++;

// Window 3 / Frame(s) 4 - 7 / Endlag
set_window_value(AT_DAIR, window_num, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DAIR, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, window_num, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DAIR, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, window_num, AG_WINDOW_SFX, sound_get("swipe_down")); // asset_get("") or sound_get("")
 //get_window_value(AT_DAIR,window_num,AG_WINDOW_LENGTH)-1);

window_num++;

set_window_value(AT_DAIR, window_num, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, window_num, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, window_num, AG_WINDOW_ANIM_FRAME_START, 10);

window_num++;

// Window 3 / Frame(s) 4 - 7 / Endlag
set_window_value(AT_DAIR, window_num, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, window_num, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DAIR, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, window_num, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DAIR, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);
//Hitbox Values --------------------------------------------------------------------------
//Set Number of Hitboxes
set_num_hitboxes(AT_DAIR, 2); // Swap 1 for number of hitboxes

//Set Hitbox Values - This is the basic block of a functional hitbox
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, -1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 2); // Swap 1 for what ever window this AT_DAIR is
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 3);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 52);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 58);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 290);
set_hitbox_value(AT_DAIR, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DAIR, 1, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DAIR, 1, HG_HITSTUN_MULTIPLIER, 0.5);

set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 5);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 3); // Swap 1 for what ever window this AT_DAIR is
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 6);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 66);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 62);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DAIR, 2, HG_HITSTUN_MULTIPLIER, 1);
