var atk = 2; // B
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("attack_B"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("attack_B_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 6);

//startup
set_window_value(atk, 1, AG_WINDOW_LENGTH, 8);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(atk, 1, AG_WINDOW_SFX_FRAME, 7);

//active (early)
set_window_value(atk, 2, AG_WINDOW_LENGTH, 4);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 1);

//active (falling)
set_window_value(atk, 3, AG_WINDOW_LENGTH, 3);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, 3, AG_WINDOW_GOTO, 6); //ends move early unless held

//Bounce
set_window_value(atk, 4, AG_WINDOW_LENGTH, 8);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 4, AG_WINDOW_SFX, asset_get("sfx_frog_nspecial_shove"));
set_window_value(atk, 4, AG_WINDOW_SFX_FRAME, 7);

//Bounce Active
set_window_value(atk, 5, AG_WINDOW_LENGTH, 15);
set_window_value(atk, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, 5, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, 5, AG_WINDOW_VSPEED, -13);

//Endlag
set_window_value(atk, 6, AG_WINDOW_LENGTH, 8);
set_window_value(atk, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 6, AG_WINDOW_ANIM_FRAME_START, 7);

set_num_hitboxes(atk, 3);

//first hit
set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 1, HG_WINDOW, 2);
set_hitbox_value(atk, 1, HG_LIFETIME, 4);
set_hitbox_value(atk, 1, HG_HITBOX_Y, 2);
set_hitbox_value(atk, 1, HG_WIDTH, 48);
set_hitbox_value(atk, 1, HG_HEIGHT, 48);
set_hitbox_value(atk, 1, HG_PRIORITY, 2);
set_hitbox_value(atk, 1, HG_DAMAGE, 6);
set_hitbox_value(atk, 1, HG_ANGLE, 85);
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, .15);
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(atk, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(atk, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

//Falling hit
set_hitbox_value(atk, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 2, HG_WINDOW, 3);
set_hitbox_value(atk, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(atk, 2, HG_LIFETIME, 1);
set_hitbox_value(atk, 2, HG_WIDTH, 40);
set_hitbox_value(atk, 2, HG_HEIGHT, 40);
set_hitbox_value(atk, 2, HG_PRIORITY, 2);
set_hitbox_value(atk, 2, HG_DAMAGE, 2);
set_hitbox_value(atk, 2, HG_ANGLE, 75);
set_hitbox_value(atk, 2, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(atk, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(atk, 2, HG_KNOCKBACK_SCALING, .85);
set_hitbox_value(atk, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(atk, 2, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(atk, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

//Rising hit
set_hitbox_value(atk, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 3, HG_WINDOW, 5);
set_hitbox_value(atk, 3, HG_LIFETIME, 12);
set_hitbox_value(atk, 3, HG_HITBOX_Y, -32);
set_hitbox_value(atk, 3, HG_WIDTH, 48);
set_hitbox_value(atk, 3, HG_HEIGHT, 48);
set_hitbox_value(atk, 3, HG_PRIORITY, 2);
set_hitbox_value(atk, 3, HG_DAMAGE, 6);
set_hitbox_value(atk, 3, HG_ANGLE, 90);
set_hitbox_value(atk, 3, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(atk, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, 3, HG_KNOCKBACK_SCALING, .85);
set_hitbox_value(atk, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, 3, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(atk, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(atk, 3, HG_HITBOX_GROUP, 2);


//================================================================
//WORD DATA
set_window_value(UNOWN_ATK.B, 2, AG_UNOWN_WINDOW_ACTIVE, true);
if ("b" not in unown_dictionary) unown_dictionary.b = make_trie();
//================================================================
//contains words starting with A
#define make_trie()
    return {};