var atk = 15;// O
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("attack_O"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("attack_O_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 3);

set_window_value(atk, 1, AG_WINDOW_LENGTH, 6);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(atk, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(atk, 2, AG_WINDOW_LENGTH, 16);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(atk, 3, AG_WINDOW_LENGTH, 8);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(atk, 4);

set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 1, HG_WINDOW, 2);
set_hitbox_value(atk, 1, HG_LIFETIME, 2);
set_hitbox_value(atk, 1, HG_HITBOX_X, -4);
set_hitbox_value(atk, 1, HG_HITBOX_Y, -36);
set_hitbox_value(atk, 1, HG_WIDTH, 85);
set_hitbox_value(atk, 1, HG_HEIGHT, 85);
set_hitbox_value(atk, 1, HG_PRIORITY, 2);
set_hitbox_value(atk, 1, HG_DAMAGE, 1);
set_hitbox_value(atk, 1, HG_ANGLE, 45);
set_hitbox_value(atk, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(atk, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(atk, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(atk, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(atk, 2, HG_WINDOW, 2);
set_hitbox_value(atk, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(atk, 2, HG_LIFETIME, 2);
set_hitbox_value(atk, 2, HG_HITBOX_X, -4);
set_hitbox_value(atk, 2, HG_HITBOX_Y, -28);
set_hitbox_value(atk, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(atk, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(atk, 3, HG_WINDOW, 2);
set_hitbox_value(atk, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(atk, 3, HG_LIFETIME, 2);
set_hitbox_value(atk, 3, HG_HITBOX_X, 2);
set_hitbox_value(atk, 3, HG_HITBOX_Y, -30);
set_hitbox_value(atk, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(atk, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 4, HG_WINDOW, 2);
set_hitbox_value(atk, 4, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(atk, 4, HG_LIFETIME, 4);
set_hitbox_value(atk, 4, HG_HITBOX_X, 0);
set_hitbox_value(atk, 4, HG_HITBOX_Y, -32);
set_hitbox_value(atk, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, 4, HG_WIDTH, 72);
set_hitbox_value(atk, 4, HG_HEIGHT, 72);
set_hitbox_value(atk, 4, HG_PRIORITY, 2);
set_hitbox_value(atk, 4, HG_DAMAGE, 3);
set_hitbox_value(atk, 4, HG_ANGLE, 60);
set_hitbox_value(atk, 4, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(atk, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, 4, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(atk, 4, HG_UNOWN_DAMAGE_BONUS, 4);
set_hitbox_value(atk, 4, HG_UNOWN_KNOCKBACK_BONUS, 1);
set_hitbox_value(atk, 4, HG_UNOWN_SCALING_BONUS, 0.10);
set_hitbox_value(atk, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(atk, 4, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(atk, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(atk, 4, HG_HITBOX_GROUP, -1);

//================================================================
//WORD DATA
set_window_value(UNOWN_ATK.O, 2, AG_UNOWN_WINDOW_ACTIVE, true);
if ("o" not in unown_dictionary) unown_dictionary.o = make_trie_O();
//================================================================
//contains words starting with O
#define make_trie_O()
    return {a:{f:{_:1},k:{_:1,s:{_:1}},r:{_:1,s:{_:1}},s:{i:{s:{_:1}}},t:{h:{_:1,s:{_:1}},m:{e:{a:{l:{_:1}}}},s:{_:1}}},b:{e:{s:{e:{_:1}},y:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}}}},i:{_:1,t:{s:{_:1},u:{a:{r:{y:{_:1}}}}}},j:{e:{c:{t:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1,a:{b:{l:{e:{_:1}}}},s:{_:1}}},v:{e:{_:1,s:{_:1}},i:{t:{y:{_:1}}}}},s:{_:1}}}}},l:{i:{g:{a:{t:{e:{d:{_:1}},i:{o:{n:{_:1,s:{_:1}}}},o:{r:{y:{_:1}}}}},e:{_:1,d:{_:1}}},q:{u:{e:{_:1}}},t:{e:{r:{a:{t:{e:{_:1,d:{_:1}}}}}}},v:{i:{o:{n:{_:1},u:{s:{_:1}}}}}}},n:{o:{x:{i:{o:{u:{s:{_:1}}}}}}},o:{e:{_:1}},s:{c:{e:{n:{e:{_:1},i:{t:{i:{e:{s:{_:1}}},y:{_:1}}}}},u:{r:{e:{_:1,d:{_:1}},i:{t:{y:{_:1}}}}}},e:{r:{v:{a:{b:{l:{e:{_:1}}},n:{t:{_:1}},t:{i:{o:{n:{_:1,s:{_:1}}}},o:{r:{y:{_:1}}}}},e:{_:1,d:{_:1},r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}}}},s:{s:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1,s:{_:1}}},v:{e:{_:1,l:{y:{_:1}}}}}}}},o:{l:{e:{t:{e:{_:1}}}}},t:{a:{c:{l:{e:{_:1,s:{_:1}}}},g:{o:{o:{n:{_:1}}}}},e:{t:{r:{i:{c:{i:{a:{n:{_:1}}}}}}}},i:{n:{a:{t:{e:{_:1}}}}},r:{u:{c:{t:{e:{d:{_:1}},i:{o:{n:{_:1}}}}}}}}},t:{a:{i:{n:{_:1,e:{d:{_:1}}}}},u:{s:{e:{_:1}}}},v:{i:{o:{u:{s:{_:1,l:{y:{_:1}}}}}}}},c:{c:{a:{s:{i:{o:{n:{_:1,a:{l:{_:1,l:{y:{_:1}}}},s:{_:1}}}}}},u:{l:{t:{_:1}},p:{a:{n:{c:{y:{_:1}},t:{_:1,s:{_:1}}},t:{i:{o:{n:{_:1,a:{l:{_:1}},s:{_:1}}}}}},i:{e:{d:{_:1}}},y:{_:1,i:{n:{g:{_:1}}}}},r:{_:1,r:{e:{d:{_:1},n:{c:{e:{_:1,s:{_:1}}}}}},s:{_:1}}}},e:{a:{n:{_:1,o:{g:{r:{a:{p:{h:{i:{c:{_:1}}}}}}}},s:{_:1}}}},t:{a:{n:{e:{_:1}}},o:{p:{u:{s:{_:1}}}},i:{l:{l:{e:{r:{y:{_:1}}}}}}}},d:{_:1,d:{_:1,b:{a:{l:{l:{_:1}}}},e:{s:{t:{_:1}}},i:{t:{y:{_:1},i:{e:{s:{_:1}}}},s:{h:{_:1}}},l:{y:{_:1}},s:{_:1}},e:{_:1},i:{o:{u:{s:{_:1}}}},o:{r:{_:1,l:{e:{s:{s:{_:1}}}}}},y:{s:{s:{e:{y:{_:1}}}}}},e:{d:{i:{p:{a:{l:{_:1}}}}}},f:{_:1,f:{_:1,b:{e:{a:{t:{_:1}}}},e:{n:{c:{e:{_:1}},d:{_:1,e:{d:{_:1},r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}},s:{_:1}},s:{e:{_:1},i:{v:{e:{_:1}}}}},r:{_:1,e:{d:{_:1}},i:{n:{g:{_:1,s:{_:1}}}},s:{_:1}}},i:{c:{e:{_:1,r:{_:1,s:{_:1}},s:{_:1}},i:{a:{l:{_:1,l:{y:{_:1}},s:{_:1}},t:{e:{_:1}}}}},n:{g:{_:1}}},s:{_:1,e:{t:{_:1}},h:{o:{r:{e:{_:1}}}},p:{r:{i:{n:{g:{_:1}}}}}}},t:{e:{n:{_:1,t:{i:{m:{e:{s:{_:1}}}}}}}}},g:{l:{e:{_:1},i:{n:{g:{_:1}}}},r:{e:{_:1,s:{_:1}}}},h:{_:1,m:{_:1},o:{_:1}},i:{l:{_:1,e:{d:{_:1}},s:{_:1},y:{_:1}},n:{k:{_:1},t:{m:{e:{n:{t:{_:1}}}}}}},k:{a:{y:{_:1,e:{d:{_:1}}}},e:{y:{d:{o:{k:{e:{y:{_:1}}}}}}},r:{a:{_:1}}},l:{d:{_:1,e:{n:{_:1},r:{_:1},s:{t:{_:1}}},i:{e:{_:1}},s:{_:1}},e:{_:1,a:{n:{a:{_:1}}}},f:{a:{c:{t:{o:{r:{y:{_:1}}}}}}},i:{v:{e:{_:1,s:{_:1}}}},y:{m:{p:{i:{a:{_:1}}}}}},m:{_:1,e:{g:{a:{_:1}},l:{e:{t:{_:1,t:{e:{_:1,s:{_:1}}}}}},n:{_:1,s:{_:1}}},i:{n:{o:{u:{s:{_:1}}}},t:{t:{e:{d:{_:1}}}}},n:{i:{p:{o:{t:{e:{n:{t:{_:1}}}}}}}},a:{n:{y:{t:{e:{_:1}}}},s:{t:{a:{r:{_:1}}}}}},n:{_:1,b:{o:{a:{r:{d:{_:1}}}}},c:{e:{_:1},o:{l:{o:{g:{y:{_:1}}}},m:{i:{n:{g:{_:1}}}}}},e:{_:1,s:{_:1,e:{l:{f:{_:1}}}}},g:{o:{i:{n:{g:{_:1}}}}},i:{o:{n:{_:1,s:{_:1}}},x:{_:1}},l:{y:{_:1}},s:{t:{a:{g:{e:{_:1}}}}},t:{o:{_:1}},w:{a:{r:{d:{_:1}}}}},o:{d:{l:{e:{s:{_:1}}}},h:{_:1},m:{p:{h:{_:1}}},p:{s:{_:1}},z:{e:{_:1},i:{n:{g:{_:1}}}}},p:{_:1,a:{l:{_:1}},e:{n:{_:1,e:{d:{_:1},r:{_:1,s:{_:1}}},i:{n:{g:{_:1,s:{_:1}}}},l:{y:{_:1}},n:{e:{s:{s:{_:1}}}},s:{_:1}},r:{a:{_:1,s:{_:1},t:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1,a:{l:{_:1}},s:{_:1}}},v:{e:{_:1,s:{_:1}}}},o:{r:{_:1}}}}}},i:{n:{i:{o:{n:{_:1,a:{t:{e:{d:{_:1}}}},s:{_:1}}}}},u:{m:{_:1}}},p:{o:{n:{e:{n:{t:{_:1,s:{_:1}}}}},r:{t:{u:{n:{e:{_:1},i:{s:{t:{_:1}},t:{i:{e:{s:{_:1}}},y:{_:1}}}}}}},s:{a:{b:{l:{e:{_:1}}}},e:{_:1,d:{_:1}},i:{n:{g:{_:1}},t:{e:{_:1,s:{_:1}},i:{o:{n:{_:1}}}}}}},r:{e:{s:{s:{_:1,i:{o:{n:{_:1}},v:{e:{_:1}}}}}}}},s:{_:1},t:{e:{d:{_:1}},i:{c:{_:1},m:{i:{s:{m:{_:1},t:{_:1,i:{c:{_:1}}}}},u:{m:{_:1}}},o:{n:{_:1,a:{l:{_:1}},s:{_:1}}}},o:{m:{e:{t:{r:{i:{s:{t:{_:1}}}}}}}}},u:{s:{_:1}}},r:{_:1,a:{c:{l:{e:{_:1,s:{_:1}}}},l:{_:1,l:{y:{_:1}}},n:{g:{e:{_:1,s:{_:1}},u:{r:{u:{_:1}}}}},t:{o:{r:{_:1}}}},b:{_:1,e:{d:{_:1},e:{t:{l:{e:{_:1}}}}},i:{n:{g:{_:1}},t:{_:1,a:{l:{_:1}},i:{n:{g:{_:1}}}}},s:{_:1}},c:{h:{a:{r:{d:{_:1}}},e:{s:{t:{r:{a:{_:1,t:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}}}}}}}}}},a:{n:{e:{_:1}}}},d:{e:{a:{l:{_:1}},r:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},l:{i:{e:{s:{_:1}}},y:{_:1}},s:{_:1}}},i:{n:{a:{n:{c:{e:{_:1}}},r:{i:{l:{y:{_:1}}},y:{_:1}},t:{e:{_:1,s:{_:1}}}}}},n:{a:{n:{c:{e:{_:1}}}}}},e:{_:1,g:{a:{n:{o:{_:1}}}}},g:{a:{n:{_:1,i:{c:{_:1},s:{a:{t:{i:{o:{n:{_:1}}}}},e:{_:1,d:{_:1}},m:{_:1,s:{_:1}}},z:{a:{t:{i:{o:{n:{_:1,s:{_:1}}}}}},e:{_:1,d:{_:1},r:{_:1}},i:{n:{g:{_:1}}}}},s:{_:1}}}},i:{e:{n:{t:{a:{l:{_:1},t:{i:{o:{n:{_:1}}}}},e:{d:{_:1},e:{r:{i:{n:{g:{_:1}}}}}}}}},g:{a:{m:{i:{_:1}}},i:{n:{_:1,a:{l:{_:1,i:{t:{y:{_:1}}},l:{y:{_:1}},s:{_:1}},t:{i:{n:{g:{_:1}}}}},s:{_:1}}}},o:{l:{e:{s:{_:1}}}},_:1,c:{o:{r:{i:{o:{_:1}}}}}},n:{a:{m:{e:{n:{t:{_:1,a:{l:{_:1}},s:{_:1}}}}},t:{e:{_:1}}},e:{r:{y:{_:1}}}},p:{h:{a:{n:{_:1,a:{g:{e:{_:1}}},e:{d:{_:1}},s:{_:1}}}}},t:{_:1,h:{o:{d:{o:{n:{t:{i:{s:{t:{_:1}}}}},x:{_:1}}},p:{e:{d:{i:{c:{_:1}}}}}}}}},s:{_:1,e:{_:1},t:{e:{n:{s:{i:{b:{l:{y:{_:1}}}}}}},r:{a:{c:{i:{z:{e:{d:{_:1}}}}}},i:{c:{h:{_:1}}}}},h:{a:{w:{o:{t:{t:{_:1}}}}}}},t:{h:{e:{r:{_:1,s:{_:1},w:{i:{s:{e:{_:1}}},o:{r:{l:{d:{l:{y:{_:1}}}}}}}}}},t:{e:{r:{_:1}},o:{_:1,m:{a:{n:{_:1}}}}}},u:{c:{h:{_:1}},g:{h:{t:{_:1}}},n:{c:{e:{_:1,s:{_:1}}}},r:{_:1,s:{_:1,e:{l:{v:{e:{s:{_:1}}}}}}},t:{_:1,a:{g:{e:{_:1}}},b:{a:{c:{k:{_:1}}},i:{d:{_:1}},o:{u:{n:{d:{_:1}}}},r:{e:{a:{k:{_:1}}}},u:{r:{s:{t:{_:1}}}}},c:{a:{s:{t:{_:1,s:{_:1}}}},o:{m:{e:{_:1}}}},d:{a:{t:{e:{d:{_:1}}}},i:{d:{_:1}},o:{_:1,n:{e:{_:1}},o:{r:{_:1,s:{_:1,y:{_:1}}}}}},e:{r:{_:1}},f:{i:{e:{l:{d:{_:1}}},t:{_:1,s:{_:1},t:{e:{d:{_:1}}}}}},g:{o:{i:{n:{g:{_:1}}}},r:{e:{w:{_:1}},o:{w:{_:1,n:{_:1}}}}},h:{o:{u:{s:{e:{_:1}}}}},i:{n:{g:{_:1}}},l:{a:{n:{d:{e:{r:{_:1}},i:{s:{h:{_:1}}}}},s:{t:{_:1}},w:{_:1,e:{d:{_:1}},s:{_:1}}},e:{t:{_:1,s:{_:1}}},i:{n:{e:{_:1,d:{_:1},s:{_:1}}},v:{e:{_:1,d:{_:1}}}},o:{o:{k:{_:1}}}},n:{u:{m:{b:{e:{r:{_:1,e:{d:{_:1}}}}}}}},p:{a:{t:{i:{e:{n:{t:{_:1}}}}}},o:{s:{t:{_:1}},u:{r:{i:{n:{g:{_:1}}}}}}},r:{a:{g:{e:{_:1,d:{_:1},o:{u:{s:{_:1,l:{y:{_:1}}}}}}},n:{k:{_:1}}},i:{g:{h:{t:{_:1}}}},u:{n:{_:1}}},s:{_:1,e:{t:{_:1}},i:{d:{e:{_:1,r:{_:1,s:{_:1}}}}},k:{i:{r:{t:{s:{_:1}}}}},m:{a:{r:{t:{e:{d:{_:1}}}}}},p:{o:{k:{e:{n:{_:1}}}}},t:{a:{n:{d:{i:{n:{g:{_:1}}}}}}}},v:{o:{t:{e:{d:{_:1}}}}},w:{a:{r:{d:{_:1}}},e:{i:{g:{h:{_:1}}}},i:{t:{_:1,t:{e:{d:{_:1}}}}}}}},v:{a:{l:{_:1},r:{i:{a:{n:{_:1}},e:{s:{_:1}}}},t:{i:{o:{n:{_:1}}}}},e:{n:{_:1},r:{_:1,a:{c:{h:{i:{e:{v:{e:{r:{_:1}}}}}},t:{i:{v:{e:{_:1}}}}},l:{l:{_:1,s:{_:1}}},n:{x:{i:{o:{u:{s:{_:1}}}}}}},b:{e:{a:{r:{i:{n:{g:{_:1}}}}}},i:{t:{e:{_:1}}},l:{o:{w:{n:{_:1}}}},o:{a:{r:{d:{_:1}}}}},c:{a:{m:{e:{_:1}},s:{t:{_:1}}},h:{a:{r:{g:{e:{_:1}}}}},o:{m:{e:{_:1},i:{n:{g:{_:1}}},p:{e:{n:{s:{a:{t:{i:{n:{g:{_:1}}}}}}}}}},o:{k:{e:{d:{_:1}}}}},r:{o:{w:{d:{e:{d:{_:1}}}}}}},d:{i:{d:{_:1}},o:{_:1,n:{e:{_:1}},s:{e:{_:1,d:{_:1}}}},r:{e:{s:{s:{e:{d:{_:1}}}}},i:{v:{e:{_:1}}}},u:{e:{_:1}}},e:{s:{t:{i:{m:{a:{t:{e:{_:1,d:{_:1}}}}}}}},x:{c:{i:{t:{e:{d:{_:1}}}}}}},f:{l:{o:{w:{_:1,i:{n:{g:{_:1}}}}}}},g:{r:{o:{w:{n:{_:1}}}}},h:{a:{u:{l:{_:1}}},e:{a:{d:{_:1},r:{_:1,d:{_:1},i:{n:{g:{_:1}}}},t:{e:{d:{_:1}},i:{n:{g:{_:1}}}}}}},j:{o:{y:{e:{d:{_:1}}}}},k:{i:{l:{l:{_:1}}}},l:{a:{p:{_:1,p:{i:{n:{g:{_:1}}}}}},o:{a:{d:{_:1}},o:{k:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}}}}},y:{_:1}},n:{i:{g:{h:{t:{_:1,s:{_:1}}}}}},p:{a:{i:{d:{_:1}},s:{s:{_:1}}},o:{w:{e:{r:{_:1}}}},r:{i:{c:{e:{d:{_:1}}}},o:{t:{e:{c:{t:{i:{v:{e:{_:1}}}}}}}}}},q:{u:{a:{l:{i:{f:{i:{e:{d:{_:1}}}}}}}}},r:{a:{t:{e:{d:{_:1}}}},e:{a:{c:{t:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1}}}}}}},i:{d:{e:{_:1}}},u:{l:{e:{_:1,d:{_:1}}},n:{_:1}}},s:{e:{a:{s:{_:1}},e:{_:1,i:{n:{g:{_:1}}}},n:{s:{i:{t:{i:{v:{e:{_:1}}}}}}}},i:{g:{h:{t:{_:1}}},z:{e:{d:{_:1}}}},l:{e:{e:{p:{_:1}},p:{t:{_:1}}}},t:{a:{t:{i:{n:{g:{_:1}}}},y:{_:1,e:{d:{_:1}}}},e:{p:{_:1,p:{i:{n:{g:{_:1}}}}}},r:{e:{s:{s:{_:1}}}}}},t:{a:{k:{e:{n:{_:1}}}},h:{i:{n:{k:{_:1}}}},i:{m:{e:{_:1}},r:{e:{d:{_:1}}}},u:{r:{e:{s:{_:1}},n:{e:{d:{_:1}}}}}},v:{i:{e:{w:{_:1}}}},w:{e:{i:{g:{h:{t:{_:1}}}}},h:{e:{l:{m:{_:1,e:{d:{_:1}},i:{n:{g:{_:1,l:{y:{_:1}}}}},s:{_:1}}}}},o:{r:{k:{e:{d:{_:1}}}}},r:{o:{u:{g:{h:{t:{_:1}}}}}}}}},u:{l:{a:{t:{i:{n:{g:{_:1}}}}}}}},w:{_:1,e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}},l:{_:1,s:{_:1}},n:{_:1,e:{d:{_:1},r:{_:1,s:{_:1,h:{i:{p:{_:1}}}}}},i:{n:{g:{_:1}}},s:{_:1}}},x:{_:1,e:{n:{_:1}},f:{o:{r:{d:{_:1}}}},y:{g:{e:{n:{_:1}}},m:{o:{r:{o:{n:{_:1}}}}}}},y:{_:1,e:{z:{_:1}},s:{t:{e:{r:{_:1,s:{_:1}}}}}},z:{o:{n:{e:{_:1}}}}};