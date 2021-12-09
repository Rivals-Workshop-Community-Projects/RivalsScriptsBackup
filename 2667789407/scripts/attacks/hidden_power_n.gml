var atk = 14; // N
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("attack_N"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("attack_N_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 5);

//startup
set_window_value(atk, 1, AG_WINDOW_LENGTH, 5);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 1, AG_WINDOW_SFX, sound_get("rse_metal"));
set_window_value(atk, 1, AG_WINDOW_SFX_FRAME, get_window_value(atk, 1, AG_WINDOW_LENGTH) - 1);

//active
set_window_value(atk, 2, AG_WINDOW_LENGTH, 32);
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
set_window_value(atk, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
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
set_hitbox_value(atk, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy1"));
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
set_hitbox_value(atk, 2, HG_HIT_SFX, asset_get("sfx_absa_orb_miss"));
set_hitbox_value(atk, 2, HG_HITBOX_GROUP, -1);

//================================================================
//WORD DATA
set_window_value(UNOWN_ATK.N, 2, AG_UNOWN_WINDOW_ACTIVE, true);
if ("n" not in unown_dictionary) unown_dictionary.n = make_trie_N();
//================================================================
//contains words starting with N
#define make_trie_N()
    return {a:{_:1,c:{h:{o:{_:1,s:{_:1}}}},d:{a:{_:1}},g:{_:1,a:{n:{a:{d:{e:{l:{_:1}}}}}},g:{e:{d:{_:1}},i:{n:{g:{_:1}}}}},h:{_:1},i:{l:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}},v:{e:{_:1,t:{e:{_:1}}}}},k:{e:{d:{_:1}}},m:{_:1,e:{_:1,d:{_:1},l:{e:{s:{s:{_:1}}},y:{_:1}},s:{_:1,a:{k:{e:{_:1}}}},t:{a:{g:{_:1}}}},i:{n:{g:{_:1}}}},n:{_:1,a:{_:1,b:{_:1}},c:{e:{_:1},y:{_:1}},n:{i:{e:{s:{_:1}}},y:{_:1}},o:{s:{e:{c:{o:{n:{d:{_:1}}}}}},t:{e:{c:{h:{n:{o:{l:{o:{g:{y:{_:1}}}}}}}}}}}},p:{_:1,a:{l:{m:{_:1}}},h:{t:{h:{a:{l:{e:{n:{e:{_:1}}}}}}}},k:{i:{n:{_:1,s:{_:1}}}},o:{l:{e:{o:{n:{_:1}}}}},p:{i:{n:{g:{_:1}}},y:{_:1}},s:{_:1}},r:{c:{_:1,i:{s:{s:{i:{s:{m:{_:1},t:{_:1,i:{c:{_:1}}}}}}}},o:{l:{e:{p:{s:{y:{_:1}}}}},t:{i:{c:{_:1,s:{_:1}}}}}},r:{a:{t:{i:{v:{e:{_:1}}},o:{r:{_:1}}}},o:{w:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},l:{y:{_:1}},s:{_:1}}}},w:{h:{a:{l:{_:1}}}},y:{_:1}},s:{a:{l:{_:1}},t:{i:{e:{s:{t:{_:1}}}},y:{_:1}}},t:{i:{o:{n:{_:1,a:{l:{_:1,l:{y:{_:1}},s:{_:1}}},s:{_:1}}},v:{e:{_:1,s:{_:1}},i:{t:{y:{_:1}}}}},t:{y:{_:1}},u:{_:1,r:{a:{l:{_:1,l:{y:{_:1}}}},e:{_:1,d:{_:1},s:{_:1}}}}},u:{g:{h:{t:{_:1,y:{_:1}}}},s:{e:{a:{_:1,t:{e:{d:{_:1}},i:{n:{g:{_:1}}}}},o:{u:{s:{_:1}}}}},t:{i:{c:{a:{l:{_:1}}},l:{u:{s:{_:1}}}}}},v:{a:{l:{_:1}},i:{g:{a:{t:{e:{_:1},i:{n:{g:{_:1}},o:{n:{_:1,a:{l:{_:1}}}}},o:{r:{_:1}}}}}},y:{_:1}},w:{_:1},y:{_:1},z:{i:{_:1,s:{_:1}}}},e:{_:1,a:{r:{_:1,b:{y:{_:1}},e:{s:{t:{_:1}}},l:{y:{_:1}}},t:{_:1,l:{y:{_:1}},n:{e:{s:{s:{_:1}}}}}},b:{u:{l:{a:{_:1}}}},c:{e:{s:{s:{a:{r:{i:{l:{y:{_:1}}},y:{_:1}}},i:{t:{y:{_:1}}}}}},k:{_:1,i:{n:{g:{_:1}}},l:{a:{c:{e:{_:1,s:{_:1}}}},i:{n:{e:{_:1}}}},s:{_:1}},r:{o:{m:{a:{n:{c:{e:{r:{_:1}}}}}},s:{i:{s:{_:1}}},z:{m:{a:{_:1}}}}},t:{a:{r:{_:1}}}},e:{_:1,d:{_:1,e:{d:{_:1}},i:{n:{e:{s:{s:{_:1}}},g:{_:1}}},l:{e:{_:1,p:{o:{i:{n:{t:{_:1}}}}},s:{_:1,s:{_:1,l:{y:{_:1}}}}}},s:{_:1},y:{_:1}}},f:{a:{r:{i:{o:{u:{s:{_:1}}}}}}},g:{a:{t:{e:{_:1},i:{v:{e:{_:1,l:{y:{_:1}},s:{_:1}},i:{t:{y:{_:1}}}}}}},l:{e:{c:{t:{_:1,e:{d:{_:1}},f:{u:{l:{_:1}}},i:{n:{g:{_:1}}}}}},i:{g:{e:{e:{_:1},n:{c:{e:{_:1}},t:{_:1}}},i:{b:{l:{e:{_:1}}}}}}},o:{t:{i:{a:{b:{l:{e:{_:1}}},t:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1,s:{_:1}}}},o:{r:{_:1}}}}}}}},i:{g:{h:{_:1,b:{o:{r:{_:1,h:{o:{o:{d:{_:1,s:{_:1}}}}},i:{n:{g:{_:1}}},l:{y:{_:1}},s:{_:1}},u:{r:{_:1,s:{_:1}}}}}}},t:{h:{e:{r:{_:1}}}}},l:{l:{i:{e:{_:1}},y:{_:1}},s:{o:{n:{_:1}}}},o:{n:{_:1,a:{t:{a:{l:{_:1}}}}}},p:{h:{e:{w:{_:1,s:{_:1}}}},o:{t:{i:{s:{m:{_:1}}}}}},r:{d:{_:1,s:{_:1},y:{_:1}},v:{e:{_:1,s:{_:1}},o:{u:{s:{_:1,l:{y:{_:1}},n:{e:{s:{s:{_:1}}}}}}}}},s:{s:{_:1},t:{_:1}},t:{_:1,h:{e:{r:{_:1}}},w:{o:{r:{k:{_:1,i:{n:{g:{_:1}}},s:{_:1}}}}}},u:{r:{a:{l:{_:1}},o:{f:{o:{r:{c:{e:{_:1}}}}},l:{o:{g:{i:{c:{a:{l:{_:1}}},s:{t:{_:1}}},y:{_:1}}}},s:{e:{s:{_:1}},i:{s:{_:1}},u:{r:{g:{e:{o:{n:{_:1}},r:{y:{_:1}}}}}}},t:{i:{c:{_:1}}}}},t:{e:{r:{e:{d:{_:1}}}},r:{a:{l:{_:1,i:{z:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}}}}}}},o:{n:{_:1}}}}},v:{e:{_:1,r:{_:1,m:{o:{r:{e:{_:1}}}},t:{h:{e:{l:{e:{s:{s:{_:1}}}}}}}}}},w:{_:1,b:{o:{r:{n:{_:1,s:{_:1}}}}},c:{o:{m:{e:{r:{_:1,s:{_:1}}}}}},e:{s:{t:{_:1}}},f:{o:{u:{n:{d:{_:1}}}}},l:{y:{_:1,w:{e:{d:{_:1,s:{_:1}}}}}},s:{_:1,c:{a:{s:{t:{_:1}}}},l:{e:{t:{t:{e:{r:{_:1}}}}}},m:{a:{n:{_:1}}},p:{a:{p:{e:{r:{_:1,s:{_:1}}}}}},r:{o:{o:{m:{_:1}}}},s:{t:{a:{n:{d:{_:1,s:{_:1}}}}}}},t:{_:1,o:{n:{_:1}}}},x:{t:{_:1},u:{s:{_:1}}}},i:{b:{b:{l:{e:{_:1},i:{n:{g:{_:1}}}}}},c:{e:{_:1,l:{y:{_:1}},r:{_:1},s:{t:{_:1}},t:{i:{e:{s:{_:1}}}}},h:{e:{_:1}},k:{_:1,e:{d:{_:1},l:{_:1,s:{_:1}}},i:{t:{_:1}},n:{a:{m:{e:{_:1,d:{_:1},s:{_:1}}}}},s:{_:1}},o:{t:{i:{n:{e:{_:1}}}}}},d:{o:{k:{i:{n:{g:{_:1}}}},q:{u:{e:{e:{n:{_:1}}}}},r:{a:{n:{_:1}},i:{n:{a:{_:1},o:{_:1}}}}}},e:{c:{e:{_:1,s:{_:1}}}},f:{t:{y:{_:1}}},g:{h:{_:1,t:{_:1,c:{a:{p:{_:1}},l:{u:{b:{_:1}}}},f:{a:{l:{l:{_:1}}}},g:{o:{w:{n:{_:1}}}},h:{a:{w:{k:{_:1}}}},i:{n:{g:{a:{l:{e:{_:1}}}}}},l:{i:{f:{e:{_:1}}},y:{_:1}},m:{a:{r:{e:{_:1,s:{_:1}},i:{s:{h:{_:1}}}}}},s:{_:1,t:{a:{n:{d:{_:1}}},i:{c:{k:{_:1}}}}},t:{i:{m:{e:{_:1}}}},y:{_:1}}}},h:{i:{l:{e:{g:{o:{_:1}}},i:{s:{t:{_:1}}}}}},l:{_:1},m:{r:{o:{d:{_:1}}}},n:{c:{a:{d:{a:{_:1}}}},e:{_:1,s:{_:1},t:{a:{l:{e:{s:{_:1}}}},e:{e:{n:{_:1,t:{h:{_:1}}}}},i:{e:{s:{_:1}}},y:{_:1}}},j:{a:{_:1,s:{k:{_:1}}}},n:{y:{_:1}},t:{e:{n:{d:{o:{_:1}}}},h:{_:1}}},p:{_:1,p:{e:{d:{_:1},r:{_:1}},i:{n:{g:{_:1}}},l:{e:{_:1,s:{_:1}}},y:{_:1}}},r:{v:{a:{n:{a:{_:1}}}}},t:{e:{_:1},r:{o:{g:{e:{n:{_:1}},l:{y:{c:{e:{r:{i:{n:{_:1}}}}}}}},u:{s:{_:1}}}},t:{y:{_:1}},w:{i:{t:{_:1}}}},x:{_:1,e:{d:{_:1}}}},o:{_:1,b:{i:{l:{i:{t:{y:{_:1}}}}},l:{e:{_:1,m:{a:{n:{_:1}}}}},o:{d:{i:{e:{s:{_:1}}},y:{_:1}}}},c:{t:{o:{w:{l:{_:1}}},u:{r:{n:{a:{l:{_:1}}}}}}},d:{_:1,d:{e:{d:{_:1}},i:{n:{g:{_:1}}}},e:{_:1,s:{_:1}},s:{_:1},u:{l:{e:{s:{_:1}}}}},e:{l:{_:1}},g:{g:{i:{n:{_:1}}}},h:{_:1},i:{b:{a:{t:{_:1}}},r:{_:1},s:{e:{_:1,s:{_:1}},y:{_:1}},v:{e:{r:{n:{_:1}}}}},m:{a:{d:{_:1,i:{c:{_:1}},s:{_:1}}},e:{_:1,l:{_:1}},i:{n:{a:{l:{_:1},t:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1,s:{_:1}}}}}},e:{e:{_:1,s:{_:1}}}}}},n:{c:{h:{a:{l:{a:{n:{t:{_:1}}}}}}},e:{_:1,t:{h:{e:{l:{e:{s:{s:{_:1}}}}}}},x:{i:{s:{t:{e:{n:{t:{_:1}}}}}}}},i:{s:{s:{u:{e:{_:1}}}}},n:{e:{g:{o:{t:{i:{a:{b:{l:{e:{_:1}}}}}}}}}},s:{e:{n:{s:{e:{_:1},i:{c:{a:{l:{_:1}}}}}}},t:{o:{p:{_:1}}}},v:{i:{o:{l:{e:{n:{t:{_:1}}}}}}}},o:{_:1,d:{l:{e:{_:1,s:{_:1}}}},n:{_:1},s:{e:{_:1}}},p:{e:{_:1}},r:{_:1,d:{i:{c:{_:1}}},l:{a:{n:{d:{_:1}}}},m:{_:1,a:{l:{_:1,c:{y:{_:1}},i:{z:{e:{_:1}}},l:{y:{_:1}}}}},t:{h:{_:1,e:{a:{s:{t:{_:1,e:{r:{n:{_:1}}}}}},r:{_:1,n:{_:1}}},w:{e:{s:{t:{_:1,e:{r:{n:{_:1}}}}}}}}}},s:{_:1,e:{_:1,b:{l:{e:{e:{d:{s:{_:1}}}}}},d:{_:1,i:{v:{e:{_:1}}}},p:{a:{s:{s:{_:1}}}},s:{_:1},y:{_:1}},h:{_:1},i:{n:{g:{_:1}}},t:{a:{l:{g:{i:{a:{_:1},c:{_:1}}}}},r:{i:{l:{_:1,s:{_:1}}}}},y:{_:1}},t:{_:1,a:{b:{l:{e:{_:1},y:{_:1}}},r:{y:{_:1}},t:{i:{o:{n:{_:1}}}}},c:{h:{_:1,e:{s:{_:1}}}},e:{_:1,b:{o:{o:{k:{_:1}}}},d:{_:1},p:{a:{d:{_:1}}},s:{_:1}},h:{i:{n:{g:{_:1,s:{_:1}}}}},i:{c:{e:{_:1,a:{b:{l:{e:{_:1},y:{_:1}}}},d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}},f:{i:{c:{a:{t:{i:{o:{n:{_:1}}}}}},e:{d:{_:1}}},y:{_:1}},n:{g:{_:1}},o:{n:{_:1,s:{_:1}}}},o:{r:{i:{o:{u:{s:{_:1,l:{y:{_:1}}}}}}}},w:{i:{t:{h:{s:{t:{a:{n:{d:{i:{n:{g:{_:1}}}}}}}}}}}}},u:{g:{a:{t:{_:1}}},n:{_:1},r:{i:{s:{h:{_:1,i:{n:{g:{_:1}}},m:{e:{n:{t:{_:1}}}}}}}},s:{_:1},v:{e:{a:{u:{_:1}}}}},v:{a:{_:1},e:{l:{_:1,i:{s:{t:{_:1}}},s:{_:1},t:{y:{_:1}}}},o:{c:{a:{i:{n:{e:{_:1}}}}}}},w:{_:1,a:{d:{a:{y:{s:{_:1}}}}},h:{e:{r:{e:{_:1}}}}},x:{i:{o:{u:{s:{_:1}}}}},z:{z:{l:{e:{_:1}}}}},u:{_:1,a:{n:{c:{e:{_:1,s:{_:1}}}}},b:{_:1,i:{l:{e:{_:1}}}},c:{l:{e:{a:{r:{_:1}}}}},d:{e:{_:1,s:{_:1}},g:{e:{_:1}},i:{e:{_:1},s:{t:{_:1}},t:{y:{_:1}}}},g:{g:{e:{t:{s:{_:1}}}}},i:{s:{a:{n:{c:{e:{_:1}}}}}},k:{e:{_:1,d:{_:1},s:{_:1}}},l:{l:{_:1}},m:{b:{_:1,e:{r:{_:1,e:{d:{_:1}},s:{_:1}}},i:{n:{g:{_:1}}},n:{e:{s:{s:{_:1}}}}},e:{l:{_:1},r:{o:{u:{s:{_:1}}}}}},n:{_:1,n:{e:{r:{y:{_:1}}}},s:{_:1}},p:{t:{i:{a:{l:{_:1,s:{_:1}}}}}},r:{s:{e:{_:1,d:{_:1},r:{y:{_:1}},s:{_:1}},i:{n:{g:{_:1}}}},t:{u:{r:{e:{d:{_:1}},i:{n:{g:{_:1}}}}}}},t:{_:1,c:{a:{s:{e:{_:1}}},r:{a:{c:{k:{e:{r:{_:1}}}}}}},h:{o:{u:{s:{e:{_:1}}}}},m:{e:{g:{_:1}}},r:{i:{t:{i:{o:{n:{_:1,a:{l:{_:1}},i:{s:{t:{_:1}}}},u:{s:{_:1}}}}}}},s:{_:1,h:{e:{l:{l:{_:1}}}}},t:{i:{e:{r:{_:1}}},y:{_:1}}},z:{l:{e:{a:{f:{_:1}}}},z:{l:{e:{_:1}}}}},y:{l:{o:{n:{_:1,s:{_:1}}}},m:{p:{h:{_:1,o:{_:1,m:{a:{n:{i:{a:{c:{_:1}}}}}}}}}}}};