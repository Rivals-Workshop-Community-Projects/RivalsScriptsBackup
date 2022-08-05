var atk = 5; // E
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("attack_E"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("attack_E_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 3);

set_window_value(atk, 1, AG_WINDOW_LENGTH, 12);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 1, AG_WINDOW_SFX, sound_get("whoosh"));
set_window_value(atk, 1, AG_WINDOW_SFX_FRAME, 11);

set_window_value(atk, 2, AG_WINDOW_LENGTH, 4);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(atk, 3, AG_WINDOW_LENGTH, 12);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(atk, 1);

set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 1, HG_WINDOW, 2);
set_hitbox_value(atk, 1, HG_LIFETIME, 4);
set_hitbox_value(atk, 1, HG_HITBOX_X, 30);
set_hitbox_value(atk, 1, HG_HITBOX_Y, -32);
set_hitbox_value(atk, 1, HG_WIDTH, 42);
set_hitbox_value(atk, 1, HG_HEIGHT, 64);
set_hitbox_value(atk, 1, HG_SHAPE, 1);
set_hitbox_value(atk, 1, HG_PRIORITY, 2);
set_hitbox_value(atk, 1, HG_DAMAGE, 8);
set_hitbox_value(atk, 1, HG_ANGLE, 50);
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(atk, 1, HG_UNOWN_DAMAGE_BONUS, 6);
set_hitbox_value(atk, 1, HG_UNOWN_KNOCKBACK_BONUS, 3);
set_hitbox_value(atk, 1, HG_UNOWN_SCALING_BONUS, 0.15);
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(atk, 1, HG_HITPAUSE_SCALING, .85);
set_hitbox_value(atk, 1, HG_HIT_SFX, sound_get("hit2"));

//================================================================
//WORD DATA
set_window_value(UNOWN_ATK.E, 2, AG_UNOWN_WINDOW_ACTIVE, true);
if ("e" not in unown_dictionary) unown_dictionary.e = make_trie_E();
//================================================================
//contains words starting with E
#define make_trie_E()
    return{n:{_:1}, s:{u:{n:{_:1}}}};