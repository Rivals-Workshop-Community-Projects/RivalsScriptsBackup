var atk = 14; // N
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("attack_N"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("attack_N_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 5);

//startup
set_window_value(atk, 1, AG_WINDOW_LENGTH, 5);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 1, AG_WINDOW_SFX, sound_get("Ding"));
set_window_value(atk, 1, AG_WINDOW_SFX_FRAME, get_window_value(atk, 1, AG_WINDOW_LENGTH) - 1);

//active
set_window_value(atk, 2, AG_WINDOW_LENGTH, 20);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(atk, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, 2, AG_WINDOW_INVINCIBILITY, 1);

//endlag
set_window_value(atk, 3, AG_WINDOW_LENGTH, 24);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, 3, AG_WINDOW_GOTO, 9); //ends move early
set_window_value(atk, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 3, AG_WINDOW_SFX, sound_get("rse_minimize"));
set_window_value(atk, 3, AG_WINDOW_SFX_FRAME, 0);

//counter success
set_window_value(atk, 4, AG_WINDOW_LENGTH, 9);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 4, AG_WINDOW_SFX, sound_get("whoosh"));
set_window_value(atk, 4, AG_WINDOW_SFX_FRAME, 0);

//endlag
set_window_value(atk, 5, AG_WINDOW_LENGTH, 15);
set_window_value(atk, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, 5, AG_WINDOW_ANIM_FRAME_START, 7);

set_num_hitboxes(atk, 1);

set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 1, HG_WINDOW, 4);
set_hitbox_value(atk, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(atk, 1, HG_LIFETIME, 5);
set_hitbox_value(atk, 1, HG_HITBOX_X, 0);
set_hitbox_value(atk, 1, HG_HITBOX_Y, -32);
set_hitbox_value(atk, 1, HG_WIDTH, 128);
set_hitbox_value(atk, 1, HG_HEIGHT, 64);
set_hitbox_value(atk, 1, HG_SHAPE, 1);
set_hitbox_value(atk, 1, HG_PRIORITY, 2);
set_hitbox_value(atk, 1, HG_ANGLE, 45);
set_hitbox_value(atk, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(atk, 1, HG_DAMAGE, 1); //dynamic
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 5); //dynamic
set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, .85); //dynamic
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(atk, 1, HG_HIT_SFX, sound_get("thud"));
set_hitbox_value(atk, 1, HG_HITBOX_GROUP, -1);

//shockwave (Manually spawned)
set_hitbox_value(atk, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 2, HG_WINDOW, 2);
set_hitbox_value(atk, 2, HG_LIFETIME, 1);
set_hitbox_value(atk, 2, HG_HITBOX_X, 0);
set_hitbox_value(atk, 2, HG_HITBOX_Y, -32);
set_hitbox_value(atk, 2, HG_WIDTH, 64);
set_hitbox_value(atk, 2, HG_HEIGHT, 64);
set_hitbox_value(atk, 2, HG_SHAPE, 1);
set_hitbox_value(atk, 2, HG_PRIORITY, 2);
set_hitbox_value(atk, 2, HG_DAMAGE, 1);
set_hitbox_value(atk, 2, HG_ANGLE, 45);
set_hitbox_value(atk, 2, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(atk, 2, HG_EFFECT, 9); //Polite
set_hitbox_value(atk, 2, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(atk, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(atk, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(atk, 2, HG_HITPAUSE_SCALING, .0);
set_hitbox_value(atk, 2, HG_VISUAL_EFFECT, 17);
set_hitbox_value(atk, 2, HG_HIT_SFX, sound_get("zap"));
set_hitbox_value(atk, 2, HG_HITBOX_GROUP, -1);

//================================================================
//WORD DATA
set_window_value(UNOWN_ATK.N, 2, AG_UNOWN_WINDOW_ACTIVE, true);
if ("n" not in unown_dictionary) unown_dictionary.n = make_trie_N();
//================================================================
//contains words starting with N
#define make_trie_N()

return {a:{m:{a:{k:{o:{_:1}}}}, n:{p:{a:{_:1}}},s:{a:{_:1},i:{n:{_:1}}}}, e:{n:{a:{_:1}}}, i:{_:1,m:{i:{_:1}}}, o:{k:{a:{_:1}}}};
