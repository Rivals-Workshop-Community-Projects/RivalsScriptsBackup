var atk = 21; // U
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("attack_U"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("attack_U_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 3);

set_window_value(atk, 1, AG_WINDOW_LENGTH, 12);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(atk, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(atk, 2, AG_WINDOW_LENGTH, 3);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(atk, 3, AG_WINDOW_LENGTH, 6);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(atk, 3, AG_WINDOW_LENGTH, 16);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_num_hitboxes(atk, 2);

//Early hit
set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 1, HG_WINDOW, 2);
set_hitbox_value(atk, 1, HG_LIFETIME, 3);
set_hitbox_value(atk, 1, HG_HITBOX_Y, 0);
set_hitbox_value(atk, 1, HG_WIDTH, 24);
set_hitbox_value(atk, 1, HG_HEIGHT, 24);
set_hitbox_value(atk, 1, HG_PRIORITY, 6);
set_hitbox_value(atk, 1, HG_DAMAGE, 6);
set_hitbox_value(atk, 1, HG_ANGLE, 270);
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, 0.55);
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, 1, HG_HITPAUSE_SCALING, .55);
set_hitbox_value(atk, 1, HG_HIT_SFX, sound_get("ssbb_bumper"));
set_hitbox_value(atk, 1, HG_HITBOX_GROUP, 0);

//Late hit
set_hitbox_value(atk, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 2, HG_WINDOW, 3);
set_hitbox_value(atk, 2, HG_LIFETIME, 6);
set_hitbox_value(atk, 2, HG_HITBOX_Y, -6);
set_hitbox_value(atk, 2, HG_WIDTH, 80);
set_hitbox_value(atk, 2, HG_HEIGHT, 40);
set_hitbox_value(atk, 2, HG_PRIORITY, 3);
set_hitbox_value(atk, 2, HG_DAMAGE, 4);
set_hitbox_value(atk, 2, HG_ANGLE, 50);
set_hitbox_value(atk, 2, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(atk, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(atk, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(atk, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(atk, 2, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(atk, 2, HG_HIT_SFX, sound_get("ssbb_bumper"));

//================================================================
//WORD DATA
set_window_value(UNOWN_ATK.U, 2, AG_UNOWN_WINDOW_ACTIVE, true);
if ("u" not in unown_dictionary) unown_dictionary.u = make_trie_U();
//================================================================
//contains words starting with U
#define make_trie_U()
    return {};