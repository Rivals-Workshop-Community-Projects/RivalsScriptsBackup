var atk = 10; // J
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("attack_J"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("attack_J_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 6);

//Startup
set_window_value(atk, 1, AG_WINDOW_LENGTH, 8);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(atk, 1, AG_WINDOW_SFX_FRAME, get_window_value(atk, 1, AG_WINDOW_LENGTH) - 1);
//Active
set_window_value(atk, 2, AG_WINDOW_LENGTH, 12);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 1);
//Endlag (on miss grab)
set_window_value(atk, 3, AG_WINDOW_LENGTH, 12);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, 3, AG_WINDOW_GOTO, 9); //ends move

//grab: swing
set_window_value(atk, 4, AG_WINDOW_LENGTH, 9);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(atk, 4, AG_WINDOW_HITPAUSE_FRAME, 6);
set_window_value(atk, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 4, AG_WINDOW_SFX, sound_get("rse_throw"));
set_window_value(atk, 4, AG_WINDOW_SFX_FRAME, 3);
//grab: eject
set_window_value(atk, 5, AG_WINDOW_LENGTH, 4);
set_window_value(atk, 5, AG_WINDOW_HSPEED, 1);
set_window_value(atk, 5, AG_WINDOW_VSPEED, -3);
set_window_value(atk, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 5, AG_WINDOW_ANIM_FRAME_START, 10);
//grab: endlag
set_window_value(atk, 6, AG_WINDOW_LENGTH, 24);
set_window_value(atk, 6, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, 6, AG_WINDOW_ANIM_FRAME_START, 11);

set_num_hitboxes(atk, 2);

set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 1, HG_WINDOW, 2);
set_hitbox_value(atk, 1, HG_LIFETIME, 12);
set_hitbox_value(atk, 1, HG_HITBOX_X, -16);
set_hitbox_value(atk, 1, HG_HITBOX_Y, 16);
set_hitbox_value(atk, 1, HG_WIDTH, 40);
set_hitbox_value(atk, 1, HG_HEIGHT, 48);
set_hitbox_value(atk, 1, HG_PRIORITY, 2);
set_hitbox_value(atk, 1, HG_DAMAGE, 5);
set_hitbox_value(atk, 1, HG_ANGLE, 90);
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(atk, 1, HG_TECHABLE, 3);
set_hitbox_value(atk, 1, HG_HITPAUSE_SCALING, .0);
set_hitbox_value(atk, 1, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(atk, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(atk, 1, HG_VISUAL_EFFECT, 0);

//grabbed victim's target positions during window 4
unown_j_positions[0] = { x: -16, y:  16 };
unown_j_positions[1] = { x: -28, y:  12 };
unown_j_positions[2] = { x: -40, y:   4 };
unown_j_positions[3] = { x: -50, y:  -8 };
unown_j_positions[4] = { x: -54, y: -22 };
unown_j_positions[5] = { x: -56, y: -38 };
unown_j_positions[6] = { x: -52, y: -50 };
unown_j_positions[7] = { x: -42, y: -62 };
unown_j_positions[8] = { x: -36, y: -68 };

//grab eject
set_hitbox_value(atk, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 2, HG_WINDOW, 5);
set_hitbox_value(atk, 2, HG_LIFETIME, 2);
set_hitbox_value(atk, 2, HG_HITBOX_X, -36);
set_hitbox_value(atk, 2, HG_HITBOX_Y, -68);
set_hitbox_value(atk, 2, HG_WIDTH, 6);
set_hitbox_value(atk, 2, HG_HEIGHT, 6);
set_hitbox_value(atk, 2, HG_PRIORITY, 3);
set_hitbox_value(atk, 2, HG_DAMAGE, 2);
set_hitbox_value(atk, 2, HG_ANGLE, 70);
set_hitbox_value(atk, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, 2, HG_KNOCKBACK_SCALING, .40);
set_hitbox_value(atk, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(atk, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(atk, 2, HG_HITBOX_GROUP, 1);

//================================================================
//WORD DATA
set_window_value(UNOWN_ATK.J, 2, AG_UNOWN_WINDOW_ACTIVE, true);
if ("j" not in unown_dictionary) unown_dictionary.j = make_trie_J();
//================================================================
//contains words starting with H
#define make_trie_J()
    return {};