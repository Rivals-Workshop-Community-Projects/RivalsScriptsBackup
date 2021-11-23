var atk = 16; // P
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("attack_P"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("attack_P_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 3);

set_window_value(atk, 1, AG_WINDOW_LENGTH, 12);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 1, AG_WINDOW_SFX, asset_get("sfx_frog_fstrong"));
set_window_value(atk, 1, AG_WINDOW_SFX_FRAME, get_window_value(atk, 1, AG_WINDOW_LENGTH) - 1);

set_window_value(atk, 2, AG_WINDOW_LENGTH, 3);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(atk, 3, AG_WINDOW_LENGTH, 16);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(atk, 2);

set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 1, HG_WINDOW, 2);
set_hitbox_value(atk, 1, HG_LIFETIME, 3);
set_hitbox_value(atk, 1, HG_HITBOX_X, -12);
set_hitbox_value(atk, 1, HG_HITBOX_Y, -24);
set_hitbox_value(atk, 1, HG_WIDTH, 28);
set_hitbox_value(atk, 1, HG_HEIGHT, 48);
set_hitbox_value(atk, 1, HG_SHAPE, 2);
set_hitbox_value(atk, 1, HG_PRIORITY, 6);
set_hitbox_value(atk, 1, HG_DAMAGE, 6);
set_hitbox_value(atk, 1, HG_ANGLE, 90);
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(atk, 1, HG_VISUAL_EFFECT, 116);
set_hitbox_value(atk, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));

set_hitbox_value(atk, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 2, HG_WINDOW, 2);
set_hitbox_value(atk, 2, HG_LIFETIME, 3);
set_hitbox_value(atk, 2, HG_HITBOX_X, -12);
set_hitbox_value(atk, 2, HG_HITBOX_Y, 12);
set_hitbox_value(atk, 2, HG_WIDTH, 20);
set_hitbox_value(atk, 2, HG_HEIGHT, 50);
set_hitbox_value(atk, 2, HG_SHAPE, 2);
set_hitbox_value(atk, 2, HG_PRIORITY, 2); //tipper effect
set_hitbox_value(atk, 2, HG_DAMAGE, 9);
set_hitbox_value(atk, 2, HG_ANGLE, 270);
set_hitbox_value(atk, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, 2, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(atk, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(atk, 2, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(atk, 2, HG_VISUAL_EFFECT, 118);
set_hitbox_value(atk, 2, HG_HIT_SFX, asset_get("sfx_poison_hit_strong"));

//================================================================
//WORD DATA
set_window_value(UNOWN_ATK.P, 2, AG_UNOWN_WINDOW_ACTIVE, true);
if ("p" not in unown_dictionary) unown_dictionary.p = make_trie_P();
//================================================================
//contains words starting with P
#define make_trie_P()
    return {};