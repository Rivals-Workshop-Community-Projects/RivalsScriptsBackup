var atk = 22; // V
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("attack_V"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("attack_V_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 3);

set_window_value(atk, 1, AG_WINDOW_LENGTH, 8);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(atk, 1, AG_WINDOW_SFX_FRAME, get_window_value(atk, 1, AG_WINDOW_LENGTH) - 1);

set_window_value(atk, 2, AG_WINDOW_LENGTH, 8);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(atk, 3, AG_WINDOW_LENGTH, 10);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

//fastfalling
set_window_value(atk, 4, AG_WINDOW_LENGTH, 6);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAME_START, 4);

set_num_hitboxes(atk, 1);

set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 1, HG_WINDOW, 2);
set_hitbox_value(atk, 1, HG_LIFETIME, 8);
set_hitbox_value(atk, 1, HG_HITBOX_Y, -56);
set_hitbox_value(atk, 1, HG_WIDTH, 64);
set_hitbox_value(atk, 1, HG_HEIGHT, 64);
set_hitbox_value(atk, 1, HG_PRIORITY, 2);
set_hitbox_value(atk, 1, HG_DAMAGE, 4);
set_hitbox_value(atk, 1, HG_ANGLE, 90);
set_hitbox_value(atk, 1, HG_HITSTUN_MULTIPLIER, 0.35);
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, .25);
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(atk, 1, HG_HIT_SFX, sound_get("sonic_bumper"));

//================================================================
//WORD DATA
set_window_value(UNOWN_ATK.V, 2, AG_UNOWN_WINDOW_ACTIVE, true);
if ("v" not in unown_dictionary) unown_dictionary.v = make_trie_V();
//================================================================
//contains words starting with V
#define make_trie_V()
    return {};