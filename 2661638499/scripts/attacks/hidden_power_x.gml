var atk = 24;// X
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("attack_X"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("attack_X_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 3);

set_window_value(atk, 1, AG_WINDOW_LENGTH, 8);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(atk, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(atk, 2, AG_WINDOW_LENGTH, 8);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(atk, 3, AG_WINDOW_LENGTH, 12);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(atk, 1);

set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 1, HG_WINDOW, 2);
set_hitbox_value(atk, 1, HG_LIFETIME, 4);
set_hitbox_value(atk, 1, HG_HITBOX_Y, -32);
set_hitbox_value(atk, 1, HG_WIDTH, 64);
set_hitbox_value(atk, 1, HG_HEIGHT, 64);
set_hitbox_value(atk, 1, HG_PRIORITY, 2);
set_hitbox_value(atk, 1, HG_SHAPE, 1);
set_hitbox_value(atk, 1, HG_DAMAGE, 7);
set_hitbox_value(atk, 1, HG_ANGLE, 45);
set_hitbox_value(atk, 1, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, .85);
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(atk, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

//================================================================
//WORD DATA
set_window_value(UNOWN_ATK.X, 2, AG_UNOWN_WINDOW_ACTIVE, true);
if ("x" not in unown_dictionary) unown_dictionary.x = make_trie_X();
//================================================================
//contains words starting with X
#define make_trie_X()
    return {};