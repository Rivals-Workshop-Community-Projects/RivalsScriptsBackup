var atk = 26; // Z
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("attack_Z"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("attack_Z_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 3);

set_window_value(atk, 1, AG_WINDOW_LENGTH, 16);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 1, AG_WINDOW_SFX, asset_get("sfx_may_whip1"));
set_window_value(atk, 1, AG_WINDOW_SFX_FRAME, get_window_value(atk, 1, AG_WINDOW_LENGTH) - 1);

set_window_value(atk, 2, AG_WINDOW_LENGTH, 6);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(atk, 3, AG_WINDOW_LENGTH, 10);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(atk, 3);

set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 1, HG_WINDOW, 2);
set_hitbox_value(atk, 1, HG_LIFETIME, 6);
set_hitbox_value(atk, 1, HG_HITBOX_X, -24);
set_hitbox_value(atk, 1, HG_HITBOX_Y, -56);
set_hitbox_value(atk, 1, HG_WIDTH, 56);
set_hitbox_value(atk, 1, HG_HEIGHT, 50);
set_hitbox_value(atk, 1, HG_PRIORITY, 6);
set_hitbox_value(atk, 1, HG_DAMAGE, 8);
set_hitbox_value(atk, 1, HG_ANGLE, 135);
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, .85);
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(atk, 1, HG_VISUAL_EFFECT, 198 );
set_hitbox_value(atk, 1, HG_HIT_SFX, asset_get("sfx_leafy_hit1"));

set_hitbox_value(atk, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 2, HG_WINDOW, 2);
set_hitbox_value(atk, 2, HG_LIFETIME, 6);
set_hitbox_value(atk, 2, HG_HITBOX_X, 24);
set_hitbox_value(atk, 2, HG_HITBOX_Y, 0);
set_hitbox_value(atk, 2, HG_WIDTH, 56);
set_hitbox_value(atk, 2, HG_HEIGHT, 50);
set_hitbox_value(atk, 2, HG_PRIORITY, 5);
set_hitbox_value(atk, 2, HG_DAMAGE, 8);
set_hitbox_value(atk, 2, HG_ANGLE, 315);
set_hitbox_value(atk, 2, HG_GROUNDEDNESS, 2);
set_hitbox_value(atk, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, 2, HG_KNOCKBACK_SCALING, .85);
set_hitbox_value(atk, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, 2, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(atk, 2, HG_VISUAL_EFFECT, 198 );
set_hitbox_value(atk, 2, HG_HIT_SFX, asset_get("sfx_leafy_hit1"));

//#2 but for grounded targets
set_hitbox_value(atk, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 3, HG_WINDOW, 2);
set_hitbox_value(atk, 3, HG_LIFETIME, 6);
set_hitbox_value(atk, 3, HG_HITBOX_X, 24);
set_hitbox_value(atk, 3, HG_HITBOX_Y, 0);
set_hitbox_value(atk, 3, HG_WIDTH, 56);
set_hitbox_value(atk, 3, HG_HEIGHT, 50);
set_hitbox_value(atk, 3, HG_PRIORITY, 4);
set_hitbox_value(atk, 3, HG_GROUNDEDNESS, 1);
set_hitbox_value(atk, 3, HG_DAMAGE, 8);
set_hitbox_value(atk, 3, HG_ANGLE, 45);
set_hitbox_value(atk, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, 3, HG_KNOCKBACK_SCALING, .85);
set_hitbox_value(atk, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, 3, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(atk, 3, HG_VISUAL_EFFECT, 198 );
set_hitbox_value(atk, 3, HG_HIT_SFX, asset_get("sfx_leafy_hit1"));

//================================================================
//WORD DATA
set_window_value(UNOWN_ATK.Z, 2, AG_UNOWN_WINDOW_ACTIVE, true);
if ("z" not in unown_dictionary) unown_dictionary.z = make_trie_Z();
//================================================================
//contains words starting with Z
#define make_trie_Z()
    return {};