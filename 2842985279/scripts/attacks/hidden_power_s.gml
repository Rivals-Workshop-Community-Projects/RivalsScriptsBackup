var atk = 19; // S
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("attack_S"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("attack_S_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 3);

set_window_value(atk, 1, AG_WINDOW_LENGTH, 8);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 1, AG_WINDOW_SFX, sound_get("spin1"));
set_window_value(atk, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(atk, 2, AG_WINDOW_LENGTH, 14);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(atk, 3, AG_WINDOW_LENGTH, 12);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(atk, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(atk, 6);

//Hit 1-1 (frontsequence)
set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 1, HG_WINDOW, 2);
set_hitbox_value(atk, 1, HG_LIFETIME, 2);
set_hitbox_value(atk, 1, HG_HITBOX_X, 36);
set_hitbox_value(atk, 1, HG_HITBOX_Y, -32);
set_hitbox_value(atk, 1, HG_WIDTH, 45);
set_hitbox_value(atk, 1, HG_HEIGHT, 85);
set_hitbox_value(atk, 1, HG_PRIORITY, 3);
set_hitbox_value(atk, 1, HG_DAMAGE, 2);
set_hitbox_value(atk, 1, HG_ANGLE, 180);
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(atk, 1, HG_EXTRA_HITPAUSE, -2);
set_hitbox_value(atk, 1, HG_VISUAL_EFFECT, hfx_small);
set_hitbox_value(atk, 1, HG_HIT_SFX, sound_get("hit2"));
set_hitbox_value(atk, 1, HG_HITBOX_GROUP, 1);
//Hit 1-2 (backsequence)
set_hitbox_value(atk, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 2, HG_WINDOW, 2);
set_hitbox_value(atk, 2, HG_LIFETIME, 2);
set_hitbox_value(atk, 2, HG_HITBOX_X, -36);
set_hitbox_value(atk, 2, HG_HITBOX_Y, -32);
set_hitbox_value(atk, 2, HG_WIDTH, 45);
set_hitbox_value(atk, 2, HG_HEIGHT, 85);
set_hitbox_value(atk, 2, HG_PRIORITY, 2);
set_hitbox_value(atk, 2, HG_DAMAGE, 2);
set_hitbox_value(atk, 2, HG_ANGLE, 75);
set_hitbox_value(atk, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(atk, 2, HG_EXTRA_HITPAUSE, -2);
set_hitbox_value(atk, 2, HG_VISUAL_EFFECT, hfx_small);
set_hitbox_value(atk, 2, HG_HIT_SFX, sound_get("hit2"));
set_hitbox_value(atk, 2, HG_HITBOX_GROUP, 1);

//Hit 2-1
set_hitbox_value(atk, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 3, HG_WINDOW, 2);
set_hitbox_value(atk, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(atk, 3, HG_LIFETIME, 2);
set_hitbox_value(atk, 3, HG_HITBOX_X, 0);
set_hitbox_value(atk, 3, HG_HITBOX_Y, 0);
set_hitbox_value(atk, 3, HG_WIDTH, 85);
set_hitbox_value(atk, 3, HG_HEIGHT, 45);
set_hitbox_value(atk, 3, HG_PRIORITY, 3);
set_hitbox_value(atk, 3, HG_DAMAGE, 2);
set_hitbox_value(atk, 3, HG_ANGLE, 115);
set_hitbox_value(atk, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(atk, 3, HG_EXTRA_HITPAUSE, -2);
set_hitbox_value(atk, 3, HG_VISUAL_EFFECT, hfx_small);
set_hitbox_value(atk, 3, HG_HIT_SFX, sound_get("hit2"));
set_hitbox_value(atk, 3, HG_HITBOX_GROUP, 2);
//Hit 2-2
set_hitbox_value(atk, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 4, HG_WINDOW, 2);
set_hitbox_value(atk, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(atk, 4, HG_LIFETIME, 2);
set_hitbox_value(atk, 4, HG_HITBOX_X, 0);
set_hitbox_value(atk, 4, HG_HITBOX_Y, -64);
set_hitbox_value(atk, 4, HG_WIDTH, 85);
set_hitbox_value(atk, 4, HG_HEIGHT, 45);
set_hitbox_value(atk, 4, HG_PRIORITY, 2);
set_hitbox_value(atk, 4, HG_DAMAGE, 2);
set_hitbox_value(atk, 4, HG_ANGLE, 0);
set_hitbox_value(atk, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(atk, 4, HG_EXTRA_HITPAUSE, -2);
set_hitbox_value(atk, 4, HG_VISUAL_EFFECT, hfx_small);
set_hitbox_value(atk, 4, HG_HIT_SFX, sound_get("hit2"));
set_hitbox_value(atk, 4, HG_HITBOX_GROUP, 2);

//Hit 3-1
set_hitbox_value(atk, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 5, HG_WINDOW, 2);
set_hitbox_value(atk, 5, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(atk, 5, HG_LIFETIME, 4);
set_hitbox_value(atk, 5, HG_HITBOX_X, -26);
set_hitbox_value(atk, 5, HG_HITBOX_Y, -56);
set_hitbox_value(atk, 5, HG_WIDTH, 60);
set_hitbox_value(atk, 5, HG_HEIGHT, 60);
set_hitbox_value(atk, 5, HG_PRIORITY, 3);
set_hitbox_value(atk, 5, HG_DAMAGE, 3);
set_hitbox_value(atk, 5, HG_ANGLE, 80);
set_hitbox_value(atk, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, 5, HG_KNOCKBACK_SCALING, 0.25);
set_hitbox_value(atk, 5, HG_UNOWN_DAMAGE_BONUS, 7);
set_hitbox_value(atk, 5, HG_UNOWN_KNOCKBACK_BONUS, 1);
set_hitbox_value(atk, 5, HG_UNOWN_SCALING_BONUS, 0.10);
set_hitbox_value(atk, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, 5, HG_HITPAUSE_SCALING, 0.45);
set_hitbox_value(atk, 5, HG_VISUAL_EFFECT, hfx_bigger);
set_hitbox_value(atk, 5, HG_HIT_SFX, asset_get("slam2"));
set_hitbox_value(atk, 5, HG_HITBOX_GROUP, 3);
//Hit 3-2
set_hitbox_value(atk, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 6, HG_WINDOW, 2);
set_hitbox_value(atk, 6, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(atk, 6, HG_LIFETIME, 4);
set_hitbox_value(atk, 6, HG_HITBOX_X, 26);
set_hitbox_value(atk, 6, HG_HITBOX_Y, -4);
set_hitbox_value(atk, 6, HG_WIDTH, 50);
set_hitbox_value(atk, 6, HG_HEIGHT, 50);
set_hitbox_value(atk, 6, HG_PRIORITY, 3);
set_hitbox_value(atk, 6, HG_DAMAGE, 3);
set_hitbox_value(atk, 6, HG_ANGLE, 115);
set_hitbox_value(atk, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, 6, HG_KNOCKBACK_SCALING, 0.25);
set_hitbox_value(atk, 6, HG_UNOWN_DAMAGE_BONUS, 7);
set_hitbox_value(atk, 6, HG_UNOWN_KNOCKBACK_BONUS, 1);
set_hitbox_value(atk, 6, HG_UNOWN_SCALING_BONUS, 0.10);
set_hitbox_value(atk, 6, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, 6, HG_HITPAUSE_SCALING, 0.45);
set_hitbox_value(atk, 6, HG_VISUAL_EFFECT, hfx_bigger);
set_hitbox_value(atk, 6, HG_HIT_SFX, sound_get("slam2"));
set_hitbox_value(atk, 6, HG_HITBOX_GROUP, 3);

//================================================================
//WORD DATA
set_window_value(UNOWN_ATK.S, 2, AG_UNOWN_WINDOW_ACTIVE, true);
if ("s" not in unown_dictionary) unown_dictionary.s = make_trie_S();
//NOTE: S is too big for one file. subgroups "SA", "SE", "SI", "SO", "SU" handled in X's file
//(Assumes files are loaded alphabetically. probably not ideal)
//================================================================
//contains words starting with S
#define make_trie_S()

return {a:{m:{a:{_:1}}}, e:{l:{i:{_:1}, o:{_:1}},m:{e:{_:1}},w:{i:{_:1}}}, i:{j:{e:{l:{o:{_:1}}}}, k:{e:{_:1}}, n:{_:1, a:{_:1}, p:{i:{n:{_:1}}}},t:{e:{l:{e:{n:{_:1}}}}}}, o:{n:{a:{_:1}}, w:{e:{l:{i:{_:1}}}}}, u:{l:{i:{_:1}}, n:{o:{_:1}}, p:{a:{_:1}}, w:{i:{_:1}}}};
