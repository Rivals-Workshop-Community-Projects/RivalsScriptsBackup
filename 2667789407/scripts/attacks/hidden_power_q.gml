var atk = 17;// Q
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("attack_Q"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("attack_Q_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 7);

set_window_value(atk, 1, AG_WINDOW_LENGTH, 12);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 1, AG_WINDOW_SFX, asset_get("sfx_shovel_dig"));
set_window_value(atk, 1, AG_WINDOW_SFX_FRAME, get_window_value(atk, 1, AG_WINDOW_LENGTH) - 1);

//active
set_window_value(atk, 2, AG_WINDOW_LENGTH, 6);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 2);

//pre-endlag (cancellable)
set_window_value(atk, 3, AG_WINDOW_LENGTH, 8);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, 3, AG_WINDOW_GOTO, 7); //ends move early

//Hit 2 pre
set_window_value(atk, 4, AG_WINDOW_LENGTH, 12);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(atk, 4, AG_WINDOW_SFX_FRAME, get_window_value(atk, 4, AG_WINDOW_LENGTH) - 1);
//Hit 2 active
set_window_value(atk, 5, AG_WINDOW_LENGTH, 6);
set_window_value(atk, 5, AG_WINDOW_VSPEED, -5);
set_window_value(atk, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 5, AG_WINDOW_ANIM_FRAME_START, 6);
//Hit 2 endlag
set_window_value(atk, 6, AG_WINDOW_LENGTH, 6);
set_window_value(atk, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 6, AG_WINDOW_ANIM_FRAME_START, 8);

//endlag
set_window_value(atk, 7, AG_WINDOW_LENGTH, 16);
set_window_value(atk, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 7, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(atk, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(atk, 4);

set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 1, HG_WINDOW, 2);
set_hitbox_value(atk, 1, HG_LIFETIME, 6);
set_hitbox_value(atk, 1, HG_HITBOX_X, 16);
set_hitbox_value(atk, 1, HG_HITBOX_Y, -10);
set_hitbox_value(atk, 1, HG_WIDTH, 25);
set_hitbox_value(atk, 1, HG_HEIGHT, 25);
set_hitbox_value(atk, 1, HG_PRIORITY, 5);
set_hitbox_value(atk, 1, HG_DAMAGE, 6);
set_hitbox_value(atk, 1, HG_ANGLE, 60);
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(atk, 1, HG_UNOWN_DAMAGE_BONUS, 4);
set_hitbox_value(atk, 1, HG_UNOWN_KNOCKBACK_BONUS, 1);
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(atk, 1, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(atk, 1, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(atk, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(atk, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(atk, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 2, HG_WINDOW, 2);
set_hitbox_value(atk, 2, HG_LIFETIME, 6);
set_hitbox_value(atk, 2, HG_HITBOX_X, 36);
set_hitbox_value(atk, 2, HG_HITBOX_Y, 8);

//sweetspot
set_hitbox_value(atk, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 3, HG_WINDOW, 2);
set_hitbox_value(atk, 3, HG_LIFETIME, 6);
set_hitbox_value(atk, 3, HG_HITBOX_X, 54);
set_hitbox_value(atk, 3, HG_HITBOX_Y, 26);
set_hitbox_value(atk, 3, HG_WIDTH, 12);
set_hitbox_value(atk, 3, HG_HEIGHT, 12);
set_hitbox_value(atk, 3, HG_PRIORITY, 8);
set_hitbox_value(atk, 3, HG_DAMAGE, 8);
set_hitbox_value(atk, 3, HG_ANGLE, 315);
set_hitbox_value(atk, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, 3, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(atk, 3, HG_UNOWN_DAMAGE_BONUS, 6);
set_hitbox_value(atk, 3, HG_UNOWN_KNOCKBACK_BONUS, 1);
set_hitbox_value(atk, 3, HG_UNOWN_SCALING_BONUS, 0.10);
set_hitbox_value(atk, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(atk, 3, HG_EXTRA_HITPAUSE, 8);
set_hitbox_value(atk, 3, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(atk, 3, HG_VISUAL_EFFECT, 19);
set_hitbox_value(atk, 3, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy2"));

//special prong
set_hitbox_value(atk, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 4, HG_WINDOW, 5);
set_hitbox_value(atk, 4, HG_LIFETIME, 4);
set_hitbox_value(atk, 4, HG_HITBOX_X, 60);
set_hitbox_value(atk, 4, HG_HITBOX_Y, 4);
set_hitbox_value(atk, 4, HG_WIDTH, 24);
set_hitbox_value(atk, 4, HG_HEIGHT, 48);
set_hitbox_value(atk, 4, HG_PRIORITY, 2);
set_hitbox_value(atk, 4, HG_DAMAGE, 6);
set_hitbox_value(atk, 4, HG_ANGLE, 60);
set_hitbox_value(atk, 4, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(atk, 4, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(atk, 4, HG_UNOWN_DAMAGE_BONUS, 4);
set_hitbox_value(atk, 4, HG_UNOWN_KNOCKBACK_BONUS, 1);
set_hitbox_value(atk, 4, HG_UNOWN_SCALING_BONUS, 0.15);
set_hitbox_value(atk, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, 4, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(atk, 4, HG_HIT_SFX, asset_get("sfx_infinidagger"));
set_hitbox_value(atk, 4, HG_HITBOX_GROUP, 2);

//================================================================
//WORD DATA
set_window_value(UNOWN_ATK.Q, 2, AG_UNOWN_WINDOW_ACTIVE, true);
if ("q" not in unown_dictionary) unown_dictionary.q = make_trie_Q();
//================================================================
//contains words starting with Q
#define make_trie_Q()
    return {u:{a:{c:{k:{_:1,s:{_:1}}},d:{_:1,r:{a:{n:{t:{_:1}}}}},h:{o:{g:{_:1}}},i:{n:{t:{_:1}}},k:{e:{_:1,r:{_:1}},i:{n:{g:{_:1}}}},l:{i:{f:{i:{c:{a:{t:{i:{o:{n:{s:{_:1}}}}}}},e:{d:{_:1},s:{_:1}}},y:{_:1,i:{n:{g:{_:1}}}}},t:{i:{e:{s:{_:1}}},y:{_:1}}},m:{s:{_:1}}},n:{d:{a:{r:{y:{_:1}}}},t:{i:{t:{i:{e:{s:{_:1}}},y:{_:1}}},u:{m:{_:1}}}},r:{a:{n:{t:{i:{n:{e:{_:1,d:{_:1}}}}}}},k:{_:1},r:{e:{l:{_:1,e:{d:{_:1}}}},y:{_:1}},t:{_:1,e:{r:{_:1,b:{a:{c:{k:{_:1,s:{_:1}}}}},s:{_:1}},t:{_:1}}}},g:{s:{i:{r:{e:{_:1}}}}}},e:{a:{s:{y:{_:1}}},e:{n:{_:1,s:{_:1}},r:{_:1,s:{_:1}}},l:{l:{_:1,e:{r:{_:1}}}},r:{y:{_:1}},s:{t:{_:1,i:{o:{n:{_:1,a:{b:{l:{e:{_:1}}}},e:{d:{_:1}},i:{n:{g:{_:1}}},n:{a:{i:{r:{e:{_:1}}}}},s:{_:1}}}}}},u:{e:{_:1}}},i:{b:{b:{l:{e:{_:1}}}},c:{h:{e:{_:1}},k:{_:1,e:{r:{_:1},s:{t:{_:1}}},i:{e:{_:1}},l:{y:{_:1}},s:{a:{n:{d:{_:1}}}}}},d:{_:1},e:{t:{_:1,e:{r:{_:1}},l:{y:{_:1}}}},l:{t:{_:1,i:{n:{g:{_:1}}},s:{_:1}},a:{v:{a:{_:1}}},l:{a:{d:{i:{n:{_:1}}}}}},n:{c:{e:{_:1}},i:{n:{e:{_:1}}},t:{e:{s:{s:{e:{n:{t:{i:{a:{l:{_:1}}}}}}}},t:{_:1}},s:{_:1},u:{p:{l:{e:{t:{s:{_:1}}}}}}}},r:{k:{_:1,s:{_:1},y:{_:1}}},t:{_:1,e:{_:1},s:{_:1},t:{e:{r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}}}},v:{e:{r:{_:1,i:{n:{g:{_:1}}}}}},x:{o:{t:{e:{_:1}}}},z:{_:1,m:{a:{s:{t:{e:{r:{_:1}}}}}},z:{e:{s:{_:1}}}}},o:{t:{a:{_:1,t:{i:{o:{n:{_:1}}}}},e:{_:1,d:{_:1},s:{_:1}},h:{_:1},i:{n:{g:{_:1}}}}}},w:{i:{l:{f:{i:{s:{h:{_:1}}}}}}}};