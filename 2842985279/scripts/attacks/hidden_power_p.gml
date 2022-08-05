var atk = 16; // P
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("attack_P"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("attack_P_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 4);

set_window_value(atk, 1, AG_WINDOW_LENGTH, 12);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 1, AG_WINDOW_SFX, sound_get("whoosh"));
set_window_value(atk, 1, AG_WINDOW_SFX_FRAME, get_window_value(atk, 1, AG_WINDOW_LENGTH) - 1);

set_window_value(atk, 2, AG_WINDOW_LENGTH, 3);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(atk, 3, AG_WINDOW_LENGTH, 8);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(atk, 4, AG_WINDOW_LENGTH, 8);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, 4, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(atk, 2);

set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 1, HG_WINDOW, 2);
set_hitbox_value(atk, 1, HG_LIFETIME, 3);
set_hitbox_value(atk, 1, HG_HITBOX_X, -24);
set_hitbox_value(atk, 1, HG_HITBOX_Y, -42);
set_hitbox_value(atk, 1, HG_WIDTH, 48);
set_hitbox_value(atk, 1, HG_HEIGHT, 28);
set_hitbox_value(atk, 1, HG_SHAPE, 2);
set_hitbox_value(atk, 1, HG_PRIORITY, 6);
set_hitbox_value(atk, 1, HG_DAMAGE, 6);
set_hitbox_value(atk, 1, HG_ANGLE, 120);
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(atk, 1, HG_UNOWN_DAMAGE_BONUS, 4);
set_hitbox_value(atk, 1, HG_UNOWN_KNOCKBACK_BONUS, 1);
set_hitbox_value(atk, 1, HG_UNOWN_SCALING_BONUS, 0.25);
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(atk, 1, HG_VISUAL_EFFECT, hfx_small);
set_hitbox_value(atk, 1, HG_HIT_SFX, sound_get("punch"));

set_hitbox_value(atk, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 2, HG_WINDOW, 2);
set_hitbox_value(atk, 2, HG_LIFETIME, 3);
set_hitbox_value(atk, 2, HG_HITBOX_X, -35);
set_hitbox_value(atk, 2, HG_HITBOX_Y, -42);
set_hitbox_value(atk, 2, HG_WIDTH, 50);
set_hitbox_value(atk, 2, HG_HEIGHT, 20);
set_hitbox_value(atk, 2, HG_SHAPE, 2);
set_hitbox_value(atk, 2, HG_PRIORITY, 2); //tipper effect
set_hitbox_value(atk, 2, HG_DAMAGE, 9);
set_hitbox_value(atk, 2, HG_ANGLE, 135);
set_hitbox_value(atk, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(atk, 2, HG_UNOWN_DAMAGE_BONUS, 6);
set_hitbox_value(atk, 2, HG_UNOWN_KNOCKBACK_BONUS, 2);
set_hitbox_value(atk, 2, HG_UNOWN_SCALING_BONUS, 0.15);
set_hitbox_value(atk, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(atk, 2, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(atk, 2, HG_VISUAL_EFFECT, hfx_small);
set_hitbox_value(atk, 2, HG_HIT_SFX, sound_get("bigpunch"));

//================================================================
//WORD DATA
set_window_value(UNOWN_ATK.P, 2, AG_UNOWN_WINDOW_ACTIVE, true);
if ("p" not in unown_dictionary) unown_dictionary.p = make_trie_P();
//================================================================
//contains words starting with P
#define make_trie_P()
return {a:{k:{a:{l:{a:{_:1}}}}, l:{i:{_:1, s:{a:{_:1}}}}, n:{_:1, a:{_:1}}}, i:{_:1, l:{i:{n:{_:1}}}, m:{e:{j:{a:{_:1}}}}, n:{i:{_:1}}, p:{i:{_:1}}}, o:{k:{a:{_:1},i:{_:1}}, n:{a:{_:1}}}, u:{_:1}};