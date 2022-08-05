var atk = 11; // K
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("attack_K"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("attack_K_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 3);

set_window_value(atk, 1, AG_WINDOW_LENGTH, 16);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 1, AG_WINDOW_SFX, sound_get("wheesh"));
set_window_value(atk, 1, AG_WINDOW_SFX_FRAME, 15);

set_window_value(atk, 2, AG_WINDOW_LENGTH, 9);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(atk, 3, AG_WINDOW_LENGTH, 12);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(atk, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(atk, 2);

set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 1, HG_WINDOW, 2);
set_hitbox_value(atk, 1, HG_LIFETIME, 6);
set_hitbox_value(atk, 1, HG_HITBOX_X, -8);
set_hitbox_value(atk, 1, HG_HITBOX_Y, -64);
set_hitbox_value(atk, 1, HG_WIDTH, 56);
set_hitbox_value(atk, 1, HG_HEIGHT, 48);
set_hitbox_value(atk, 1, HG_PRIORITY, 2);
set_hitbox_value(atk, 1, HG_DAMAGE, 8);
set_hitbox_value(atk, 1, HG_ANGLE, 90);
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, .95);
set_hitbox_value(atk, 1, HG_UNOWN_DAMAGE_BONUS, 6);
set_hitbox_value(atk, 1, HG_UNOWN_KNOCKBACK_BONUS, 1);
set_hitbox_value(atk, 1, HG_UNOWN_SCALING_BONUS, 0.20);
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, 1, HG_HITPAUSE_SCALING, .55);
set_hitbox_value(atk, 1, HG_HIT_SFX, sound_get("hit1"));

set_hitbox_value(atk, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 2, HG_WINDOW, 2);
set_hitbox_value(atk, 2, HG_LIFETIME, 6);
set_hitbox_value(atk, 2, HG_HITBOX_X, 28);
set_hitbox_value(atk, 2, HG_HITBOX_Y, -28);
set_hitbox_value(atk, 2, HG_WIDTH, 48);
set_hitbox_value(atk, 2, HG_HEIGHT, 72);
set_hitbox_value(atk, 2, HG_PRIORITY, 7);
set_hitbox_value(atk, 2, HG_DAMAGE, 6);
set_hitbox_value(atk, 2, HG_ANGLE, 70);
set_hitbox_value(atk, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, 2, HG_KNOCKBACK_SCALING, .85);
set_hitbox_value(atk, 1, HG_UNOWN_DAMAGE_BONUS, 4);
set_hitbox_value(atk, 1, HG_UNOWN_KNOCKBACK_BONUS, 1);
set_hitbox_value(atk, 1, HG_UNOWN_SCALING_BONUS, 0.10);
set_hitbox_value(atk, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(atk, 2, HG_HITPAUSE_SCALING, .55);
set_hitbox_value(atk, 2, HG_HIT_SFX, sound_get("hit2"));

//================================================================
//WORD DATA
set_window_value(UNOWN_ATK.K, 2, AG_UNOWN_WINDOW_ACTIVE, true);
if ("k" not in unown_dictionary) unown_dictionary.k = make_trie_K();
//================================================================
//contains words starting with K
#define make_trie_K()
return {a:{l:{a:{_:1, m:{a:{_:1}}}}, m:{a:{_:1}}, s:{i:{_:1}}}, e:{n:{_:1}, p:{e:{k:{e:{n:{_:1}}}}}}, i:{j:{e:{t:{e:{s:{a:{n:{t:{a:{k:{a:{l:{u:{_:1}}}}}}}}}}}}},n:{_:1},l:{i:{_:1}}, w:{e:{n:{_:1}}}}, o:{_:1, n:{_:1}}, u:{_:1, l:{e:{_:1}, u:{p:{u:{_:1}}}}, t:{e:{_:1}}}};