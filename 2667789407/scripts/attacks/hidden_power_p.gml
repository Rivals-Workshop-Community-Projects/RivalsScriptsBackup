var atk = 16; // P
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("attack_P"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("attack_P_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 3);

set_window_value(atk, 1, AG_WINDOW_LENGTH, 12);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 1, AG_WINDOW_SFX, asset_get("sfx_frog_fstrong"));
set_window_value(atk, 1, AG_WINDOW_SFX_FRAME, get_window_value(atk, 1, AG_WINDOW_LENGTH) - 1);

set_window_value(atk, 2, AG_WINDOW_LENGTH, 3);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(atk, 3, AG_WINDOW_LENGTH, 16);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(atk, 2);

set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 1, HG_WINDOW, 2);
set_hitbox_value(atk, 1, HG_LIFETIME, 3);
set_hitbox_value(atk, 1, HG_HITBOX_X, -12);
set_hitbox_value(atk, 1, HG_HITBOX_Y, -24);
set_hitbox_value(atk, 1, HG_WIDTH, 28);
set_hitbox_value(atk, 1, HG_HEIGHT, 48);
set_hitbox_value(atk, 1, HG_SHAPE, 2);
set_hitbox_value(atk, 1, HG_PRIORITY, 6);
set_hitbox_value(atk, 1, HG_DAMAGE, 6);
set_hitbox_value(atk, 1, HG_ANGLE, 90);
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(atk, 1, HG_UNOWN_DAMAGE_BONUS, 4);
set_hitbox_value(atk, 1, HG_UNOWN_KNOCKBACK_BONUS, 1);
set_hitbox_value(atk, 1, HG_UNOWN_SCALING_BONUS, 0.25);
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(atk, 1, HG_VISUAL_EFFECT, 116);
set_hitbox_value(atk, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));

set_hitbox_value(atk, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 2, HG_WINDOW, 2);
set_hitbox_value(atk, 2, HG_LIFETIME, 3);
set_hitbox_value(atk, 2, HG_HITBOX_X, -12);
set_hitbox_value(atk, 2, HG_HITBOX_Y, 12);
set_hitbox_value(atk, 2, HG_WIDTH, 20);
set_hitbox_value(atk, 2, HG_HEIGHT, 50);
set_hitbox_value(atk, 2, HG_SHAPE, 2);
set_hitbox_value(atk, 2, HG_PRIORITY, 2); //tipper effect
set_hitbox_value(atk, 2, HG_DAMAGE, 9);
set_hitbox_value(atk, 2, HG_ANGLE, 270);
set_hitbox_value(atk, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, 2, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(atk, 2, HG_UNOWN_DAMAGE_BONUS, 6);
set_hitbox_value(atk, 2, HG_UNOWN_KNOCKBACK_BONUS, 2);
set_hitbox_value(atk, 2, HG_UNOWN_SCALING_BONUS, 0.15);
set_hitbox_value(atk, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(atk, 2, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(atk, 2, HG_VISUAL_EFFECT, 118);
set_hitbox_value(atk, 2, HG_HIT_SFX, asset_get("sfx_poison_hit_strong"));

//================================================================
//WORD DATA
set_window_value(UNOWN_ATK.P, 2, AG_UNOWN_WINDOW_ACTIVE, true);
if ("p" not in unown_dictionary) unown_dictionary.p = make_trie_P();
//================================================================
//contains words starting with P
#define make_trie_P()
    return {a:{_:1,c:{_:1,e:{_:1,d:{_:1},m:{a:{k:{e:{r:{_:1}}}}},r:{_:1},s:{_:1}},h:{y:{d:{e:{r:{m:{_:1}}}}},i:{r:{i:{s:{u:{_:1}}}}}},i:{f:{i:{c:{_:1},e:{r:{_:1}},s:{t:{_:1}}}},n:{g:{_:1}}},k:{_:1,a:{g:{e:{_:1,s:{_:1}}}},e:{d:{_:1},r:{_:1},t:{_:1,s:{_:1}}},i:{n:{g:{_:1}}},s:{_:1}},t:{_:1}},d:{_:1,d:{e:{d:{_:1}},i:{n:{g:{_:1}}},l:{e:{_:1,s:{_:1}},i:{n:{g:{_:1}}}},o:{c:{k:{_:1}}},y:{_:1}},l:{o:{c:{k:{_:1}}}},r:{e:{_:1}},s:{_:1}},e:{l:{l:{a:{_:1}}}},g:{a:{n:{_:1}},e:{_:1,a:{n:{t:{_:1}}},d:{_:1},r:{_:1,s:{_:1}},s:{_:1}},i:{n:{g:{_:1}}}},h:{_:1},i:{d:{_:1},l:{_:1},n:{_:1,e:{d:{_:1}},f:{u:{l:{_:1,l:{y:{_:1}}}}},k:{i:{l:{l:{e:{r:{_:1,s:{_:1}}}}}}},l:{e:{s:{s:{_:1}}}},s:{_:1},t:{_:1,b:{r:{u:{s:{h:{_:1}}}}},e:{d:{_:1},r:{_:1,s:{_:1}}},i:{n:{g:{_:1,s:{_:1}}}},s:{_:1}}},r:{_:1,e:{d:{_:1}},s:{_:1}},s:{l:{e:{y:{_:1}}}}},j:{a:{m:{a:{_:1,s:{_:1}}}}},l:{_:1,a:{c:{e:{_:1,s:{_:1}}}},e:{_:1,o:{n:{t:{o:{l:{o:{g:{i:{s:{t:{_:1}}},y:{_:1}}}}}}}},r:{_:1},s:{_:1},t:{t:{e:{_:1}}}},m:{_:1,e:{r:{_:1}},s:{_:1}},o:{m:{i:{n:{o:{_:1}}}},s:{s:{a:{n:{d:{_:1}}}}}},p:{_:1,a:{b:{l:{e:{_:1}}}},i:{t:{a:{t:{i:{o:{n:{s:{_:1}}}}}},o:{a:{d:{_:1}}}}}},s:{_:1,y:{_:1}},t:{r:{y:{_:1}}},k:{i:{a:{_:1}}}},m:{_:1,p:{e:{r:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}},h:{l:{e:{t:{_:1,s:{_:1}}}}}}},n:{_:1,a:{c:{h:{e:{_:1}}},m:{a:{_:1}}},c:{a:{k:{e:{_:1,s:{_:1}}}},r:{e:{a:{t:{i:{c:{_:1}}}}}},h:{a:{m:{_:1}}}},d:{a:{_:1},e:{r:{i:{n:{g:{_:1}}}}},o:{r:{a:{_:1}}}},e:{_:1,l:{_:1,s:{_:1}}},h:{a:{n:{d:{l:{e:{_:1}}}}}},i:{c:{_:1,k:{e:{d:{_:1}},i:{n:{g:{_:1}}},y:{_:1}},s:{_:1}}},n:{e:{d:{_:1}}},s:{_:1,y:{_:1},a:{g:{e:{_:1}}},e:{a:{r:{_:1}}}},t:{_:1,a:{l:{o:{o:{n:{s:{_:1}}}}}},h:{e:{o:{n:{_:1}},r:{_:1}}},i:{e:{s:{_:1}},n:{g:{_:1}}},r:{y:{_:1}},s:{_:1},y:{_:1,h:{o:{s:{e:{_:1}}}}}},p:{o:{u:{r:{_:1}}}},g:{o:{r:{o:{_:1}}}}},p:{_:1,a:{_:1,r:{a:{z:{z:{i:{_:1}}}}},y:{a:{s:{_:1}}}},e:{r:{_:1,b:{a:{c:{k:{_:1}}},o:{y:{_:1}}},s:{_:1},w:{e:{i:{g:{h:{t:{_:1}}}}},o:{r:{k:{_:1}}}}}},p:{y:{_:1}},r:{i:{k:{a:{_:1}}}}},r:{_:1,a:{_:1,b:{l:{e:{_:1}},o:{l:{i:{c:{_:1}}}}},c:{h:{u:{t:{e:{_:1,s:{_:1}},i:{n:{g:{_:1}}}}}}},d:{e:{_:1},i:{g:{m:{_:1}},n:{g:{_:1}},s:{e:{_:1}}},o:{x:{_:1}}},g:{o:{n:{_:1}},r:{a:{p:{h:{_:1,s:{_:1}}}}}},k:{e:{e:{t:{_:1}}}},l:{e:{g:{a:{l:{_:1}}}},l:{e:{l:{_:1,s:{_:1}}}},y:{s:{i:{s:{_:1}}},z:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}}}}}},m:{e:{d:{i:{c:{_:1,s:{_:1}}}},t:{e:{r:{s:{_:1}}}}},i:{l:{i:{t:{a:{r:{y:{_:1}}}}}}},o:{u:{r:{_:1}}}},n:{o:{i:{a:{_:1},d:{_:1}},r:{m:{a:{l:{_:1}}}}}},p:{h:{e:{r:{n:{a:{l:{i:{a:{_:1}}}}}}}}},s:{a:{i:{l:{i:{n:{g:{_:1}}}}}},i:{t:{e:{_:1,s:{_:1}},i:{c:{_:1}}}},_:1,e:{c:{t:{_:1}}}},t:{r:{o:{o:{p:{e:{r:{_:1,s:{_:1}}}}}}}}},c:{h:{m:{e:{n:{t:{_:1}}}}}},d:{n:{e:{r:{_:1}}},o:{n:{_:1,e:{d:{_:1}},s:{_:1}}}},e:{_:1,n:{t:{_:1,a:{l:{_:1}},h:{o:{o:{d:{_:1}}}},i:{n:{g:{_:1}}},s:{_:1}}}},f:{a:{i:{t:{_:1}}}},i:{s:{_:1,h:{_:1,i:{o:{n:{e:{r:{_:1,s:{_:1}}}}}}}}},k:{_:1,a:{_:1},e:{d:{_:1},r:{_:1}},i:{n:{g:{_:1}}},s:{_:1},w:{a:{y:{_:1}}}},l:{i:{a:{m:{e:{n:{t:{_:1,a:{r:{y:{_:1}}}}}}}}},o:{r:{_:1,s:{_:1}},u:{r:{_:1}}}},o:{d:{y:{_:1}},l:{e:{_:1,d:{_:1}}}},r:{o:{t:{_:1,s:{_:1}}}},s:{l:{e:{y:{_:1}}},o:{n:{s:{_:1}}}},t:{_:1,e:{d:{_:1}},i:{a:{l:{_:1,l:{y:{_:1}}}},c:{i:{p:{a:{n:{t:{_:1,s:{_:1}}},t:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1}}}}}}},l:{e:{_:1,s:{_:1}}},u:{l:{a:{r:{_:1,l:{y:{_:1}},s:{_:1}}}}}},e:{d:{_:1},s:{_:1}},n:{g:{_:1}},s:{a:{n:{_:1}}}},l:{y:{_:1}},n:{e:{r:{_:1,e:{d:{_:1}},s:{_:1,h:{i:{p:{_:1,s:{_:1}}}}}}}},o:{n:{_:1}},r:{i:{d:{g:{e:{_:1}}}}},s:{_:1},y:{_:1,i:{n:{g:{_:1}}}}}},s:{_:1,s:{_:1,a:{b:{l:{e:{_:1}}},g:{e:{_:1,s:{_:1},w:{a:{y:{_:1,s:{_:1}}}}}}},e:{d:{_:1},n:{g:{e:{r:{_:1,s:{_:1}}}}},r:{_:1},s:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1,a:{t:{e:{_:1,l:{y:{_:1}}}}},s:{_:1}}},v:{e:{_:1}},m:{i:{a:{n:{_:1}}}}},k:{e:{y:{_:1}}},p:{o:{r:{t:{_:1,s:{_:1}}}}},w:{o:{r:{d:{_:1}}}}},t:{_:1,a:{_:1},e:{_:1,d:{_:1},l:{s:{_:1}}},i:{e:{s:{_:1}},m:{e:{_:1}}},o:{r:{_:1}},r:{a:{m:{i:{_:1}}},y:{_:1}},s:{_:1},u:{r:{e:{_:1,s:{_:1}}}}}},t:{_:1,c:{h:{_:1,e:{d:{_:1},s:{_:1}},i:{n:{g:{_:1}}},o:{u:{l:{i:{_:1}}}}}},e:{_:1,n:{t:{_:1,e:{d:{_:1}},l:{y:{_:1}},s:{_:1}}},r:{n:{a:{l:{_:1}},i:{t:{y:{_:1}}}}}},h:{_:1,e:{t:{i:{c:{_:1,a:{l:{l:{y:{_:1}}}}}}}},o:{g:{e:{n:{_:1}}},l:{o:{g:{i:{c:{a:{l:{_:1,l:{y:{_:1}}}}},s:{t:{_:1}}},y:{_:1}}}},s:{_:1}},s:{_:1},w:{a:{y:{s:{_:1}}}}},i:{e:{n:{c:{e:{_:1}},t:{_:1,l:{y:{_:1}},s:{_:1}}}},o:{_:1}},o:{i:{s:{_:1}}},r:{i:{a:{r:{c:{h:{_:1}}}},o:{t:{_:1,i:{c:{_:1}},s:{_:1}}}},o:{l:{_:1,l:{e:{d:{_:1}},i:{n:{g:{_:1}}}},m:{a:{n:{_:1}},e:{n:{_:1}}}},n:{_:1,i:{z:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}}}}},s:{_:1}}},a:{t:{_:1}}},s:{y:{_:1}},t:{e:{n:{_:1},r:{_:1,n:{_:1,s:{_:1}}}},i:{e:{s:{_:1}},n:{g:{_:1}}},y:{_:1}}},u:{s:{e:{_:1,s:{_:1}}}},v:{e:{_:1,d:{_:1},m:{e:{n:{t:{_:1}}}}},i:{l:{i:{o:{n:{_:1}}}},n:{g:{_:1}}}},w:{_:1,i:{n:{g:{_:1}}},n:{_:1,i:{n:{g:{_:1}},a:{r:{d:{_:1}}}},s:{h:{o:{p:{_:1}}}}},s:{_:1}},x:{_:1},y:{_:1,a:{b:{l:{e:{_:1}}}},b:{a:{c:{k:{_:1}}}},c:{h:{e:{c:{k:{_:1,s:{_:1}}}}}},d:{a:{y:{_:1}}},i:{n:{g:{_:1}}},l:{o:{a:{d:{_:1}}}},m:{e:{n:{t:{_:1,s:{_:1}}}}},o:{f:{f:{_:1,s:{_:1}}}},r:{o:{l:{l:{_:1}}}},s:{_:1}}},e:{_:1,a:{_:1,c:{e:{_:1,f:{u:{l:{_:1,l:{y:{_:1}}}}},m:{a:{k:{e:{r:{_:1}}}}},t:{i:{m:{e:{_:1}}}}},h:{_:1,e:{s:{_:1}},y:{_:1}}},k:{_:1,e:{d:{_:1}},s:{_:1}},n:{u:{t:{_:1,s:{_:1}}}},r:{_:1,l:{_:1,s:{_:1},y:{_:1}}},s:{_:1,a:{n:{t:{_:1}}}},t:{_:1}},b:{b:{l:{e:{_:1}}}},c:{a:{n:{_:1,s:{_:1}}},k:{_:1,e:{d:{_:1},r:{_:1,s:{_:1}}},i:{n:{g:{_:1}},s:{h:{_:1}}},s:{_:1}},s:{_:1},u:{l:{i:{a:{r:{_:1}}}}}},d:{a:{l:{_:1,i:{n:{g:{_:1}}},s:{_:1}}},d:{l:{e:{_:1,r:{_:1}},i:{n:{g:{_:1}}}}},e:{s:{t:{a:{l:{_:1}},r:{i:{a:{n:{_:1,s:{_:1}}}}}}}},i:{a:{t:{r:{i:{c:{_:1,i:{a:{n:{_:1}}},s:{_:1}}}}}},c:{u:{r:{e:{_:1,s:{_:1}}}}},g:{r:{e:{e:{_:1}}}}},o:{p:{h:{i:{l:{e:{_:1}}}}}},r:{o:{_:1}}},e:{_:1,d:{_:1},i:{n:{g:{_:1}}},k:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}},l:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}},p:{_:1,e:{r:{s:{_:1}}},i:{n:{g:{_:1}}},s:{_:1}},r:{_:1,i:{n:{g:{_:1}}},l:{e:{s:{s:{_:1}}}},s:{_:1}},s:{_:1},v:{e:{d:{_:1}}}},g:{_:1,g:{e:{d:{_:1}}}},i:{g:{n:{o:{i:{r:{_:1}}}}}},l:{e:{_:1},l:{e:{t:{_:1,s:{_:1}}}},t:{_:1,i:{n:{g:{_:1}}},s:{_:1}},v:{i:{c:{_:1}}},i:{p:{p:{e:{r:{_:1}}}}}},m:{m:{i:{c:{a:{n:{_:1}}}}}},n:{_:1,a:{l:{_:1,i:{z:{e:{_:1,d:{_:1}}}},t:{y:{_:1}}},n:{c:{e:{_:1}}}},c:{e:{_:1},i:{l:{_:1,s:{_:1}}}},d:{a:{n:{t:{_:1}}},i:{n:{g:{_:1}}}},e:{t:{r:{a:{t:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1}}}}}}}},g:{u:{i:{n:{_:1,s:{_:1}}}}},i:{c:{i:{l:{l:{i:{n:{_:1}}}}}},n:{s:{u:{l:{a:{_:1}}}}},t:{e:{n:{t:{i:{a:{r:{y:{_:1}}}}}}}}},n:{a:{n:{t:{_:1}}},e:{_:1,d:{_:1}},i:{e:{s:{_:1}},l:{e:{s:{s:{_:1}}}}},y:{_:1}},s:{_:1,i:{o:{n:{_:1,e:{r:{s:{_:1}}},s:{_:1}}}}},t:{a:{g:{o:{n:{_:1}},r:{a:{m:{_:1}}}}},h:{o:{u:{s:{e:{_:1}}}}}}},o:{n:{_:1},p:{l:{e:{_:1,s:{_:1}}}}},p:{_:1,p:{e:{r:{_:1,m:{i:{n:{t:{_:1}}}},o:{n:{i:{_:1}}},s:{_:1}}}}},r:{_:1,c:{e:{i:{v:{e:{_:1,d:{_:1}}}},n:{t:{_:1,a:{g:{e:{_:1,s:{_:1}}}},i:{l:{e:{_:1}}}}},p:{t:{i:{o:{n:{_:1,s:{_:1}}},v:{e:{_:1}}}}}},h:{_:1,a:{n:{c:{e:{_:1}}}},e:{d:{_:1}}},o:{l:{a:{t:{i:{n:{g:{_:1}}}}}}}},e:{n:{n:{i:{a:{l:{_:1}}}}}},f:{e:{c:{t:{_:1,i:{n:{g:{_:1}},o:{n:{_:1,i:{s:{t:{_:1}}}}}},l:{y:{_:1}},o:{_:1}}}},o:{r:{m:{_:1,a:{n:{c:{e:{_:1,s:{_:1}}}}},e:{d:{_:1},r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}},s:{_:1}}}},u:{m:{e:{_:1,d:{_:1},s:{_:1}}}}},h:{a:{p:{s:{_:1}}}},i:{l:{_:1,s:{_:1}},m:{e:{t:{e:{r:{_:1,s:{_:1}}}}}},o:{d:{_:1,i:{c:{_:1}},s:{_:1}}},p:{h:{e:{r:{a:{l:{_:1}},y:{_:1}}}}},s:{c:{o:{p:{e:{_:1}}}},h:{_:1,a:{b:{l:{e:{_:1}}}},e:{d:{_:1}}}}},j:{u:{r:{e:{_:1,d:{_:1}},y:{_:1}}}},k:{_:1,s:{_:1},y:{_:1}},m:{_:1,a:{n:{e:{n:{t:{_:1,l:{y:{_:1}}}}}}},i:{s:{s:{i:{b:{l:{e:{_:1}}},o:{n:{_:1}}}}},t:{_:1,s:{_:1},t:{e:{d:{_:1}},i:{n:{g:{_:1}}}}}}},o:{x:{i:{d:{e:{_:1}}}}},p:{e:{t:{r:{a:{t:{e:{_:1,d:{_:1}},o:{r:{_:1,s:{_:1}}}}}},u:{a:{l:{_:1},t:{i:{n:{g:{_:1}}}}}}}}},r:{y:{_:1},s:{e:{r:{k:{e:{r:{_:1}}}}}}},s:{e:{c:{u:{t:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}}}}}}},i:{s:{t:{_:1,e:{n:{c:{e:{_:1}},t:{_:1}}},s:{_:1}}},a:{n:{_:1}}},n:{i:{c:{k:{e:{t:{y:{_:1}}}}}}},o:{n:{_:1,a:{_:1,b:{l:{e:{_:1}}},l:{_:1,i:{t:{i:{e:{s:{_:1}}},y:{_:1}},z:{e:{_:1,d:{_:1}}}},l:{y:{_:1}},s:{_:1}}},i:{f:{i:{e:{d:{_:1}}}}},n:{e:{l:{_:1}}},s:{_:1}}},p:{e:{c:{t:{i:{v:{e:{_:1,s:{_:1}}}}}}},i:{r:{a:{t:{i:{o:{n:{_:1}}}}}}}},u:{a:{d:{e:{_:1,d:{_:1}}},s:{i:{o:{n:{_:1}},v:{e:{_:1}}}}}}},t:{a:{i:{n:{i:{n:{g:{_:1}}},s:{_:1}}}},i:{n:{e:{n:{t:{_:1}}}}},u:{r:{b:{e:{d:{_:1}}}}}},u:{s:{e:{_:1}}},v:{e:{r:{s:{e:{_:1},i:{o:{n:{_:1}}}},t:{_:1,e:{d:{_:1}},s:{_:1}}}}}},s:{k:{y:{_:1}},o:{s:{_:1}},s:{i:{m:{i:{s:{t:{_:1,i:{c:{_:1}}}}}}}},t:{_:1,e:{r:{_:1,i:{n:{g:{_:1}}}}},i:{c:{i:{d:{e:{s:{_:1}}}}},l:{e:{n:{c:{e:{_:1}}}}}},o:{_:1},s:{_:1}}},t:{_:1,a:{l:{_:1,s:{_:1}}},e:{r:{_:1,s:{_:1}}},i:{t:{_:1,e:{_:1},i:{o:{n:{_:1,e:{r:{_:1}},i:{n:{g:{_:1}}}}}}},l:{i:{l:{_:1}}}},r:{i:{f:{i:{e:{d:{_:1}}}}},o:{l:{_:1,e:{u:{m:{_:1}}}}}},s:{_:1},t:{i:{c:{o:{a:{t:{_:1}}}},n:{g:{_:1}}},y:{_:1}}},w:{_:1,t:{e:{r:{_:1}}}}},f:{f:{t:{_:1}}},h:{a:{n:{t:{o:{m:{_:1,s:{_:1}}},u:{m:{p:{_:1}}}},p:{y:{_:1}}},r:{a:{o:{h:{_:1,s:{_:1}}}},m:{a:{c:{e:{u:{t:{i:{c:{a:{l:{_:1,s:{_:1}}}}}}}},i:{s:{t:{_:1}}},y:{_:1}}}}},s:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}},e:{a:{s:{a:{n:{t:{_:1,s:{_:1}}}}}},n:{o:{m:{e:{n:{a:{_:1,l:{_:1,l:{y:{_:1}}}},o:{n:{_:1}}}}}}},r:{o:{m:{o:{n:{e:{s:{_:1}}},s:{a:{_:1}}}}}},w:{_:1}},i:{_:1,l:{a:{n:{d:{e:{r:{i:{n:{g:{_:1}}}}}},t:{h:{r:{o:{p:{i:{s:{t:{_:1}}}}}}}}}},h:{a:{r:{m:{o:{n:{i:{c:{_:1}}}}}}}},o:{s:{o:{p:{h:{e:{r:{_:1,s:{_:1}}},i:{c:{a:{l:{_:1}}},e:{s:{_:1}}},y:{_:1}}}}}}},o:{n:{e:{_:1}}}},o:{b:{i:{a:{_:1,s:{_:1}},c:{_:1}}},e:{b:{e:{_:1}},n:{i:{x:{_:1}}}},n:{e:{_:1,d:{_:1},s:{_:1},y:{_:1}},i:{e:{s:{_:1}}},y:{_:1}},o:{e:{y:{_:1}}},s:{p:{h:{a:{t:{e:{_:1}}},o:{r:{o:{u:{s:{_:1}}}}}}}},t:{o:{_:1,c:{o:{p:{y:{_:1}}}},g:{e:{n:{i:{c:{_:1}}}},r:{a:{p:{h:{_:1,e:{d:{_:1},r:{_:1,s:{_:1}}},i:{c:{_:1},n:{g:{_:1}}},s:{_:1},y:{_:1}}}}}},s:{_:1}}}},r:{a:{s:{e:{_:1,s:{_:1}}}}},y:{s:{i:{c:{_:1,a:{l:{_:1,l:{y:{_:1}},s:{_:1}}},i:{a:{n:{_:1}},s:{t:{_:1,s:{_:1}}}},s:{_:1}},o:{l:{o:{g:{i:{c:{a:{l:{_:1,l:{y:{_:1}}}}}},y:{_:1}}}}},q:{u:{e:{_:1}}}}}}},i:{_:1,a:{n:{i:{s:{t:{_:1}}},o:{_:1,s:{_:1}}},z:{z:{a:{_:1}}}},c:{_:1,k:{_:1,e:{d:{_:1},r:{_:1},t:{_:1,i:{n:{g:{_:1}}}}},i:{n:{g:{_:1,s:{_:1}}}},l:{e:{_:1,d:{_:1},s:{_:1}}},p:{o:{c:{k:{e:{t:{_:1,s:{_:1}}}}}}},s:{_:1},u:{p:{_:1,s:{_:1}}},y:{_:1}},n:{i:{c:{_:1,s:{_:1}}}},t:{u:{r:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}}},h:{u:{_:1}}},d:{d:{l:{e:{s:{_:1}},i:{n:{g:{_:1}}}}},g:{e:{y:{_:1},o:{t:{t:{o:{_:1}},_:1}}}},o:{v:{e:{_:1}}}},e:{_:1,c:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}},d:{_:1},r:{_:1,c:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}}}},s:{_:1}},s:{_:1}},f:{f:{l:{e:{_:1}}}},g:{_:1,e:{o:{n:{_:1,s:{_:1}}}},g:{i:{e:{s:{_:1}}},y:{_:1,b:{a:{c:{k:{_:1}}}}}},h:{e:{a:{d:{e:{d:{_:1}}}}}},l:{e:{t:{_:1}}},s:{_:1,k:{i:{n:{_:1}}},t:{y:{_:1}}},t:{a:{i:{l:{s:{_:1}}}}},n:{i:{t:{e:{_:1}}}}},k:{e:{_:1},a:{c:{h:{u:{_:1}}}},i:{p:{e:{k:{_:1}}}}},l:{a:{r:{_:1}},e:{_:1,d:{_:1},s:{_:1}},g:{r:{i:{m:{_:1,a:{g:{e:{_:1}}},s:{_:1}}}}},i:{n:{g:{_:1}}},l:{_:1,a:{g:{e:{_:1}},r:{_:1,s:{_:1}}},o:{w:{_:1,s:{_:1}}},s:{_:1}},o:{t:{_:1,s:{_:1}},s:{w:{i:{n:{e:{_:1}}}}}}},m:{p:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},l:{e:{_:1,s:{_:1}},y:{_:1}}}},n:{_:1,a:{_:1,f:{o:{r:{e:{_:1}}}},t:{a:{_:1}}},b:{a:{l:{l:{_:1}}}},c:{h:{_:1,e:{d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}},u:{s:{h:{i:{o:{n:{_:1}}}}},r:{c:{h:{i:{n:{_:1}}}}}}},e:{_:1,a:{p:{p:{l:{e:{_:1,s:{_:1}}}}}},c:{o:{n:{e:{_:1}},_:1}},s:{_:1}},g:{_:1},h:{e:{a:{d:{_:1,s:{_:1}}}}},i:{n:{g:{_:1}}},k:{_:1,i:{e:{_:1}},s:{_:1},y:{_:1}},n:{e:{d:{_:1}},i:{n:{g:{_:1}}}},o:{c:{h:{l:{e:{_:1}}}},t:{_:1}},p:{o:{i:{n:{t:{_:1,e:{d:{_:1}}}}}}},s:{_:1,i:{r:{_:1}}},t:{_:1,o:{_:1},s:{_:1}}},o:{n:{e:{e:{r:{_:1}}}},u:{s:{_:1}}},p:{_:1,e:{_:1,l:{i:{n:{e:{_:1}}}},r:{_:1},s:{_:1}},i:{n:{g:{_:1}}},l:{u:{p:{_:1}}}},q:{u:{e:{d:{_:1}}}},r:{a:{n:{h:{a:{s:{_:1}}}},t:{e:{_:1,d:{_:1},s:{_:1}}}}},s:{_:1,s:{_:1,a:{n:{t:{_:1}}},e:{d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}},t:{a:{c:{h:{i:{o:{_:1,s:{_:1}}}}}},o:{l:{_:1,s:{_:1}},n:{_:1,s:{_:1}}}}},t:{_:1,c:{h:{_:1,e:{d:{_:1},r:{_:1,s:{_:1}},s:{_:1}},f:{o:{r:{k:{_:1}}}},i:{n:{g:{_:1}}}}},f:{a:{l:{l:{s:{_:1}}}}},h:{y:{_:1}},i:{e:{d:{_:1}},f:{u:{l:{_:1}}}},s:{_:1},t:{a:{n:{c:{e:{_:1}}}},e:{d:{_:1}},i:{n:{g:{_:1}}}},y:{_:1,i:{n:{g:{_:1}}}}},v:{o:{t:{_:1,a:{l:{_:1}}}}},x:{e:{l:{s:{_:1}}},i:{e:{_:1,s:{_:1}},l:{a:{t:{e:{d:{_:1}}}}}}},z:{z:{a:{_:1,s:{_:1}}}}},l:{a:{c:{a:{t:{e:{_:1}}},e:{_:1,b:{o:{s:{_:1}}},d:{_:1},m:{e:{n:{t:{_:1}}}},s:{_:1}},i:{d:{_:1},n:{g:{_:1}}}},g:{u:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}},i:{d:{_:1},n:{_:1,c:{l:{o:{t:{h:{e:{s:{_:1}}}}}}},l:{y:{_:1}},s:{_:1},t:{i:{f:{f:{_:1,s:{_:1}}}}}},t:{_:1}},n:{_:1,e:{_:1,s:{_:1},t:{_:1,a:{r:{i:{u:{m:{_:1}}},y:{_:1}}},s:{_:1}}},i:{n:{g:{_:1}}},k:{_:1,t:{o:{n:{_:1}}}},n:{e:{d:{_:1},r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}}},s:{_:1},t:{_:1,a:{t:{i:{o:{n:{_:1,s:{_:1}}}}}},e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}},q:{u:{e:{_:1}}},s:{m:{a:{_:1}},t:{e:{r:{_:1,e:{d:{_:1}}}},i:{c:{_:1}}}},t:{e:{_:1,a:{u:{_:1,e:{d:{_:1}}}},d:{_:1},l:{e:{t:{s:{_:1}}}},s:{_:1}},f:{o:{r:{m:{_:1,s:{_:1}}}}},i:{n:{g:{_:1},u:{m:{_:1}}},t:{u:{d:{e:{s:{_:1}}}}}},o:{n:{i:{c:{_:1}}},o:{n:{_:1}}},t:{e:{r:{_:1,s:{_:1}}}},y:{p:{u:{s:{_:1}}}}},u:{s:{i:{b:{l:{e:{_:1}}}}}},y:{_:1,a:{_:1},b:{o:{o:{k:{_:1}},y:{_:1,s:{_:1}}}},e:{d:{_:1},r:{_:1,s:{_:1}}},f:{u:{l:{_:1}}},g:{r:{o:{u:{n:{d:{_:1,s:{_:1}}}}}}},h:{o:{u:{s:{e:{_:1}}}}},i:{n:{g:{_:1}}},m:{a:{t:{e:{_:1}}}},o:{f:{f:{s:{_:1}}}},r:{o:{o:{m:{_:1}}}},s:{_:1},t:{h:{i:{n:{g:{_:1,s:{_:1}}}}},i:{m:{e:{_:1}}}},w:{r:{i:{g:{h:{t:{_:1}}}}}}},z:{a:{_:1}}},e:{a:{_:1,d:{_:1,e:{d:{_:1}},i:{n:{g:{_:1,s:{_:1}}}},s:{_:1}},s:{_:1,a:{n:{t:{_:1,l:{y:{_:1}},r:{i:{e:{s:{_:1}}}}}}},e:{_:1,d:{_:1},r:{_:1},s:{_:1}},i:{n:{g:{_:1}}},u:{r:{e:{_:1,s:{_:1}},i:{n:{g:{_:1}}}}}}},d:{_:1,g:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}},n:{t:{y:{_:1}}},t:{h:{o:{r:{a:{_:1}}}}}},i:{e:{r:{s:{_:1}}},g:{h:{t:{_:1}}}},o:{p:{_:1},t:{_:1,s:{_:1},t:{e:{d:{_:1}},i:{n:{g:{_:1}}}}},w:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}}},y:{_:1}},u:{c:{k:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},y:{_:1}}},g:{_:1,g:{e:{d:{_:1}},i:{n:{g:{_:1}}}},s:{_:1}},m:{_:1,b:{e:{r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}}},m:{e:{t:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}}}}},p:{_:1},s:{_:1},e:{r:{i:{a:{_:1}}}}},n:{d:{e:{r:{_:1}}},g:{e:{_:1},i:{n:{g:{_:1}}}}},r:{a:{l:{_:1}}},s:{_:1,e:{s:{_:1}},h:{_:1},l:{e:{_:1}}},t:{o:{n:{i:{u:{m:{_:1}}}}}}}},n:{e:{u:{m:{o:{n:{i:{a:{_:1}}}}}}}},o:{a:{c:{h:{_:1,e:{d:{_:1},r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}}}}},c:{k:{e:{t:{_:1,b:{o:{o:{k:{_:1}}}},e:{d:{_:1}},f:{u:{l:{_:1}}},s:{_:1}}}}},d:{_:1,i:{a:{t:{r:{i:{s:{t:{_:1}}},y:{_:1}}}},u:{m:{_:1}}},s:{_:1}},e:{m:{_:1,s:{_:1}},t:{_:1,i:{c:{_:1}},r:{y:{_:1}},s:{_:1}}},g:{_:1},i:{_:1,g:{n:{a:{n:{t:{_:1}}}}},n:{t:{_:1,e:{_:1,d:{_:1},r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}},l:{e:{s:{s:{_:1}}}},s:{_:1},y:{_:1}}},s:{e:{_:1,d:{_:1}},o:{n:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},o:{u:{s:{_:1}}},s:{_:1}}}},p:{o:{l:{e:{_:1}}}}},k:{e:{_:1,d:{_:1},r:{_:1},s:{_:1},y:{_:1},m:{o:{n:{_:1}}},b:{a:{l:{l:{_:1}}}}},i:{n:{g:{_:1}}}},l:{a:{r:{_:1,i:{t:{y:{_:1}}}}},e:{_:1,c:{a:{t:{_:1}}},s:{_:1}},i:{c:{e:{_:1,m:{a:{n:{_:1}},e:{n:{_:1}}}},i:{e:{s:{_:1}},n:{g:{_:1}}},y:{_:1}},o:{_:1},s:{h:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}}}},t:{e:{_:1,l:{y:{_:1}}},i:{c:{a:{l:{_:1,l:{y:{_:1}}}},i:{a:{n:{_:1,s:{_:1}}}},s:{_:1}}},o:{e:{d:{_:1}}}},w:{a:{g:{_:1}},h:{i:{r:{l:{_:1}}}},r:{a:{t:{h:{_:1}}}}}},k:{a:{_:1}},l:{_:1,a:{c:{k:{_:1}},r:{d:{_:1}}},e:{d:{_:1},n:{_:1}},i:{n:{g:{_:1}}},o:{c:{k:{_:1}}},s:{_:1},u:{t:{e:{_:1},i:{n:{g:{_:1}},o:{n:{_:1}}}}}},o:{_:1},t:{e:{r:{g:{e:{i:{s:{t:{_:1,s:{_:1}}}}}}},a:{g:{e:{i:{s:{t:{_:1}}}}}}}},y:{_:1,e:{s:{t:{e:{r:{_:1}}}}},g:{r:{a:{p:{h:{_:1}}}}},m:{e:{r:{i:{z:{a:{t:{i:{o:{n:{_:1}}}}}}}}}}}},m:{_:1,e:{g:{r:{a:{n:{a:{t:{e:{_:1}}}}}}}},p:{o:{m:{s:{_:1}},u:{s:{_:1}}}},m:{e:{_:1}}},n:{c:{h:{o:{_:1}}},d:{_:1,e:{r:{_:1}},s:{_:1}},g:{_:1},i:{e:{s:{_:1}}},t:{o:{o:{n:{_:1}}}},y:{_:1,t:{a:{i:{l:{_:1}},_:1}}}},o:{c:{h:{_:1,y:{e:{n:{a:{_:1}}}}}},d:{l:{e:{_:1,s:{_:1}}}},f:{_:1,s:{_:1},y:{_:1}},h:{_:1},l:{_:1,i:{n:{g:{_:1}}},s:{_:1,i:{d:{e:{_:1}}}}},p:{_:1,e:{d:{_:1}}},r:{_:1,e:{r:{_:1},s:{t:{_:1}}},h:{o:{u:{s:{e:{_:1}}}}},l:{y:{_:1}}}},p:{_:1,c:{o:{r:{n:{_:1}}}},e:{_:1},p:{a:{_:1},e:{d:{_:1},r:{_:1,s:{_:1}},t:{_:1}},i:{e:{s:{_:1}},n:{g:{_:1}}},y:{_:1,c:{o:{c:{k:{_:1}}}}},l:{i:{o:{_:1}}}},s:{_:1},u:{l:{a:{r:{_:1,i:{t:{y:{_:1}}}},t:{e:{d:{_:1}},i:{o:{n:{_:1,s:{_:1}}}}}}}}},r:{c:{e:{l:{a:{i:{n:{_:1}}}}},h:{_:1},u:{p:{i:{n:{e:{_:1}}}}}},e:{_:1,s:{_:1}},i:{n:{g:{_:1}}},k:{_:1,y:{_:1}},r:{i:{d:{g:{e:{_:1}}}}},t:{_:1,a:{b:{l:{e:{_:1}}},l:{_:1,s:{_:1}}},e:{n:{t:{_:1}},r:{_:1,h:{o:{u:{s:{e:{_:1}}}}}}},f:{o:{l:{i:{o:{_:1}}}}},i:{o:{n:{_:1,s:{_:1}}}},r:{a:{i:{t:{_:1,s:{_:1}}},y:{_:1,a:{l:{_:1}},e:{d:{_:1}},s:{_:1}}}},s:{_:1},u:{g:{u:{e:{s:{e:{_:1}}}}}}},y:{g:{o:{n:{_:1,z:{_:1}}}}}},s:{e:{_:1,d:{_:1},r:{_:1},s:{_:1}},i:{e:{s:{_:1}},n:{g:{_:1}},t:{i:{o:{n:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}},v:{e:{_:1,l:{y:{_:1}},s:{_:1}}}}}},s:{e:{_:1,s:{_:1,s:{_:1,e:{d:{_:1},s:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1,s:{_:1}}},v:{e:{_:1}}}}}},i:{b:{i:{l:{i:{t:{i:{e:{s:{_:1}}},y:{_:1}}}}},l:{e:{_:1},y:{_:1}}}},u:{m:{_:1}}},t:{_:1,a:{g:{e:{_:1}},l:{_:1}},c:{a:{r:{d:{_:1,s:{_:1}}}}},e:{d:{_:1},r:{_:1,i:{o:{r:{_:1}}},s:{_:1}}},i:{n:{g:{_:1}}},m:{a:{n:{_:1},r:{k:{_:1}},s:{t:{e:{r:{_:1}}}}},o:{r:{t:{e:{m:{_:1}}}}}},p:{a:{r:{t:{u:{m:{_:1}}}}},o:{n:{e:{_:1,d:{_:1},m:{e:{n:{t:{_:1}}}}},i:{n:{g:{_:1}}}}}},s:{_:1},t:{r:{a:{u:{m:{a:{t:{i:{c:{_:1}}}}}}}}},u:{r:{e:{_:1}}}}},t:{_:1,a:{s:{s:{i:{u:{m:{_:1}}}}},t:{o:{_:1,e:{s:{_:1}}}}},e:{n:{c:{y:{_:1}},t:{_:1,i:{a:{l:{_:1,l:{y:{_:1}}}}}}}},h:{e:{a:{d:{_:1}}},o:{l:{e:{_:1,s:{_:1}}}}},i:{o:{n:{_:1,s:{_:1}}}},s:{_:1,i:{e:{_:1}}},t:{e:{d:{_:1},r:{_:1,y:{_:1}}},i:{n:{g:{_:1}}},y:{_:1}}},u:{c:{h:{_:1}},l:{t:{r:{y:{_:1}}}},n:{c:{e:{_:1}},d:{_:1,e:{r:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}},r:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}},t:{_:1,i:{n:{g:{_:1}}}}},v:{e:{r:{t:{y:{_:1}}}}},w:{_:1,d:{e:{r:{_:1,e:{d:{_:1}},s:{_:1}}}},e:{r:{_:1,e:{d:{_:1}},f:{u:{l:{_:1}}},h:{o:{u:{s:{e:{_:1}}}}},i:{n:{g:{_:1}}},l:{e:{s:{s:{_:1}}}},s:{_:1}}}},x:{_:1}},r:{a:{c:{t:{i:{c:{a:{l:{_:1,i:{t:{y:{_:1}}},l:{y:{_:1}}}},e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}},s:{e:{_:1},i:{n:{g:{_:1}}}},t:{i:{o:{n:{e:{r:{_:1}}}}}}}}},e:{t:{o:{r:{i:{a:{n:{s:{_:1}}}}}}}},g:{m:{a:{t:{i:{c:{_:1},s:{t:{_:1}}}}}}},i:{r:{i:{e:{_:1}}},s:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}},l:{i:{n:{e:{s:{_:1}}}}},m:{_:1},n:{c:{e:{_:1,r:{_:1}},i:{n:{g:{_:1}}}},k:{_:1,s:{_:1,t:{e:{r:{_:1}}}}}},t:{t:{l:{i:{n:{g:{_:1}}}}}},y:{_:1,e:{d:{_:1},r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}},s:{_:1}}},e:{a:{c:{h:{_:1,e:{d:{_:1},r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}},y:{_:1}}},m:{b:{l:{e:{_:1}}}}},c:{a:{u:{t:{i:{o:{n:{_:1,a:{r:{y:{_:1}}},s:{_:1}}}}}}},e:{d:{e:{d:{_:1},n:{c:{e:{_:1}},t:{_:1,s:{_:1}}}},i:{n:{g:{_:1}}}}},i:{n:{c:{t:{_:1}}},o:{u:{s:{_:1}}},p:{i:{c:{e:{_:1}}}},s:{e:{_:1,l:{y:{_:1}}},i:{o:{n:{_:1}}}}},l:{u:{d:{e:{s:{_:1}}}}},o:{c:{i:{o:{u:{s:{_:1}}}}},n:{c:{e:{i:{v:{e:{d:{_:1}}}}}}}}},d:{a:{t:{o:{r:{_:1,s:{_:1},y:{_:1}}}}},e:{c:{e:{s:{s:{o:{r:{_:1,s:{_:1}}}}}}}},i:{c:{a:{m:{e:{n:{t:{_:1}}}}},t:{_:1,a:{b:{l:{e:{_:1}}}},e:{d:{_:1}},i:{n:{g:{_:1}},o:{n:{s:{_:1}}}}}},s:{p:{o:{s:{e:{d:{_:1}},i:{t:{i:{o:{n:{_:1}}}}}}}}}},n:{i:{s:{o:{n:{e:{_:1}}}}}}},e:{c:{l:{a:{m:{p:{s:{i:{a:{_:1}}}}}}}},m:{p:{t:{i:{v:{e:{_:1}}}}}}},f:{a:{c:{e:{_:1}}},e:{r:{_:1,a:{b:{l:{e:{_:1},y:{_:1}}}},e:{n:{c:{e:{_:1,s:{_:1}}}}},r:{e:{d:{_:1}}},s:{_:1}}},i:{x:{_:1}}},g:{n:{a:{n:{c:{i:{e:{s:{_:1}}},y:{_:1}},t:{_:1}}}}},h:{i:{s:{t:{o:{r:{i:{c:{_:1}}}}}}}},j:{u:{d:{i:{c:{e:{_:1,d:{_:1}},i:{a:{l:{_:1}}}}}}}},l:{i:{m:{_:1,i:{n:{a:{r:{y:{_:1}}}}}}},u:{d:{e:{_:1}}}},m:{a:{r:{i:{t:{a:{l:{_:1}}}}},t:{u:{r:{e:{_:1,l:{y:{_:1}}}}}}},e:{d:{_:1,i:{t:{a:{t:{e:{d:{_:1}}}}}}}},i:{e:{r:{_:1,e:{_:1}}},s:{e:{_:1,s:{_:1}}},u:{m:{_:1,s:{_:1}}}},o:{n:{i:{t:{i:{o:{n:{_:1,s:{_:1}}}}}}}}},n:{a:{t:{a:{l:{_:1}}}}},o:{c:{c:{u:{p:{i:{e:{d:{_:1}}}}}}}},p:{_:1,a:{r:{a:{t:{i:{o:{n:{_:1,s:{_:1}}}}}},e:{_:1,d:{_:1}},i:{n:{g:{_:1}}}}},o:{s:{t:{e:{r:{o:{u:{s:{_:1}}}}}}}},p:{e:{d:{_:1}},i:{e:{_:1},n:{g:{_:1}}},y:{_:1}}},r:{e:{q:{u:{i:{s:{i:{t:{e:{_:1}}}}}}}},o:{g:{a:{t:{i:{v:{e:{_:1}}}}}}}},s:{c:{h:{o:{o:{l:{_:1}}}},r:{i:{b:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}},p:{t:{i:{o:{n:{_:1,s:{_:1}}}}}}}}},e:{n:{c:{e:{_:1}},t:{_:1,a:{b:{l:{e:{_:1}}},t:{i:{o:{n:{_:1}}}}},e:{d:{_:1}},i:{n:{g:{_:1}}},l:{y:{_:1}},s:{_:1}}},r:{v:{a:{t:{i:{o:{n:{_:1}},v:{e:{s:{_:1}}}}}},e:{_:1,d:{_:1},r:{_:1},s:{_:1}}}},t:{s:{_:1}}},i:{d:{e:{_:1,d:{_:1},n:{c:{y:{_:1}},t:{_:1,i:{a:{l:{_:1}}},s:{_:1}}}},i:{n:{g:{_:1}}}}},s:{_:1,e:{d:{_:1},s:{_:1}},i:{n:{g:{_:1}}},m:{a:{n:{_:1}}},u:{r:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}}},t:{i:{g:{e:{_:1},i:{o:{u:{s:{_:1}}}}}},o:{_:1}},u:{m:{a:{b:{l:{y:{_:1}}}},e:{_:1,d:{_:1}},i:{n:{g:{_:1}}},p:{t:{u:{o:{u:{s:{_:1}}}}}}}}},t:{e:{n:{d:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}},s:{e:{_:1,s:{_:1}}},t:{i:{o:{u:{s:{_:1}}}}}},x:{t:{_:1}}},r:{i:{a:{l:{_:1}}}},t:{i:{e:{r:{_:1},s:{t:{_:1}}}},y:{_:1}},z:{e:{l:{_:1,s:{_:1}}}}},v:{a:{i:{l:{_:1,e:{d:{_:1}},s:{_:1}}}},e:{n:{t:{_:1,a:{t:{i:{v:{e:{_:1}}}}},e:{d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1}},v:{e:{_:1}}},s:{_:1}}}},i:{e:{w:{_:1}},o:{u:{s:{_:1,l:{y:{_:1}}}}}}},y:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}},i:{c:{e:{_:1,d:{_:1},l:{e:{s:{s:{_:1}}}},s:{_:1},y:{_:1}},k:{_:1,e:{d:{_:1}},l:{y:{_:1}},s:{_:1}}},d:{e:{_:1,d:{_:1}}},e:{s:{t:{_:1,h:{o:{o:{d:{_:1}}}},s:{_:1}}}},m:{_:1,a:{_:1,l:{_:1},r:{i:{e:{s:{_:1}},l:{y:{_:1}},n:{a:{_:1}}},y:{_:1}},t:{e:{_:1,s:{_:1}}}},e:{_:1,d:{_:1},r:{_:1},a:{p:{e:{_:1}}}},i:{t:{i:{v:{e:{_:1}}}}},o:{_:1,r:{d:{i:{a:{l:{_:1}}}}}},p:{i:{n:{g:{_:1}}}}},n:{c:{e:{_:1,l:{y:{_:1}},s:{_:1,s:{_:1,e:{s:{_:1}}}}},i:{p:{a:{l:{_:1,s:{_:1}}},l:{e:{_:1,s:{_:1}}}}}},t:{_:1,e:{d:{_:1},r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}},s:{_:1}},p:{l:{u:{p:{_:1}}}}},o:{r:{_:1,i:{t:{i:{e:{s:{_:1}},z:{e:{_:1},i:{n:{g:{_:1}}}}},y:{_:1}}},s:{_:1}}},s:{o:{n:{_:1,e:{r:{_:1,s:{_:1}}},s:{_:1}}},s:{_:1,y:{_:1}}},v:{a:{c:{y:{_:1}},t:{e:{_:1,l:{y:{_:1}}}}},i:{l:{e:{g:{e:{_:1,d:{_:1},s:{_:1}}}}}},y:{_:1}},z:{e:{_:1,d:{_:1},s:{_:1}}}},o:{_:1,a:{c:{t:{i:{v:{e:{_:1}}}}}},b:{a:{b:{i:{l:{i:{t:{y:{_:1}}}}},l:{e:{_:1},y:{_:1}}},t:{e:{_:1},i:{o:{n:{_:1,a:{r:{y:{_:1}}}}}}}},e:{_:1,s:{_:1}},l:{e:{m:{_:1,a:{t:{i:{c:{_:1}}}},s:{_:1}}}},o:{p:{a:{s:{s:{_:1}}}}}},c:{e:{d:{u:{r:{a:{l:{_:1}},e:{_:1,s:{_:1}}}}},e:{d:{_:1,e:{d:{_:1}},i:{n:{g:{_:1,s:{_:1}}}},s:{_:1}}},s:{s:{_:1,e:{d:{_:1},s:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1,a:{l:{_:1}}}}},o:{r:{s:{_:1}}}}}},l:{a:{i:{m:{e:{d:{_:1}}}}},i:{v:{i:{t:{i:{e:{s:{_:1}}}}}}}},r:{a:{s:{t:{i:{n:{a:{t:{e:{_:1},i:{n:{g:{_:1}},o:{n:{_:1}}}}}}}}}},e:{a:{t:{e:{_:1}}}}},t:{o:{l:{o:{g:{i:{s:{t:{_:1}}}}}}}},u:{r:{e:{_:1,d:{_:1}}}}},d:{_:1,d:{e:{d:{_:1}},i:{n:{g:{_:1}}}},i:{g:{a:{l:{_:1}}}},u:{c:{e:{_:1,d:{_:1},r:{_:1,s:{_:1}},s:{_:1}},i:{n:{g:{_:1}}},t:{_:1,i:{o:{n:{_:1,s:{_:1}}},v:{e:{_:1},i:{t:{y:{_:1}}}}},s:{_:1}}}}},f:{_:1,a:{n:{i:{t:{y:{_:1}}}}},e:{s:{s:{_:1,e:{d:{_:1}},i:{o:{n:{_:1,a:{l:{_:1,i:{s:{m:{_:1}}},l:{y:{_:1}},s:{_:1}}}}}},o:{r:{_:1,s:{_:1}}}}}},i:{l:{e:{_:1,s:{_:1}},i:{n:{g:{_:1}}}},t:{_:1,a:{b:{l:{e:{_:1}}}},s:{_:1}}},o:{u:{n:{d:{_:1,l:{y:{_:1}}}}}},u:{s:{e:{l:{y:{_:1}}}}}},g:{e:{n:{y:{_:1}}},n:{o:{s:{i:{s:{_:1}}}}},r:{a:{m:{_:1,m:{e:{_:1,d:{_:1},r:{_:1}},i:{n:{g:{_:1}}}},s:{_:1}}},e:{s:{s:{_:1,e:{d:{_:1},s:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1}},v:{e:{_:1}}}}}}}},h:{i:{b:{i:{t:{_:1,e:{d:{_:1}},i:{o:{n:{_:1}}},s:{_:1}}}}}},j:{e:{c:{t:{_:1,e:{d:{_:1}},i:{l:{e:{_:1}},n:{g:{_:1}},o:{n:{_:1,s:{_:1}}}},o:{r:{_:1}},s:{_:1}}}}},l:{i:{f:{e:{r:{a:{t:{i:{o:{n:{_:1}}}}}}}}},o:{n:{g:{_:1,e:{d:{_:1}}}}}},m:{_:1,e:{n:{a:{d:{e:{_:1}}}}},i:{n:{e:{n:{t:{_:1}}}},s:{c:{u:{o:{u:{s:{_:1}}}}},e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}},o:{_:1,t:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1,s:{_:1}}}}}},p:{t:{_:1,e:{r:{_:1}},i:{n:{g:{_:1}}},l:{y:{_:1}}}},s:{_:1}},n:{e:{_:1},o:{u:{n:{c:{e:{_:1,d:{_:1}}},s:{_:1}}}},t:{o:{_:1}},u:{n:{c:{i:{a:{t:{i:{o:{n:{_:1}}}}}}}}}},o:{f:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}},p:{_:1,a:{g:{a:{n:{d:{a:{_:1}}}}},n:{e:{_:1}}},e:{l:{l:{e:{d:{_:1},r:{s:{_:1}}}}},n:{s:{i:{t:{y:{_:1}}}}},r:{_:1,l:{y:{_:1}},t:{i:{e:{s:{_:1}}},y:{_:1}}}},h:{e:{c:{i:{e:{s:{_:1}}},y:{_:1}},s:{i:{e:{d:{_:1}}}},t:{_:1,s:{_:1}}},y:{l:{a:{c:{t:{i:{c:{_:1}}}}}}}},o:{r:{t:{i:{o:{n:{_:1,a:{l:{_:1}},e:{d:{_:1}},s:{_:1}}}}}},s:{a:{l:{_:1,s:{_:1}}},e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}},t:{i:{o:{n:{_:1,i:{n:{g:{_:1}}}}}}}}}},p:{e:{d:{_:1}},i:{n:{g:{_:1}}}},r:{i:{e:{t:{a:{r:{y:{_:1}}},o:{r:{_:1}},y:{_:1}}}}},s:{_:1},u:{l:{s:{i:{o:{n:{_:1}}}}}}},s:{_:1,c:{i:{u:{t:{t:{o:{_:1}}}}}},e:{_:1,c:{u:{t:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1}}},o:{r:{_:1,i:{a:{l:{_:1}}},s:{_:1}}}}}}},p:{e:{c:{t:{_:1,i:{v:{e:{_:1}}},o:{r:{_:1}},s:{_:1}}},r:{_:1,i:{t:{y:{_:1}}}}}},t:{a:{t:{e:{_:1}}},h:{e:{t:{i:{c:{_:1}}}}}}},t:{e:{c:{t:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1,s:{_:1}}},v:{e:{_:1}}},o:{r:{_:1,s:{_:1}}},s:{_:1}}},i:{n:{_:1}},s:{t:{_:1,a:{n:{t:{_:1,s:{_:1}}}},e:{d:{_:1},r:{s:{_:1}}},i:{n:{g:{_:1}}},o:{r:{s:{_:1}}},s:{_:1}}},u:{s:{_:1}}},o:{c:{o:{l:{_:1,s:{_:1}}}},n:{s:{_:1}},t:{y:{p:{e:{_:1,s:{_:1}}}}}},r:{a:{c:{t:{e:{d:{_:1}}}}},u:{d:{i:{n:{g:{_:1}}}}}}},u:{d:{_:1,e:{r:{_:1},s:{t:{_:1}}},l:{y:{_:1}}}},v:{e:{_:1,d:{_:1},n:{_:1,a:{n:{c:{e:{_:1}}}}},r:{b:{_:1,i:{a:{l:{_:1}}}}},s:{_:1}},i:{d:{e:{_:1,d:{_:1},n:{c:{e:{_:1}}},r:{_:1},s:{_:1}},i:{n:{g:{_:1}}}},n:{c:{e:{s:{_:1}}},g:{_:1}},s:{i:{o:{n:{_:1,a:{l:{_:1}},s:{_:1}}}}}},o:{c:{a:{t:{i:{o:{n:{_:1,s:{_:1}}},v:{e:{_:1}}}}}},k:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}}}},l:{o:{n:{e:{_:1}}}}}},w:{e:{s:{s:{_:1}}},l:{_:1,e:{r:{_:1}}}},x:{i:{m:{i:{t:{y:{_:1}}}}},y:{_:1}}},u:{d:{e:{_:1,n:{c:{e:{_:1}},t:{_:1}},s:{_:1}}},n:{e:{_:1,s:{_:1}},i:{n:{g:{_:1}}}}},y:{_:1,i:{n:{g:{_:1}}}}},s:{a:{l:{m:{_:1}}},e:{u:{d:{o:{_:1}}}},i:{_:1},s:{t:{_:1}},y:{c:{h:{_:1,e:{_:1,d:{_:1}},i:{a:{t:{r:{i:{c:{_:1},s:{t:{_:1,s:{_:1}}}},y:{_:1}}}},c:{_:1,a:{l:{l:{y:{_:1}}}}}},o:{_:1,a:{n:{a:{l:{y:{s:{i:{s:{_:1}}},z:{e:{_:1}}}}}}},b:{a:{b:{b:{l:{e:{_:1}}}}}},l:{o:{g:{i:{c:{a:{l:{_:1,l:{y:{_:1}}}}},s:{t:{_:1,s:{_:1}}}},y:{_:1}}}},p:{a:{t:{h:{_:1,i:{c:{_:1}},s:{_:1}}}}},s:{_:1,i:{s:{_:1}},o:{m:{a:{t:{i:{c:{_:1}}}}}}},t:{h:{e:{r:{a:{p:{i:{s:{t:{_:1}}},y:{_:1}}}}}},i:{c:{_:1,s:{_:1}}}}}}},d:{u:{c:{k:{_:1}}}}}},u:{b:{_:1,e:{r:{t:{y:{_:1}}},s:{_:1,c:{e:{n:{t:{_:1}}}}}},i:{c:{_:1}},l:{i:{c:{_:1,a:{l:{l:{y:{_:1}}},t:{i:{o:{n:{_:1,s:{_:1}}}}}},i:{s:{t:{_:1}},t:{y:{_:1}}},l:{y:{_:1}}},s:{h:{_:1,e:{d:{_:1},r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}}}}}}},c:{e:{_:1},k:{_:1,e:{r:{_:1}}}},d:{d:{i:{n:{g:{_:1}}},l:{e:{_:1,s:{_:1}}}}},f:{f:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1},y:{_:1}}},g:{_:1},k:{e:{_:1},i:{n:{g:{_:1}}}},l:{l:{_:1,e:{d:{_:1},r:{_:1}},i:{n:{g:{_:1}}},s:{_:1}},m:{o:{n:{a:{r:{y:{_:1}}}}}},p:{_:1,i:{t:{_:1}}},s:{a:{t:{i:{n:{g:{_:1}}}}},e:{_:1,s:{_:1}}}},m:{m:{e:{l:{_:1}}},p:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},k:{i:{n:{_:1}},a:{b:{o:{o:{_:1}}}}},s:{_:1}}},n:{_:1,c:{h:{_:1,e:{d:{_:1},s:{_:1}},i:{n:{g:{_:1}}},y:{_:1}},t:{u:{a:{l:{_:1,i:{t:{y:{_:1}}}},t:{i:{o:{n:{_:1}}}}},r:{e:{_:1,d:{_:1}}}}}},g:{e:{n:{t:{_:1}}}},i:{s:{h:{_:1,e:{d:{_:1},s:{_:1}},i:{n:{g:{_:1}}},m:{e:{n:{t:{_:1,s:{_:1}}}}}}},t:{i:{v:{e:{_:1}}}}},k:{_:1,s:{_:1},y:{_:1}},s:{_:1},t:{_:1,e:{r:{s:{_:1}}}},y:{_:1}},p:{_:1,i:{l:{_:1,s:{_:1}},t:{a:{r:{_:1}}}},p:{e:{t:{_:1,e:{e:{r:{_:1}}},s:{_:1}}},i:{e:{s:{_:1}}},y:{_:1}}},r:{b:{l:{i:{n:{d:{_:1}}}}},c:{h:{a:{s:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}}}},e:{_:1,e:{_:1},l:{y:{_:1}},r:{_:1},s:{t:{_:1}}},g:{a:{t:{o:{r:{y:{_:1}}}}},e:{_:1,d:{_:1}},i:{n:{g:{_:1}}}},i:{f:{i:{c:{a:{t:{i:{o:{n:{_:1}}}}}}}},t:{a:{n:{_:1,i:{c:{a:{l:{_:1}}}},s:{_:1}}},y:{_:1}}},p:{l:{e:{_:1}},o:{s:{e:{_:1,f:{u:{l:{l:{y:{_:1}}}}},l:{y:{_:1}},s:{_:1}}}}},r:{_:1,l:{o:{i:{n:{_:1}}}}},s:{e:{_:1},u:{a:{n:{t:{_:1}}},e:{_:1,d:{_:1}},i:{n:{g:{_:1}},t:{_:1,s:{_:1}}}}},v:{i:{e:{w:{_:1}}}},u:{g:{l:{y:{_:1}}}}},s:{_:1,h:{_:1,e:{d:{_:1},r:{_:1,s:{_:1}},s:{_:1}},i:{n:{g:{_:1}}},o:{v:{e:{r:{_:1}}}},y:{_:1}},s:{_:1,y:{c:{a:{t:{_:1}}}}}},t:{_:1,r:{i:{d:{_:1}}},s:{_:1},t:{e:{r:{_:1}},i:{n:{g:{_:1}}},y:{_:1}}},z:{z:{l:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}}}},y:{g:{m:{i:{e:{s:{_:1}}},y:{_:1}}},j:{a:{m:{a:{s:{_:1}}}}},r:{a:{m:{i:{d:{_:1,s:{_:1}}}}},e:{_:1},o:{m:{a:{n:{i:{a:{c:{_:1}}}}}},t:{e:{c:{h:{n:{i:{c:{s:{_:1}}}}}}}},a:{r:{_:1}}}},u:{k:{u:{m:{u:{k:{u:{_:1}}}}}}}}};