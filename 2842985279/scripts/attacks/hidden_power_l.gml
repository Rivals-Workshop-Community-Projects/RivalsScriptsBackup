var atk = 12; // L
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("attack_L"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("attack_L_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 7);

//startup
set_window_value(atk, 1, AG_WINDOW_LENGTH, 8);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 1, AG_WINDOW_SFX, sound_get("whoosh"));
set_window_value(atk, 1, AG_WINDOW_SFX_FRAME, get_window_value(atk, 1, AG_WINDOW_LENGTH)-1);

//active (early)
set_window_value(atk, 2, AG_WINDOW_LENGTH, 6);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, 2, AG_WINDOW_HITPAUSE_FRAME, 4);

//active (falling)
set_window_value(atk, 3, AG_WINDOW_LENGTH, 6);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, 3, AG_WINDOW_HITPAUSE_FRAME, 4);
set_window_value(atk, 3, AG_WINDOW_HAS_WHIFFLAG, 1)

//land shock
set_window_value(atk, 4, AG_WINDOW_LENGTH, 14);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, 4, AG_WINDOW_HAS_WHIFFLAG, 1)

set_num_hitboxes(atk, 1);

//first hit
set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 1, HG_WINDOW, 2);
set_hitbox_value(atk, 1, HG_LIFETIME, get_window_value(atk, 2, AG_WINDOW_LENGTH));
set_hitbox_value(atk, 1, HG_HITBOX_X, 20);
set_hitbox_value(atk, 1, HG_HITBOX_Y, -32);
set_hitbox_value(atk, 1, HG_WIDTH, 56);
set_hitbox_value(atk, 1, HG_HEIGHT, 80);
set_hitbox_value(atk, 1, HG_SHAPE, 0);
set_hitbox_value(atk, 1, HG_PRIORITY, 2);
set_hitbox_value(atk, 1, HG_DAMAGE, 6);
set_hitbox_value(atk, 1, HG_ANGLE, 45);
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(atk, 1, HG_UNOWN_DAMAGE_BONUS, 4);
set_hitbox_value(atk, 1, HG_UNOWN_KNOCKBACK_BONUS, 1);
set_hitbox_value(atk, 1, HG_UNOWN_SCALING_BONUS, 0.25);
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(atk, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(atk, 1, HG_HIT_SFX, sound_get("slam1"));


//================================================================
//WORD DATA
set_window_value(UNOWN_ATK.L, 2, AG_UNOWN_WINDOW_ACTIVE, true);
set_window_value(UNOWN_ATK.L, 4, AG_UNOWN_WINDOW_ACTIVE, true);
if ("l" not in unown_dictionary) unown_dictionary.l = make_trie_L();
//================================================================
//contains words starting with L
#define make_trie_L()
return {a:{_:1,p:{e:{_:1}},s:{o:{_:1}},w:{a:{_:1}}}, e:{n:{_:1}, t:{e:{_:1}}}, i:{_:1,l:{i:{_:1}},n:{j:{a:{_:1}}}, p:{u:{_:1}}}, o:{j:{e:{_:1}},n:{_:1}}, u:{k:{i:{n:{_:1}}, a:{_:1}},p:{a:{_:1}}}};