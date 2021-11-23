var atk = 12; // L
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("attack_L"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("attack_L_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 7);

//startup
set_window_value(atk, 1, AG_WINDOW_LENGTH, 8);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(atk, 1, AG_WINDOW_SFX_FRAME, get_window_value(atk, 1, AG_WINDOW_LENGTH)-1);

//active (early)
set_window_value(atk, 2, AG_WINDOW_LENGTH, 3);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(atk, 2, AG_WINDOW_HITPAUSE_FRAME, 4);

//active (falling)
set_window_value(atk, 3, AG_WINDOW_LENGTH, 3);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, 3, AG_WINDOW_HITPAUSE_FRAME, 4);
set_window_value(atk, 3, AG_WINDOW_GOTO, 7); //ends move early unless held

//land shock
set_window_value(atk, 4, AG_WINDOW_LENGTH, 8);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 4, AG_WINDOW_SFX, asset_get("sfx_kragg_rock_shatter"));
set_window_value(atk, 4, AG_WINDOW_SFX_FRAME, 0);

//land endlag
set_window_value(atk, 5, AG_WINDOW_LENGTH, 8);
set_window_value(atk, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, 5, AG_WINDOW_GOTO, 7);

//bounced
set_window_value(atk, 6, AG_WINDOW_LENGTH, 8);
set_window_value(atk, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 6, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 6, AG_WINDOW_SFX, sound_get("yoshi_bounce"));
set_window_value(atk, 6, AG_WINDOW_SFX_FRAME, 0);
set_window_value(atk, 6, AG_WINDOW_HITPAUSE_FRAME, 4);
set_window_value(atk, 6, AG_WINDOW_VSPEED, -8);
set_window_value(atk, 6, AG_WINDOW_VSPEED_TYPE, 1);

//endlag
set_window_value(atk, 7, AG_WINDOW_LENGTH, 8);
set_window_value(atk, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 7, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(atk, 5);

//first hit
set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 1, HG_WINDOW, 2);
set_hitbox_value(atk, 1, HG_LIFETIME, get_window_value(atk, 2, AG_WINDOW_LENGTH));
set_hitbox_value(atk, 1, HG_HITBOX_X, 10);
set_hitbox_value(atk, 1, HG_HITBOX_Y, 0);
set_hitbox_value(atk, 1, HG_WIDTH, 32);
set_hitbox_value(atk, 1, HG_HEIGHT, 50);
set_hitbox_value(atk, 1, HG_SHAPE, 2);
set_hitbox_value(atk, 1, HG_PRIORITY, 2);
set_hitbox_value(atk, 1, HG_DAMAGE, 10);
set_hitbox_value(atk, 1, HG_ANGLE, 270);
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(atk, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(atk, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

//Falling hit
set_hitbox_value(atk, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 2, HG_WINDOW, 3);
set_hitbox_value(atk, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(atk, 2, HG_LIFETIME, 1);
set_hitbox_value(atk, 2, HG_HITBOX_X, 10);
set_hitbox_value(atk, 2, HG_HITBOX_Y, 0);
set_hitbox_value(atk, 2, HG_WIDTH, 32);
set_hitbox_value(atk, 2, HG_HEIGHT, 20);
set_hitbox_value(atk, 2, HG_SHAPE, 2);
set_hitbox_value(atk, 2, HG_PRIORITY, 2);
set_hitbox_value(atk, 2, HG_DAMAGE, 7);
set_hitbox_value(atk, 2, HG_ANGLE, 80);
set_hitbox_value(atk, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, 2, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(atk, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, 2, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(atk, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

//Shockwave hits
set_hitbox_value(atk, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 3, HG_WINDOW, 4);
set_hitbox_value(atk, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(atk, 3, HG_LIFETIME, 5);
set_hitbox_value(atk, 3, HG_HITBOX_X, 0);
set_hitbox_value(atk, 3, HG_HITBOX_Y, -12);
set_hitbox_value(atk, 3, HG_WIDTH, 80);
set_hitbox_value(atk, 3, HG_HEIGHT, 32);
set_hitbox_value(atk, 3, HG_SHAPE, 2);
set_hitbox_value(atk, 3, HG_PRIORITY, 6);
set_hitbox_value(atk, 3, HG_DAMAGE, 6);
set_hitbox_value(atk, 3, HG_ANGLE, 80);
set_hitbox_value(atk, 3, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(atk, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, 3, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(atk, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, 3, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(atk, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(atk, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 4, HG_WINDOW, 4);
set_hitbox_value(atk, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(atk, 4, HG_LIFETIME, 3);
set_hitbox_value(atk, 4, HG_HITBOX_X, 80);
set_hitbox_value(atk, 4, HG_HITBOX_Y, -4);
set_hitbox_value(atk, 4, HG_WIDTH, 160);
set_hitbox_value(atk, 4, HG_HEIGHT, 8);
set_hitbox_value(atk, 4, HG_SHAPE, 1);
set_hitbox_value(atk, 4, HG_PRIORITY, 2);
set_hitbox_value(atk, 4, HG_DAMAGE, 7);
set_hitbox_value(atk, 4, HG_ANGLE, 90);
set_hitbox_value(atk, 4, HG_GROUNDEDNESS, 1);
set_hitbox_value(atk, 4, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(atk, 4, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(atk, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, 4, HG_KNOCKBACK_SCALING, 0.15);
set_hitbox_value(atk, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(atk, 4, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(atk, 4, HG_HIT_SFX, asset_get("sfx_kragg_spike"));

set_hitbox_value(atk, 5, HG_PARENT_HITBOX, 4);
set_hitbox_value(atk, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 5, HG_WINDOW, 4);
set_hitbox_value(atk, 5, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(atk, 5, HG_LIFETIME, 3);
set_hitbox_value(atk, 5, HG_HITBOX_X, -80);
set_hitbox_value(atk, 5, HG_HITBOX_Y, -4);
set_hitbox_value(atk, 5, HG_EXTENDED_PARRY_STUN, 1);

//================================================================
//WORD DATA
set_window_value(UNOWN_ATK.L, 2, AG_UNOWN_WINDOW_ACTIVE, true);
if ("l" not in unown_dictionary) unown_dictionary.l = make_trie_L();
//================================================================
//contains words starting with L
#define make_trie_L()
    return {};