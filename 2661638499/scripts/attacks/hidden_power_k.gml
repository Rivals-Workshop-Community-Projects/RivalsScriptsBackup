var atk = 11; // K
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("attack_K"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("attack_K_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 3);

set_window_value(atk, 1, AG_WINDOW_LENGTH, 8);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(atk, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(atk, 2, AG_WINDOW_LENGTH, 6);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(atk, 3, AG_WINDOW_LENGTH, 12);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(atk, 2);

set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 1, HG_WINDOW, 2);
set_hitbox_value(atk, 1, HG_LIFETIME, 6);
set_hitbox_value(atk, 1, HG_HITBOX_Y, -32);
set_hitbox_value(atk, 1, HG_WIDTH, 12);
set_hitbox_value(atk, 1, HG_HEIGHT, 96);
set_hitbox_value(atk, 1, HG_SHAPE, 1);
set_hitbox_value(atk, 1, HG_PRIORITY, 2);
set_hitbox_value(atk, 1, HG_DAMAGE, 8);
set_hitbox_value(atk, 1, HG_ANGLE, 90);
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, .95);
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, 1, HG_HITPAUSE_SCALING, .55);
set_hitbox_value(atk, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(atk, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 2, HG_WINDOW, 2);
set_hitbox_value(atk, 2, HG_LIFETIME, 6);
set_hitbox_value(atk, 2, HG_HITBOX_X, 24);
set_hitbox_value(atk, 2, HG_HITBOX_Y, -32);
set_hitbox_value(atk, 2, HG_WIDTH, 36);
set_hitbox_value(atk, 2, HG_HEIGHT, 48);
set_hitbox_value(atk, 2, HG_SHAPE, 1);
set_hitbox_value(atk, 2, HG_PRIORITY, 7);
set_hitbox_value(atk, 2, HG_DAMAGE, 6);
set_hitbox_value(atk, 2, HG_ANGLE, 70);
set_hitbox_value(atk, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, 2, HG_KNOCKBACK_SCALING, .85);
set_hitbox_value(atk, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(atk, 2, HG_HITPAUSE_SCALING, .55);
set_hitbox_value(atk, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

//================================================================
//WORD DATA
set_window_value(UNOWN_ATK.K, 2, AG_UNOWN_WINDOW_ACTIVE, true);
if ("k" not in unown_dictionary) unown_dictionary.k = make_trie_K();
//================================================================
//contains words starting with K
#define make_trie_K()
    return {};