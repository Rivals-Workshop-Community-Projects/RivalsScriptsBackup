var atk = 20; // T
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("attack_T"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("attack_T_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 4);

set_window_value(atk, 1, AG_WINDOW_LENGTH, 8);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 1, AG_WINDOW_SFX, sound_get("wheesh"));
set_window_value(atk, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(atk, 2, AG_WINDOW_LENGTH, 4);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, 2, AG_WINDOW_VSPEED, -4);

//Looping
set_window_value(atk, 3, AG_WINDOW_LENGTH, 12);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 3, AG_WINDOW_SFX, sound_get("whoosh"));
set_window_value(atk, 3, AG_WINDOW_SFX_FRAME, 1);

set_window_value(atk, 4, AG_WINDOW_TYPE, 7); //pratfall
set_window_value(atk, 4, AG_WINDOW_LENGTH, 12);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAME_START, 7);

set_num_hitboxes(atk, 6);

//Early hit
set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 1, HG_WINDOW, 2);
set_hitbox_value(atk, 1, HG_LIFETIME, 4);
set_hitbox_value(atk, 1, HG_HITBOX_Y, -68);
set_hitbox_value(atk, 1, HG_WIDTH, 96);
set_hitbox_value(atk, 1, HG_HEIGHT, 32);
set_hitbox_value(atk, 1, HG_PRIORITY, 6);
set_hitbox_value(atk, 1, HG_SHAPE, 2);
set_hitbox_value(atk, 1, HG_DAMAGE, 2);
set_hitbox_value(atk, 1, HG_ANGLE, 90);
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, 0.25);
set_hitbox_value(atk, 1, HG_UNOWN_DAMAGE_BONUS, 2);
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(atk, 1, HG_HIT_SFX, sound_get("hit2"));
set_hitbox_value(atk, 1, HG_HITBOX_GROUP, 0);

//Looping hits
set_hitbox_value(atk, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 2, HG_WINDOW, 3);
set_hitbox_value(atk, 2, HG_LIFETIME, 3);
set_hitbox_value(atk, 2, HG_HITBOX_Y, -64);
set_hitbox_value(atk, 2, HG_WIDTH, 96);
set_hitbox_value(atk, 2, HG_HEIGHT, 40);
set_hitbox_value(atk, 2, HG_PRIORITY, 2);
set_hitbox_value(atk, 2, HG_SHAPE, 2);
set_hitbox_value(atk, 2, HG_DAMAGE, 1);
set_hitbox_value(atk, 2, HG_ANGLE, 40);
set_hitbox_value(atk, 2, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(atk, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(atk, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(atk, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(atk, 2, HG_HIT_SFX, sound_get("hit2"));
set_hitbox_value(atk, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(atk, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 3, HG_WINDOW, 3);
set_hitbox_value(atk, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(atk, 3, HG_LIFETIME, get_hitbox_value(atk, 2, HG_LIFETIME));
set_hitbox_value(atk, 3, HG_HITBOX_Y, get_hitbox_value(atk, 2, HG_HITBOX_Y));
set_hitbox_value(atk, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(atk, 3, HG_HITBOX_GROUP, 2);

set_hitbox_value(atk, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 4, HG_WINDOW, 3);
set_hitbox_value(atk, 4, HG_LIFETIME, get_hitbox_value(atk, 2, HG_LIFETIME));
set_hitbox_value(atk, 4, HG_HITBOX_Y, -36);
set_hitbox_value(atk, 4, HG_WIDTH, 50);
set_hitbox_value(atk, 4, HG_HEIGHT, 40);
set_hitbox_value(atk, 4, HG_PRIORITY, 2);
set_hitbox_value(atk, 4, HG_SHAPE, 2);
set_hitbox_value(atk, 4, HG_DAMAGE, 1);
set_hitbox_value(atk, 4, HG_ANGLE, 60);
set_hitbox_value(atk, 4, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(atk, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, 4, HG_KNOCKBACK_SCALING, .25);
set_hitbox_value(atk, 4, HG_BASE_HITPAUSE, 2);
set_hitbox_value(atk, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(atk, 4, HG_HIT_SFX, sound_get("hit2"));
set_hitbox_value(atk, 4, HG_HITBOX_GROUP, 1);

set_hitbox_value(atk, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 5, HG_WINDOW, 3);
set_hitbox_value(atk, 5, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(atk, 5, HG_LIFETIME, get_hitbox_value(atk, 4, HG_LIFETIME));
set_hitbox_value(atk, 5, HG_HITBOX_Y, get_hitbox_value(atk, 4, HG_HITBOX_Y));
set_hitbox_value(atk, 5, HG_PARENT_HITBOX, 4);
set_hitbox_value(atk, 5, HG_HITBOX_GROUP, 2);

//Final hit
set_hitbox_value(atk, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 6, HG_WINDOW, 4);
set_hitbox_value(atk, 6, HG_LIFETIME, 1);
set_hitbox_value(atk, 6, HG_HITBOX_Y, -48);
set_hitbox_value(atk, 6, HG_WIDTH, 64);
set_hitbox_value(atk, 6, HG_HEIGHT, 64);
set_hitbox_value(atk, 6, HG_PRIORITY, 3);
set_hitbox_value(atk, 6, HG_SHAPE, 0);
set_hitbox_value(atk, 6, HG_DAMAGE, 2);
set_hitbox_value(atk, 6, HG_ANGLE, 90);
set_hitbox_value(atk, 6, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(atk, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, 6, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(atk, 6, HG_UNOWN_DAMAGE_BONUS, 4);
set_hitbox_value(atk, 6, HG_UNOWN_KNOCKBACK_BONUS, 1);
set_hitbox_value(atk, 6, HG_UNOWN_SCALING_BONUS, 0.15);
set_hitbox_value(atk, 6, HG_BASE_HITPAUSE, 4);
set_hitbox_value(atk, 6, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(atk, 6, HG_HIT_SFX, sound_get("punch"));
set_hitbox_value(atk, 6, HG_HITBOX_GROUP, 3);

//================================================================
//WORD DATA
set_window_value(UNOWN_ATK.T, 2, AG_UNOWN_WINDOW_ACTIVE, true);
if ("t" not in unown_dictionary) unown_dictionary.t = make_trie_T();
//================================================================
//contains words starting with T
#define make_trie_T()

return {a:{n:{_:1},s:{o:{_:1}}, w:{a:{_:1}}}, e:{l:{o:{_:1}},n:{p:{o:{_:1}}}}, o:{k:{i:{_:1}}, m:{o:{_:1}}, n:{s:{i:{_:1}}}}, u:{_:1}};