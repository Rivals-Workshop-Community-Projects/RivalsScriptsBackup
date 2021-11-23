var atk = 8; // H
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("attack_H"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("attack_H_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 3);

set_window_value(atk, 1, AG_WINDOW_LENGTH, 6);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(atk, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(atk, 2, AG_WINDOW_LENGTH, 6);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(atk, 3, AG_WINDOW_LENGTH, 16);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(atk, 2);

set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 1, HG_WINDOW, 2);
set_hitbox_value(atk, 1, HG_LIFETIME, 6);
set_hitbox_value(atk, 1, HG_HITBOX_X, -36);
set_hitbox_value(atk, 1, HG_HITBOX_Y, -32);
set_hitbox_value(atk, 1, HG_WIDTH, 64);
set_hitbox_value(atk, 1, HG_HEIGHT, 50);
set_hitbox_value(atk, 1, HG_PRIORITY, 2);
set_hitbox_value(atk, 1, HG_DAMAGE, 5);
set_hitbox_value(atk, 1, HG_ANGLE, 55);
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, .15);
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(atk, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(atk, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 2, HG_WINDOW, 2);
set_hitbox_value(atk, 2, HG_LIFETIME, 6);
set_hitbox_value(atk, 2, HG_HITBOX_X, 36);
set_hitbox_value(atk, 2, HG_HITBOX_Y, -32);
set_hitbox_value(atk, 2, HG_WIDTH, 64);
set_hitbox_value(atk, 2, HG_HEIGHT, 50);
set_hitbox_value(atk, 2, HG_PRIORITY, 2);
set_hitbox_value(atk, 2, HG_DAMAGE, 5);
set_hitbox_value(atk, 2, HG_ANGLE, 125);
set_hitbox_value(atk, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, 2, HG_KNOCKBACK_SCALING, .15);
set_hitbox_value(atk, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, 2, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(atk, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

//================================================================
//WORD DATA
set_window_value(UNOWN_ATK.H, 2, AG_UNOWN_WINDOW_ACTIVE, true);
if ("h" not in unown_dictionary) unown_dictionary.h = make_trie_H();
//================================================================
//contains words starting with H
#define make_trie_H()
    return {};