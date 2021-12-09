var atk = 22; // V
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("attack_V"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("attack_V_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 3);

set_window_value(atk, 1, AG_WINDOW_LENGTH, 8);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(atk, 1, AG_WINDOW_SFX_FRAME, get_window_value(atk, 1, AG_WINDOW_LENGTH) - 1);

set_window_value(atk, 2, AG_WINDOW_LENGTH, 8);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(atk, 3, AG_WINDOW_LENGTH, 10);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

//fastfalling
set_window_value(atk, 4, AG_WINDOW_LENGTH, 6);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAME_START, 4);

set_num_hitboxes(atk, 1);

set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 1, HG_WINDOW, 2);
set_hitbox_value(atk, 1, HG_LIFETIME, 8);
set_hitbox_value(atk, 1, HG_HITBOX_Y, -56);
set_hitbox_value(atk, 1, HG_WIDTH, 64);
set_hitbox_value(atk, 1, HG_HEIGHT, 64);
set_hitbox_value(atk, 1, HG_PRIORITY, 2);
set_hitbox_value(atk, 1, HG_DAMAGE, 4);
set_hitbox_value(atk, 1, HG_ANGLE, 90);
set_hitbox_value(atk, 1, HG_HITSTUN_MULTIPLIER, 0.35);
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, .25);
set_hitbox_value(atk, 1, HG_UNOWN_DAMAGE_BONUS, 4);
set_hitbox_value(atk, 1, HG_UNOWN_KNOCKBACK_BONUS, 2);
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(atk, 1, HG_HIT_SFX, sound_get("sonic_bumper"));

//================================================================
//WORD DATA
set_window_value(UNOWN_ATK.V, 2, AG_UNOWN_WINDOW_ACTIVE, true);
if ("v" not in unown_dictionary) unown_dictionary.v = make_trie_V();
//================================================================
//contains words starting with V
#define make_trie_V()
    return {a:{c:{a:{n:{c:{i:{e:{s:{_:1}}}},t:{_:1}},t:{e:{_:1,d:{_:1}},i:{o:{n:{_:1,i:{n:{g:{_:1}}},s:{_:1}}}}}},c:{i:{n:{a:{t:{e:{d:{_:1}},i:{o:{n:{_:1}}}}},e:{_:1}}}},u:{u:{m:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}}}}}},g:{a:{b:{o:{n:{d:{_:1}}}}},u:{e:{_:1,l:{y:{_:1}},s:{t:{_:1}}}}},i:{l:{_:1},n:{_:1}},l:{e:{n:{t:{i:{n:{e:{_:1,s:{_:1}}}}}},t:{_:1}},i:{a:{n:{t:{_:1}}},d:{_:1,a:{t:{e:{_:1,d:{_:1}}}},i:{t:{y:{_:1}}}},s:{e:{_:1}}},l:{e:{y:{_:1}}},o:{r:{_:1}},u:{a:{b:{l:{e:{_:1,s:{_:1}}}}},e:{_:1,d:{_:1},s:{_:1}}},v:{e:{_:1,s:{_:1}}}},m:{o:{o:{s:{e:{_:1}}}},p:{_:1,i:{r:{e:{_:1,s:{_:1}}}},s:{_:1}}},n:{_:1,d:{a:{l:{i:{s:{m:{_:1}},z:{e:{d:{_:1}}}},s:{_:1}}}},g:{u:{a:{r:{d:{_:1}}}}},i:{l:{l:{a:{_:1},i:{s:{h:{_:1}},t:{e:{_:1}}},u:{x:{e:{_:1}}}}},s:{h:{_:1,e:{d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}},t:{y:{_:1}}},q:{u:{i:{s:{h:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}}}}}}},t:{a:{g:{e:{_:1}}}}},p:{i:{d:{_:1}},o:{r:{e:{o:{n:{_:1}}},i:{z:{e:{_:1,d:{_:1}}}}}}},r:{i:{a:{b:{l:{e:{_:1,s:{_:1}}}},n:{c:{e:{_:1}},t:{_:1}},t:{i:{o:{n:{s:{_:1}}}}}},c:{o:{s:{e:{_:1}}}},e:{d:{_:1},s:{_:1},t:{y:{_:1}}},o:{u:{s:{_:1}}}},n:{i:{s:{h:{_:1}}}},s:{i:{t:{y:{_:1}}}},y:{_:1}},s:{c:{u:{l:{a:{r:{_:1}}}}},e:{_:1,c:{t:{o:{m:{y:{_:1}}}}}},t:{_:1,l:{y:{_:1}}}},t:{_:1},u:{l:{t:{_:1}}}},e:{a:{l:{_:1}},c:{t:{o:{r:{_:1}}}},e:{_:1,r:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}}},v:{e:{e:{_:1}}}},g:{_:1,a:{n:{_:1}},e:{t:{a:{b:{l:{e:{_:1,s:{_:1}}}},r:{i:{a:{n:{_:1,s:{_:1}}}}},t:{i:{v:{e:{_:1}}}}}}},g:{i:{e:{s:{_:1}}}}},h:{i:{c:{l:{e:{_:1,s:{_:1}}},u:{l:{a:{r:{_:1}}}}}}},i:{l:{_:1,e:{d:{_:1}},s:{_:1}},n:{_:1,s:{_:1}}},l:{o:{c:{i:{t:{y:{_:1}}}}},v:{e:{t:{_:1}}}},n:{d:{e:{t:{t:{a:{_:1,s:{_:1}}}}},i:{n:{g:{_:1}}},o:{r:{_:1,s:{_:1}}}},e:{e:{r:{_:1}},r:{a:{b:{l:{e:{_:1}}}},e:{a:{l:{_:1}}}},t:{i:{a:{n:{_:1}}}}},g:{e:{a:{n:{c:{e:{_:1}}}},f:{u:{l:{_:1}}}}},i:{p:{e:{d:{e:{_:1}}}},s:{o:{n:{_:1}}}},o:{m:{_:1,o:{t:{h:{_:1}},u:{s:{_:1}}}},n:{a:{t:{_:1}}},s:{h:{o:{c:{k:{_:1}}}}}},t:{_:1,e:{d:{_:1}},i:{l:{a:{t:{e:{_:1,d:{_:1}},i:{o:{n:{_:1}}},o:{r:{_:1}}}}},n:{g:{_:1}}},r:{i:{c:{l:{e:{_:1}},u:{l:{a:{r:{_:1}}}}},l:{o:{q:{u:{i:{s:{m:{_:1},t:{_:1}}}}}}}}},s:{_:1},u:{r:{e:{_:1,s:{_:1}}}}},u:{e:{_:1,s:{_:1}},s:{a:{u:{r:{_:1}}}}}},r:{a:{_:1,c:{i:{t:{y:{_:1}}}},n:{d:{a:{_:1}}}},b:{a:{l:{_:1,l:{y:{_:1}}},t:{i:{m:{_:1}}}},s:{_:1}},d:{i:{c:{t:{_:1}}}},g:{e:{_:1,r:{_:1}}},i:{f:{i:{c:{a:{t:{i:{o:{n:{_:1}}}}}},e:{d:{_:1}}},y:{_:1}},l:{y:{_:1}},t:{a:{b:{l:{e:{_:1}}},s:{_:1}}}},m:{e:{i:{l:{_:1}}},i:{n:{_:1}},o:{u:{t:{h:{_:1}}}}},n:{a:{c:{u:{l:{a:{r:{_:1}}}}}}},o:{n:{i:{c:{a:{_:1}}}}},s:{a:{t:{i:{l:{e:{_:1}}}}},e:{_:1,d:{_:1}},i:{o:{n:{_:1,s:{_:1}}}},u:{s:{_:1}}},t:{e:{b:{r:{a:{e:{_:1}}}}},i:{c:{a:{l:{_:1,l:{y:{_:1}}}}},g:{o:{_:1}}}},y:{_:1}},s:{p:{e:{r:{s:{_:1}}},i:{q:{u:{e:{n:{_:1}}}}}},s:{e:{l:{_:1,s:{_:1}}}},t:{_:1,a:{_:1},e:{d:{_:1}},i:{b:{u:{l:{e:{_:1}}}},g:{i:{a:{l:{_:1}}}}},s:{_:1}}},t:{_:1,e:{r:{a:{n:{_:1,s:{_:1}}},i:{n:{a:{r:{i:{a:{n:{_:1}}},y:{_:1}}}}}}},o:{_:1,e:{d:{_:1}}},s:{_:1},t:{e:{d:{_:1}}}}},i:{a:{_:1,b:{l:{e:{_:1}}},l:{_:1,s:{_:1}}},b:{e:{_:1,s:{_:1}},r:{a:{n:{t:{_:1}},t:{i:{n:{g:{_:1}},o:{n:{s:{_:1}}}},o:{r:{_:1}}},v:{a:{_:1}}}}},c:{a:{r:{_:1,i:{o:{u:{s:{l:{y:{_:1}}}}}}}},e:{_:1,r:{o:{y:{_:1}}}},i:{n:{i:{t:{y:{_:1}}}},o:{u:{s:{_:1,n:{e:{s:{s:{_:1}}}}}}}},t:{i:{m:{_:1,l:{e:{s:{s:{_:1}}}},s:{_:1}},n:{i:{_:1}}},o:{r:{_:1,i:{a:{_:1},e:{s:{_:1}},o:{u:{s:{_:1}}}},y:{_:1}}},r:{e:{e:{b:{e:{l:{_:1}}}}}}}},d:{e:{o:{_:1,s:{_:1},t:{a:{p:{e:{_:1,d:{_:1},s:{_:1}}}}}}}},e:{_:1,w:{_:1,e:{d:{_:1},r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}},p:{o:{i:{n:{t:{_:1}}}}},s:{_:1}}},g:{_:1,i:{l:{_:1,a:{n:{c:{e:{_:1}},t:{_:1,e:{_:1}}}}}},o:{r:{_:1,o:{t:{h:{_:1}},u:{s:{l:{y:{_:1}}}}}}}},k:{a:{v:{o:{l:{t:{_:1}}}}},i:{n:{g:{_:1}}}},l:{e:{_:1,p:{l:{u:{m:{e:{_:1}}}}}},l:{_:1,a:{_:1,g:{e:{_:1,r:{s:{_:1}},s:{_:1}}},i:{n:{_:1,s:{_:1}}},s:{_:1}}}},n:{d:{i:{c:{a:{t:{e:{d:{_:1}},i:{o:{n:{_:1}}}}},t:{i:{v:{e:{_:1,n:{e:{s:{s:{_:1}}}}}}}}}}},e:{_:1,g:{a:{r:{_:1}}},y:{a:{r:{d:{s:{_:1}}}}}},o:{_:1},t:{a:{g:{e:{_:1}}}},y:{l:{_:1}}},o:{l:{a:{_:1,t:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1,s:{_:1}}}}}},e:{n:{c:{e:{_:1}},t:{_:1,l:{y:{_:1}}}},t:{_:1,s:{_:1}}},i:{n:{_:1,i:{s:{t:{_:1}}},s:{_:1}}}}},p:{e:{r:{_:1,s:{_:1}}}},r:{a:{l:{_:1}},g:{i:{n:{_:1,a:{l:{_:1}},i:{t:{y:{_:1}}},s:{_:1}}}},i:{l:{e:{_:1}},z:{i:{o:{n:{_:1}}}}},t:{u:{a:{l:{_:1,l:{y:{_:1}}}},e:{_:1},o:{s:{o:{_:1}},u:{s:{_:1}}}}},u:{l:{e:{n:{t:{_:1}}}},s:{_:1,e:{s:{_:1}}}}},s:{_:1,a:{_:1,g:{e:{_:1}},s:{_:1}},c:{e:{r:{a:{l:{_:1}}}},o:{u:{n:{t:{_:1}},s:{_:1}}}},i:{b:{i:{l:{i:{t:{y:{_:1}}}}},l:{e:{_:1}}},o:{n:{_:1,s:{_:1}}},t:{_:1,a:{t:{i:{o:{n:{_:1}}}}},e:{d:{_:1}},i:{n:{g:{_:1}}},o:{r:{_:1,s:{_:1}}},s:{_:1}}},o:{r:{_:1}},t:{a:{_:1}},u:{a:{l:{_:1,i:{z:{e:{_:1},i:{n:{g:{_:1}}}}},l:{y:{_:1}},s:{_:1}}}}},t:{a:{l:{_:1,i:{t:{y:{_:1}}},l:{y:{_:1}},s:{_:1}},m:{i:{n:{_:1,s:{_:1}}}}}},v:{a:{_:1,c:{i:{o:{u:{s:{_:1}}}}}},e:{_:1},i:{d:{_:1},l:{l:{o:{n:{_:1}}}}}},x:{e:{n:{_:1,s:{_:1}}}}},o:{c:{a:{b:{u:{l:{a:{r:{y:{_:1}}}}}},l:{_:1,i:{s:{t:{_:1}}},s:{_:1}},t:{i:{o:{n:{_:1,a:{l:{_:1}}}}}}}},d:{k:{a:{_:1}}},g:{u:{e:{_:1}}},i:{c:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}},d:{_:1},l:{a:{_:1}}},l:{a:{n:{t:{_:1}},t:{i:{l:{e:{_:1}}}}},b:{e:{a:{t:{_:1}}}},c:{a:{n:{i:{c:{_:1},o:{n:{_:1}}},o:{_:1,e:{s:{_:1}}}},r:{o:{n:{a:{_:1}}}}}},i:{t:{i:{o:{n:{_:1}}}}},l:{e:{y:{_:1,b:{a:{l:{l:{_:1}}}}}}},t:{_:1,a:{g:{e:{_:1}}},o:{r:{b:{_:1}}},s:{_:1}},u:{m:{e:{_:1,s:{_:1}}},n:{t:{a:{r:{i:{l:{y:{_:1}}},y:{_:1}}},e:{e:{r:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}}}}}}},m:{i:{t:{_:1,i:{n:{g:{_:1}}}}}},o:{d:{o:{o:{_:1}}}},r:{t:{e:{x:{_:1}}}},t:{e:{_:1,d:{_:1},r:{_:1,s:{_:1}},s:{_:1}},i:{n:{g:{_:1}}}},u:{c:{h:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}}}}},w:{_:1,e:{d:{_:1},l:{_:1,s:{_:1}}},s:{_:1}},y:{a:{g:{e:{_:1}}},e:{u:{r:{_:1}}}}},r:{o:{o:{m:{_:1}}}},u:{l:{g:{a:{r:{_:1}}},l:{a:{b:{y:{_:1}}}},n:{e:{r:{a:{b:{i:{l:{i:{t:{y:{_:1}}}}},l:{e:{_:1}}}}}}},p:{i:{x:{_:1}}},t:{u:{r:{e:{_:1,s:{_:1}}}}}}},y:{i:{n:{g:{_:1}}}}};