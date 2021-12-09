var atk = 11; // K
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("attack_K"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("attack_K_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 3);

set_window_value(atk, 1, AG_WINDOW_LENGTH, 16);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 1, AG_WINDOW_SFX, asset_get("sfx_clairen_poke_strong"));
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
set_hitbox_value(atk, 1, HG_HIT_SFX, asset_get("sfx_forsburn_cape_multihit"));

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
set_hitbox_value(atk, 2, HG_HIT_SFX, asset_get("sfx_forsburn_cape_multihit"));

//================================================================
//WORD DATA
set_window_value(UNOWN_ATK.K, 2, AG_UNOWN_WINDOW_ACTIVE, true);
if ("k" not in unown_dictionary) unown_dictionary.k = make_trie_K();
//================================================================
//contains words starting with K
#define make_trie_K()
    return {a:{_:1,b:{o:{b:{_:1}},u:{t:{o:{_:1,p:{s:{_:1}}}}}},d:{a:{b:{r:{a:{_:1}}}}},h:{u:{n:{a:{_:1}}}},i:{s:{e:{r:{_:1}}}},k:{u:{n:{a:{_:1}}}},l:{e:{_:1,i:{d:{o:{s:{c:{o:{p:{e:{_:1}}}}}}}}},o:{s:{_:1}}},n:{e:{_:1},g:{a:{r:{o:{o:{_:1}}},s:{k:{h:{a:{n:{_:1}}}}}}},t:{o:{_:1}}},o:{n:{_:1}},p:{p:{a:{_:1}},u:{t:{_:1}}},r:{a:{o:{k:{e:{_:1}}},t:{_:1,e:{_:1}}},m:{a:{_:1}},r:{a:{b:{l:{a:{s:{t:{_:1}}}}}}},t:{a:{n:{a:{_:1}}}}},s:{h:{a:{_:1},m:{i:{r:{_:1}}}},i:{b:{_:1}}},t:{_:1},y:{_:1,a:{k:{_:1,i:{n:{g:{_:1}}}}}}},e:{b:{i:{a:{_:1}}},c:{l:{e:{o:{n:{_:1}}}}},e:{_:1,l:{_:1,e:{d:{_:1}}},n:{_:1},p:{_:1,e:{r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}},s:{_:1}}},g:{_:1,s:{_:1}},i:{s:{t:{e:{r:{_:1}}}}},l:{d:{e:{o:{_:1}}},l:{y:{_:1}},p:{_:1,s:{y:{_:1}}},s:{o:{n:{_:1}}}},n:{_:1,d:{o:{_:1}},o:{_:1},t:{_:1}},p:{t:{_:1}},r:{n:{_:1},o:{s:{e:{n:{e:{_:1}}}}},r:{y:{_:1}}},t:{c:{h:{_:1,u:{p:{_:1}}}},t:{l:{e:{_:1}}}},y:{_:1,b:{o:{a:{r:{d:{_:1,s:{_:1}}}}}},c:{a:{r:{d:{_:1}}}},h:{o:{l:{e:{_:1}}}},n:{o:{t:{e:{_:1}}}},s:{_:1,t:{o:{n:{e:{_:1}}}}}}},h:{a:{k:{i:{_:1,s:{_:1}}},n:{_:1}}},i:{b:{b:{l:{e:{_:1}}},o:{s:{h:{_:1}}}},c:{k:{_:1,b:{a:{c:{k:{_:1,s:{_:1}}}},o:{x:{i:{n:{g:{_:1}}}}}},e:{d:{_:1},r:{_:1}},i:{n:{g:{_:1}}},s:{_:1},y:{_:1}}},d:{_:1,d:{e:{r:{_:1}},i:{e:{_:1,s:{_:1}},n:{g:{_:1}}},o:{_:1}},n:{a:{p:{_:1,p:{e:{d:{_:1},r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}}},s:{_:1}}},e:{y:{_:1,s:{_:1}}}},s:{_:1}},e:{l:{b:{a:{s:{a:{_:1}}}}}},l:{l:{_:1,e:{d:{_:1},r:{_:1,s:{_:1}}},i:{n:{g:{_:1,s:{_:1}}}},j:{o:{y:{_:1}}},s:{_:1}},n:{_:1},o:{_:1,m:{e:{t:{e:{r:{_:1,s:{_:1}}}}}},s:{_:1}},t:{_:1,e:{r:{_:1}}}},m:{o:{n:{o:{_:1}}}},n:{_:1,d:{_:1,e:{r:{_:1,g:{a:{r:{t:{e:{n:{_:1}},n:{e:{r:{s:{_:1}}}}}}}}},s:{t:{_:1}}},l:{i:{n:{g:{_:1}}},y:{_:1}},n:{e:{s:{s:{_:1}}}},s:{_:1}},e:{s:{i:{s:{_:1}}}},g:{_:1,d:{o:{m:{_:1,s:{_:1}}},r:{a:{_:1}}},l:{e:{r:{_:1}}},p:{i:{n:{_:1}}},s:{_:1}},k:{_:1,y:{_:1}},s:{_:1,h:{i:{p:{_:1}}}}},o:{s:{k:{_:1}}},p:{_:1},r:{k:{_:1},l:{i:{a:{_:1}}}},s:{m:{e:{t:{_:1}}},s:{_:1,a:{b:{l:{e:{_:1}}}},e:{d:{_:1},r:{_:1},s:{_:1}},i:{n:{g:{_:1}}},y:{_:1}}},t:{_:1,c:{h:{e:{n:{_:1}}}},e:{_:1,s:{_:1}},t:{e:{n:{_:1,s:{_:1}}},i:{e:{s:{_:1}}},y:{_:1}}},w:{i:{_:1}}},l:{a:{n:{g:{_:1}}},e:{f:{k:{i:{_:1}}}},i:{n:{k:{_:1,l:{a:{n:{g:{_:1}}}}}}},u:{t:{z:{_:1,y:{_:1}}}}},n:{a:{c:{k:{_:1}},p:{s:{a:{c:{k:{_:1}}}}}},e:{e:{_:1,c:{a:{p:{_:1,s:{_:1}}}},d:{_:1},l:{_:1,i:{n:{g:{_:1}}}},s:{_:1}},l:{t:{_:1}},w:{_:1}},i:{c:{k:{e:{r:{s:{_:1}}},k:{n:{a:{c:{k:{s:{_:1}}}}}}}},f:{e:{_:1,d:{_:1}}},g:{h:{t:{_:1,s:{_:1}}}},t:{_:1,t:{e:{d:{_:1}},i:{n:{g:{_:1}}}}},v:{e:{s:{_:1}}}},o:{b:{_:1,b:{y:{_:1}},s:{_:1}},c:{k:{_:1,d:{o:{w:{n:{_:1}}}},e:{d:{_:1},r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}},o:{f:{f:{_:1}},u:{t:{_:1}}},s:{_:1}}},l:{l:{_:1}},t:{_:1,s:{_:1},t:{e:{d:{_:1}}}},w:{_:1,i:{n:{g:{_:1,l:{y:{_:1}}}}},l:{e:{d:{g:{e:{_:1,a:{b:{l:{e:{_:1}}}}}}}}},n:{_:1},s:{_:1}}},u:{c:{k:{l:{e:{_:1,h:{e:{a:{d:{_:1}}}},s:{_:1}}}}}}},o:{a:{l:{a:{_:1}}},b:{o:{_:1}},f:{f:{i:{n:{g:{_:1}}}}},i:{_:1},m:{a:{l:{a:{_:1}}},m:{o:{o:{_:1}}}},o:{k:{s:{_:1},y:{_:1}}},s:{h:{e:{r:{_:1}}},s:{_:1}}},r:{a:{b:{b:{y:{_:1}}},f:{t:{_:1}},g:{g:{_:1}}},e:{m:{l:{i:{n:{_:1}}}}},i:{c:{k:{e:{t:{o:{t:{_:1}},u:{n:{e:{_:1}}}}}}},s:{_:1}},o:{k:{o:{r:{o:{k:{_:1}}}}},n:{e:{r:{_:1}}},o:{k:{o:{d:{i:{l:{e:{_:1}}}}}}}}},u:{b:{f:{u:{_:1}}},d:{o:{s:{_:1}}},k:{u:{i:{_:1}}}},y:{o:{g:{r:{e:{_:1}}},t:{o:{_:1}}},u:{r:{e:{m:{_:1}}}}}};