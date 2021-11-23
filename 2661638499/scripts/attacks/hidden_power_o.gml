var atk = 15;// O
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("attack_O"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("attack_O_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 3);

set_window_value(atk, 1, AG_WINDOW_LENGTH, 6);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(atk, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(atk, 2, AG_WINDOW_LENGTH, 16);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(atk, 3, AG_WINDOW_LENGTH, 8);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(atk, 4);

set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 1, HG_WINDOW, 2);
set_hitbox_value(atk, 1, HG_LIFETIME, 2);
set_hitbox_value(atk, 1, HG_HITBOX_X, -4);
set_hitbox_value(atk, 1, HG_HITBOX_Y, -36);
set_hitbox_value(atk, 1, HG_WIDTH, 85);
set_hitbox_value(atk, 1, HG_HEIGHT, 85);
set_hitbox_value(atk, 1, HG_PRIORITY, 2);
set_hitbox_value(atk, 1, HG_DAMAGE, 2);
set_hitbox_value(atk, 1, HG_ANGLE, 45);
set_hitbox_value(atk, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(atk, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(atk, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(atk, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(atk, 2, HG_WINDOW, 2);
set_hitbox_value(atk, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(atk, 2, HG_LIFETIME, 2);
set_hitbox_value(atk, 2, HG_HITBOX_X, -4);
set_hitbox_value(atk, 2, HG_HITBOX_Y, -28);
set_hitbox_value(atk, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(atk, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(atk, 3, HG_WINDOW, 2);
set_hitbox_value(atk, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(atk, 3, HG_LIFETIME, 2);
set_hitbox_value(atk, 3, HG_HITBOX_X, 2);
set_hitbox_value(atk, 3, HG_HITBOX_Y, -30);
set_hitbox_value(atk, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(atk, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 4, HG_WINDOW, 2);
set_hitbox_value(atk, 4, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(atk, 4, HG_LIFETIME, 4);
set_hitbox_value(atk, 4, HG_HITBOX_X, 0);
set_hitbox_value(atk, 4, HG_HITBOX_Y, -32);
set_hitbox_value(atk, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, 4, HG_WIDTH, 72);
set_hitbox_value(atk, 4, HG_HEIGHT, 72);
set_hitbox_value(atk, 4, HG_PRIORITY, 2);
set_hitbox_value(atk, 4, HG_DAMAGE, 3);
set_hitbox_value(atk, 4, HG_ANGLE, 60);
set_hitbox_value(atk, 4, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(atk, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, 4, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(atk, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(atk, 4, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(atk, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(atk, 4, HG_HITBOX_GROUP, -1);

//================================================================
//WORD DATA
set_window_value(UNOWN_ATK.O, 2, AG_UNOWN_WINDOW_ACTIVE, true);
if ("o" not in unown_dictionary) unown_dictionary.o = make_trie_O();
//================================================================
//contains words starting with O
#define make_trie_O()
    return {};