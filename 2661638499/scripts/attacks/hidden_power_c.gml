var atk = 3; // C
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("attack_C"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("attack_C_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 4);

//startup
set_window_value(atk, 1, AG_WINDOW_LENGTH, 18);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 1, AG_WINDOW_SFX, asset_get("sfx_zetter_shine_charged"));
set_window_value(atk, 1, AG_WINDOW_SFX_FRAME, 0);

//active (pulse)
set_window_value(atk, 2, AG_WINDOW_LENGTH, 9);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, 2, AG_WINDOW_VSPEED, -9);
set_window_value(atk, 2, AG_WINDOW_HSPEED, -9);
set_window_value(atk, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(atk, 2, AG_WINDOW_HSPEED_TYPE, 2);

//active (late)
set_window_value(atk, 3, AG_WINDOW_LENGTH, 8);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 6);

//endlag
set_window_value(atk, 4, AG_WINDOW_LENGTH, 16);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(atk, 3);

//blast hit
set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 1, HG_WINDOW, 2);
set_hitbox_value(atk, 1, HG_LIFETIME, 4);
set_hitbox_value(atk, 1, HG_HITBOX_X, 25);
set_hitbox_value(atk, 1, HG_HITBOX_Y, -4);
set_hitbox_value(atk, 1, HG_WIDTH, 40);
set_hitbox_value(atk, 1, HG_HEIGHT, 40);
set_hitbox_value(atk, 1, HG_PRIORITY, 5);
set_hitbox_value(atk, 1, HG_DAMAGE, 8);
set_hitbox_value(atk, 1, HG_ANGLE, 60);
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, .75);
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(atk, 1, HG_HITPAUSE_SCALING, .65);
set_hitbox_value(atk, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(atk, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));

//early backhit
set_hitbox_value(atk, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 2, HG_WINDOW, 2);
set_hitbox_value(atk, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(atk, 2, HG_LIFETIME, 8);
set_hitbox_value(atk, 2, HG_HITBOX_Y, -32);
set_hitbox_value(atk, 2, HG_WIDTH, 64);
set_hitbox_value(atk, 2, HG_HEIGHT, 64);
set_hitbox_value(atk, 2, HG_PRIORITY, 2);
set_hitbox_value(atk, 2, HG_DAMAGE, 5);
set_hitbox_value(atk, 2, HG_ANGLE, 120);
set_hitbox_value(atk, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, 2, HG_KNOCKBACK_SCALING, .45);
set_hitbox_value(atk, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(atk, 2, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(atk, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

//late backhit
set_hitbox_value(atk, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 3, HG_WINDOW, 3);
set_hitbox_value(atk, 3, HG_LIFETIME, 12);
set_hitbox_value(atk, 3, HG_HITBOX_Y, -32);
set_hitbox_value(atk, 3, HG_WIDTH, 48);
set_hitbox_value(atk, 3, HG_HEIGHT, 48);
set_hitbox_value(atk, 3, HG_PRIORITY, 2);
set_hitbox_value(atk, 3, HG_DAMAGE, 3);
set_hitbox_value(atk, 3, HG_ANGLE, 90);
set_hitbox_value(atk, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(atk, 3, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(atk, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(atk, 3, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(atk, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));


//================================================================
//WORD DATA
set_window_value(UNOWN_ATK.C, 2, AG_UNOWN_WINDOW_ACTIVE, true);
if ("c" not in unown_dictionary) unown_dictionary.c = make_trie_C();
//NOTE: C is too big for one file. subgroup "CO" handled in J's file
//(Assumes files are loaded alphabetically. probably not ideal)
//================================================================
//contains words starting with C
#define make_trie_C()
    return {a:{b:{_:1,a:{l:{l:{e:{r:{o:{_:1}}}}},r:{e:{t:{_:1}}}},b:{a:{g:{e:{_:1}}}},d:{r:{i:{v:{e:{r:{_:1}}}}}},e:{r:{n:{e:{t:{_:1}}}}},i:{n:{_:1,e:{t:{_:1,s:{_:1}}},s:{_:1}}},l:{e:{_:1,s:{_:1}}},o:{o:{s:{e:{_:1}}}},s:{_:1}},c:{c:{i:{a:{t:{o:{r:{e:{_:1}}}}}}},h:{e:{_:1,t:{_:1}}},k:{l:{e:{_:1},i:{n:{g:{_:1}}}}},o:{p:{h:{o:{n:{y:{_:1}}}}}},t:{u:{s:{_:1},r:{n:{e:{_:1}}}}},n:{e:{a:{_:1}}}},d:{_:1,a:{v:{e:{r:{s:{_:1}}}}},d:{i:{e:{_:1}},y:{_:1}},e:{t:{_:1}},m:{i:{u:{m:{_:1}}}}},e:{s:{a:{r:{_:1}}}},f:{e:{_:1,t:{e:{r:{i:{a:{_:1}}}}}},f:{_:1,e:{i:{n:{a:{t:{e:{d:{_:1}}}},e:{_:1}}}}}},g:{e:{_:1,d:{_:1},s:{_:1},y:{_:1}}},h:{o:{o:{t:{s:{_:1}}}}},i:{n:{_:1}},k:{e:{_:1,s:{_:1},w:{a:{l:{k:{_:1}}}}}},l:{a:{m:{i:{t:{o:{u:{s:{_:1}}},y:{_:1}}}}},c:{i:{u:{m:{_:1}}},u:{l:{a:{t:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1,s:{_:1}}}},o:{r:{_:1,s:{_:1}}}}},u:{s:{_:1}}}}},e:{n:{d:{a:{r:{_:1,s:{_:1}}},e:{r:{_:1}}}}},f:{_:1},i:{b:{e:{r:{_:1}},r:{e:{_:1}}},c:{o:{_:1}}},l:{_:1,e:{d:{_:1},r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}},o:{u:{s:{_:1}}},s:{_:1}},m:{_:1,e:{d:{_:1},r:{_:1}},i:{n:{g:{_:1}}},l:{y:{_:1}},s:{_:1}},o:{r:{i:{e:{_:1,s:{_:1}}}}},v:{e:{s:{_:1}}},z:{o:{n:{e:{_:1,s:{_:1}}}}},y:{r:{e:{x:{_:1}}}}},m:{_:1,c:{o:{r:{d:{e:{r:{_:1}}}}}},e:{_:1,l:{_:1,s:{_:1}},r:{a:{_:1,m:{a:{n:{_:1}}},s:{_:1}},u:{p:{t:{_:1}}}}},p:{_:1,a:{i:{g:{n:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}}}},e:{d:{_:1},r:{_:1,s:{_:1}}},f:{i:{r:{e:{_:1}}}},i:{n:{g:{_:1}}},o:{s:{_:1}},s:{_:1},u:{s:{_:1,e:{s:{_:1}}}}},s:{_:1,h:{a:{f:{t:{_:1}}}}}},n:{_:1,a:{l:{_:1,s:{_:1}},p:{e:{_:1}},r:{i:{e:{s:{_:1}}},y:{_:1}},s:{t:{a:{_:1}}}},c:{e:{l:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},l:{a:{t:{i:{o:{n:{_:1,s:{_:1}}}}}},e:{d:{_:1}}},s:{_:1}},r:{_:1,s:{_:1}}}},d:{i:{d:{_:1,a:{c:{y:{_:1}},t:{e:{_:1,s:{_:1}}}}},e:{s:{_:1}}},l:{e:{_:1,l:{i:{g:{h:{t:{_:1}}},t:{_:1}}},s:{_:1,t:{i:{c:{k:{_:1,s:{_:1}}}}}}}},o:{r:{_:1}},y:{_:1}},e:{_:1},i:{n:{e:{_:1,s:{_:1}}},s:{t:{e:{r:{s:{_:1}}}}}},n:{a:{b:{i:{s:{_:1}}}},e:{d:{_:1},r:{y:{_:1}}},i:{b:{a:{l:{_:1,s:{_:1}}}}},o:{l:{i:{_:1}},n:{_:1,b:{a:{l:{l:{_:1}}}},s:{_:1}},t:{_:1}}},o:{e:{_:1,s:{_:1}},p:{y:{_:1}}},s:{_:1},t:{_:1,e:{e:{n:{_:1}},r:{_:1}},o:{n:{_:1}}},v:{a:{s:{_:1,s:{_:1}}}},y:{o:{n:{_:1,s:{_:1}}}}},p:{_:1,a:{b:{i:{l:{i:{t:{i:{e:{s:{_:1}}}}}}},l:{e:{_:1}}},c:{i:{t:{y:{_:1}}}}},e:{_:1,r:{_:1}},i:{t:{a:{l:{_:1,i:{s:{m:{_:1},t:{_:1,s:{_:1}}},z:{e:{_:1}}},s:{_:1}}},o:{l:{_:1}}}},o:{_:1,t:{e:{_:1}}},p:{e:{r:{_:1}},i:{n:{g:{_:1}}},u:{c:{c:{i:{n:{o:{_:1}}}}}}},r:{i:{c:{e:{_:1}}}},s:{_:1,i:{z:{e:{_:1,d:{_:1}}}},u:{l:{e:{_:1,s:{_:1}}}}},t:{a:{i:{n:{_:1,s:{_:1}}}},i:{o:{n:{i:{n:{g:{_:1}}}}},v:{a:{t:{e:{d:{_:1}},i:{n:{g:{_:1}}}}},e:{_:1,s:{_:1}},i:{t:{y:{_:1}}}}},u:{r:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}}}}}}},r:{_:1,a:{m:{b:{a:{_:1}},e:{l:{_:1}}},t:{_:1,s:{_:1}}},b:{_:1,o:{_:1,h:{y:{d:{r:{a:{t:{e:{s:{_:1}}}}}}}},n:{_:1}},s:{_:1},u:{n:{c:{l:{e:{_:1}}}},r:{e:{t:{o:{r:{_:1}}}}}},i:{n:{k:{_:1}}}},c:{a:{s:{s:{_:1}}},i:{n:{o:{g:{e:{n:{s:{_:1}}}}}}}},d:{_:1,b:{o:{a:{r:{d:{_:1}}}}},i:{a:{c:{_:1}},g:{a:{n:{_:1}}},n:{a:{l:{_:1,s:{_:1}}}},o:{g:{r:{a:{m:{_:1}}}},l:{o:{g:{i:{s:{t:{_:1}}},y:{_:1}}}},v:{a:{s:{c:{u:{l:{a:{r:{_:1}}}}}}}}}},s:{_:1}},e:{_:1,d:{_:1},e:{r:{_:1,s:{_:1}}},f:{r:{e:{e:{_:1}}},u:{l:{_:1,l:{y:{_:1}}}}},g:{i:{v:{e:{r:{_:1}}}}},l:{e:{s:{s:{_:1,n:{e:{s:{s:{_:1}}}}}}}},s:{_:1,s:{_:1}},t:{a:{k:{e:{r:{_:1}}}}}},g:{o:{_:1}},i:{b:{o:{u:{_:1}}},n:{g:{_:1}},t:{a:{s:{_:1}}}},j:{a:{c:{k:{i:{n:{g:{_:1}}}}}}},l:{_:1,i:{n:{_:1}}},m:{e:{n:{_:1}},i:{n:{e:{_:1}}}},n:{e:{y:{_:1}},i:{e:{_:1},v:{a:{l:{_:1}},o:{r:{e:{_:1},o:{u:{s:{_:1}}}}},i:{n:{e:{_:1}}}}}},o:{l:{_:1,e:{r:{s:{_:1}}},i:{n:{g:{_:1}}},l:{i:{n:{g:{_:1}}}}},t:{i:{d:{_:1}}},u:{s:{e:{l:{_:1}}}}},p:{_:1,e:{n:{t:{e:{r:{_:1}},r:{y:{_:1}}}},t:{_:1,i:{n:{g:{_:1}}}}},o:{o:{l:{_:1}}}},r:{_:1,i:{a:{g:{e:{_:1,s:{_:1}}}},e:{d:{_:1},r:{_:1,s:{_:1}},s:{_:1}}},o:{t:{_:1,s:{_:1}}},y:{_:1,i:{n:{g:{_:1}}}},a:{c:{o:{s:{t:{a:{_:1}}}}}}},s:{_:1},t:{_:1,e:{d:{_:1},l:{_:1,s:{_:1}},r:{_:1}},i:{l:{a:{g:{e:{_:1}}}},n:{g:{_:1}}},o:{g:{r:{a:{p:{h:{e:{r:{s:{_:1}}}}}}}},n:{_:1,s:{_:1}},o:{n:{_:1,i:{s:{t:{_:1}}},s:{_:1}}},u:{c:{h:{e:{_:1}}}}},r:{i:{d:{g:{e:{_:1}}}}},s:{_:1}},v:{e:{_:1,d:{_:1},l:{_:1},r:{_:1,s:{_:1}}},i:{n:{g:{_:1,s:{_:1}}}},a:{n:{h:{a:{_:1}}}}},w:{a:{s:{h:{_:1}}}},k:{o:{l:{_:1}}}},s:{a:{_:1},b:{a:{h:{_:1}}},c:{a:{d:{e:{_:1}}},o:{o:{n:{_:1}}}},e:{_:1,d:{_:1},l:{o:{a:{d:{_:1}}}},s:{_:1}},h:{_:1,e:{d:{_:1},w:{s:{_:1}}},i:{e:{r:{_:1}},n:{g:{_:1}}},m:{e:{r:{e:{_:1}}}}},i:{n:{g:{_:1,s:{_:1}},o:{_:1,s:{_:1}}},t:{a:{s:{_:1}}}},k:{e:{t:{_:1,s:{_:1}}}},s:{e:{r:{o:{l:{e:{_:1}}}},t:{t:{e:{_:1,s:{_:1}}}}}},t:{_:1,e:{_:1},i:{n:{g:{_:1}}},l:{e:{_:1,s:{_:1}}},o:{r:{_:1}},r:{a:{t:{e:{d:{_:1}}}}},s:{_:1},f:{o:{r:{m:{_:1}}}}},u:{a:{l:{_:1,l:{y:{_:1}},t:{i:{e:{s:{_:1}}},y:{_:1}}}}}},t:{_:1,a:{c:{l:{y:{s:{m:{i:{c:{_:1}}}}}}},l:{o:{g:{_:1,i:{n:{g:{_:1}}},u:{e:{_:1}}}},y:{s:{t:{_:1}}}},p:{u:{l:{t:{_:1}}}},r:{a:{c:{t:{s:{_:1}}}}},s:{t:{r:{o:{p:{h:{e:{_:1},i:{c:{_:1}}}}}}}},t:{o:{n:{i:{c:{_:1}}}}}},c:{h:{_:1,e:{r:{_:1,s:{_:1}},s:{_:1}},i:{n:{g:{_:1}}},y:{_:1}}},e:{g:{o:{r:{i:{c:{a:{l:{l:{y:{_:1}}}}},e:{s:{_:1}},z:{e:{d:{_:1}}}},y:{_:1}}}},r:{_:1,e:{r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}},p:{i:{l:{l:{a:{r:{_:1,s:{_:1}}}}},e:{_:1}}},s:{_:1},w:{a:{u:{l:{i:{n:{g:{_:1}}}}}}}},s:{_:1}},f:{i:{g:{h:{t:{_:1}}}}},h:{a:{r:{s:{i:{s:{_:1}}},t:{i:{c:{_:1}}}}},e:{d:{r:{a:{l:{_:1}}}},t:{e:{r:{_:1}}}},o:{l:{i:{c:{_:1}}}}},s:{_:1,u:{p:{_:1}}},t:{l:{e:{_:1}},y:{_:1}},w:{a:{l:{k:{_:1}}}}},u:{c:{u:{s:{_:1}}},g:{h:{t:{_:1}}},l:{d:{r:{o:{n:{_:1}}}},i:{f:{l:{o:{w:{e:{r:{_:1}}}}}}}},s:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}},t:{i:{o:{n:{_:1,a:{r:{y:{_:1}}}},u:{s:{_:1,l:{y:{_:1}}}}}}}},v:{a:{l:{c:{a:{d:{e:{_:1}}}},i:{e:{r:{_:1}}},r:{y:{_:1}}}},e:{_:1,d:{_:1},m:{a:{n:{_:1}}},r:{n:{_:1,s:{_:1}}},s:{_:1}},i:{a:{r:{_:1}},t:{i:{e:{s:{_:1}}},y:{_:1}}}},y:{m:{a:{n:{_:1,s:{_:1}}}}}},e:{a:{s:{e:{_:1,d:{_:1}}}},d:{a:{r:{_:1,s:{_:1}}}},e:{_:1},i:{l:{i:{n:{g:{_:1}}}}},l:{e:{b:{r:{a:{t:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1}}}}},i:{t:{i:{e:{s:{_:1}}},y:{_:1}}}},i:{_:1}},r:{y:{_:1}},s:{t:{e:{_:1,e:{l:{a:{_:1}}}}}}},i:{b:{a:{c:{y:{_:1}},t:{e:{_:1}}}}},l:{_:1,a:{r:{_:1,s:{_:1}}},e:{d:{_:1}},i:{s:{t:{_:1}}},m:{a:{t:{e:{_:1,s:{_:1}}}}},o:{_:1},s:{_:1},u:{l:{a:{r:{_:1}},i:{t:{e:{_:1}}}}}}},m:{e:{n:{t:{_:1}},t:{e:{r:{i:{e:{s:{_:1}}},y:{_:1}}}}}},n:{s:{o:{r:{_:1,s:{h:{i:{p:{_:1}}}}}},u:{r:{e:{_:1,d:{_:1}}},s:{_:1}}},t:{_:1,e:{n:{n:{i:{a:{l:{_:1}}}}},r:{_:1,e:{d:{_:1}},f:{o:{l:{d:{_:1}}}},p:{i:{e:{c:{e:{_:1,s:{_:1}}}}}},s:{_:1}}},i:{m:{e:{t:{e:{r:{_:1,s:{_:1}}}}}},s:{k:{o:{r:{c:{h:{_:1}}}}}}},r:{a:{l:{_:1}},e:{_:1,d:{_:1}}},s:{_:1},u:{r:{i:{e:{s:{_:1}}},y:{_:1}}}}},r:{a:{m:{i:{c:{_:1}}}},e:{a:{l:{_:1}},b:{e:{l:{l:{u:{m:{_:1}}}}},r:{a:{l:{_:1}},u:{m:{_:1}}}},m:{o:{n:{i:{a:{l:{_:1}},e:{s:{_:1}}},y:{_:1}}}}},t:{a:{i:{n:{_:1,l:{y:{_:1}},t:{i:{e:{s:{_:1}}},y:{_:1}}}}},i:{f:{i:{a:{b:{l:{e:{_:1},y:{_:1}}}},c:{a:{t:{e:{_:1,s:{_:1}},i:{o:{n:{_:1}}}}}},e:{d:{_:1}}},y:{_:1}}}},u:{l:{e:{a:{n:{_:1}}}}},v:{i:{c:{a:{l:{_:1}}}}}},s:{s:{a:{t:{i:{o:{n:{_:1}}}}},p:{o:{o:{l:{_:1}}}}}}},h:{a:{d:{_:1},f:{f:{_:1},i:{n:{g:{_:1}}}},g:{r:{i:{n:{e:{d:{_:1}}}}}},i:{n:{_:1,e:{d:{_:1}},s:{_:1,a:{w:{_:1,s:{_:1}}}}},r:{_:1,m:{a:{n:{_:1}}},s:{_:1}}},l:{e:{t:{_:1}},k:{_:1,b:{o:{a:{r:{d:{_:1}}}}},e:{d:{_:1}}},l:{e:{n:{g:{e:{_:1,d:{_:1},r:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}}}}},m:{b:{e:{r:{_:1,l:{a:{i:{n:{_:1}}}},s:{_:1}}}},e:{l:{e:{o:{n:{_:1}}}}},o:{m:{i:{l:{e:{_:1}}}}},p:{_:1,a:{g:{n:{e:{_:1}}}},i:{o:{n:{_:1,s:{_:1,h:{i:{p:{_:1,s:{_:1}}}}}}}},s:{_:1}}},n:{c:{e:{_:1,l:{l:{o:{r:{_:1}}}},s:{_:1}}},d:{e:{l:{i:{e:{r:{_:1,s:{_:1}}}},u:{r:{e:{_:1}}}}},l:{e:{r:{_:1}}}},g:{_:1,e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}},n:{e:{l:{_:1,e:{d:{_:1}},s:{_:1}}}},t:{_:1,e:{u:{s:{e:{_:1}}}},i:{n:{g:{_:1}}},s:{_:1}},s:{e:{y:{_:1}}}},o:{s:{_:1},t:{i:{c:{_:1}}}},p:{_:1,e:{l:{_:1},r:{o:{n:{_:1,e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}}}},l:{a:{i:{n:{_:1}}}},m:{a:{n:{_:1}}},p:{e:{d:{_:1}}},s:{_:1},t:{e:{r:{_:1,s:{_:1}}}}},r:{a:{c:{t:{e:{r:{_:1,i:{s:{t:{i:{c:{s:{_:1}}}}},z:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}}}}},s:{_:1}}}}},d:{e:{_:1,s:{_:1}}}},c:{o:{a:{l:{_:1}}}},d:{o:{n:{n:{a:{y:{_:1}}}}}},g:{e:{_:1,d:{_:1},r:{_:1},s:{_:1}},i:{n:{g:{_:1}}}},i:{o:{t:{_:1,s:{_:1}}},s:{m:{a:{t:{i:{c:{_:1}}}}}},t:{a:{b:{l:{e:{_:1}}}},i:{e:{s:{_:1}}},y:{_:1}},z:{a:{r:{d:{_:1}}}}},l:{a:{t:{a:{n:{_:1}}}},e:{y:{_:1}},i:{e:{_:1,s:{_:1}}},o:{t:{t:{e:{_:1}}}}},m:{_:1,e:{d:{_:1},r:{_:1},l:{e:{o:{n:{_:1}}}}},i:{n:{g:{_:1,l:{y:{_:1}}}}},s:{_:1},a:{n:{d:{e:{r:{_:1}}}}}},r:{e:{d:{_:1}}},t:{_:1,e:{d:{_:1},r:{_:1,e:{d:{_:1}}}},r:{e:{u:{s:{e:{_:1}}}}},s:{_:1}},j:{a:{b:{u:{g:{_:1}}}}}},s:{e:{_:1,d:{_:1},r:{_:1},s:{_:1}},i:{n:{g:{_:1}}},m:{_:1},s:{i:{s:{_:1}}},t:{i:{t:{y:{_:1}}}}},t:{_:1,e:{a:{u:{_:1}}},t:{e:{d:{_:1},r:{_:1,b:{o:{x:{_:1}}}}},i:{n:{g:{_:1}}},y:{_:1}},o:{t:{_:1}}},u:{f:{f:{e:{u:{r:{_:1}}}}},v:{i:{n:{i:{s:{t:{i:{c:{_:1}}}}}}}}}},e:{a:{p:{_:1,e:{n:{_:1},r:{_:1},s:{t:{_:1}}}},t:{_:1,e:{d:{_:1},r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}},s:{_:1}}},c:{k:{_:1,b:{o:{o:{k:{_:1}}}},e:{d:{_:1},r:{_:1,e:{d:{_:1}},s:{_:1}}},i:{n:{g:{_:1}}},m:{a:{t:{e:{_:1}}}},o:{u:{t:{_:1}}},p:{o:{i:{n:{t:{s:{_:1}}}}}},s:{_:1},u:{p:{_:1,s:{_:1}}}}},d:{d:{a:{r:{_:1}}}},e:{k:{_:1,b:{o:{n:{e:{s:{_:1}}}}},s:{_:1}},p:{_:1},r:{_:1,e:{d:{_:1}},f:{u:{l:{_:1}}},i:{n:{g:{_:1}},o:{_:1}},l:{e:{a:{d:{e:{r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}}}}}},s:{_:1},y:{_:1}},s:{e:{_:1,b:{u:{r:{g:{e:{r:{_:1,s:{_:1}}}}}}},c:{a:{k:{e:{_:1}}}},d:{_:1},s:{_:1}},y:{_:1}},t:{a:{h:{_:1}}}},f:{_:1,s:{_:1}},m:{i:{c:{a:{l:{_:1,l:{y:{_:1}},s:{_:1}}}},s:{t:{_:1,r:{y:{_:1}}}}},o:{_:1}},n:{i:{l:{l:{e:{_:1}}}}},q:{u:{e:{_:1}}},r:{i:{s:{h:{_:1,e:{d:{_:1}}}}},r:{i:{e:{s:{_:1}},m:{_:1}},y:{_:1}},u:{b:{_:1,i:{_:1}}}},s:{s:{_:1,b:{o:{a:{r:{d:{_:1}}}}}},t:{_:1,n:{u:{t:{_:1,s:{_:1}}}},s:{_:1},y:{_:1}},p:{i:{n:{_:1}}},n:{a:{u:{g:{h:{t:{_:1}}}}}}},v:{a:{l:{i:{e:{r:{_:1}}}}},r:{o:{n:{_:1}}},y:{_:1}},w:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},y:{_:1},t:{l:{e:{_:1}}}},z:{_:1}},i:{_:1,c:{_:1,a:{n:{o:{_:1}}},k:{_:1,a:{d:{e:{e:{_:1}}}},e:{n:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},p:{o:{x:{_:1}}},s:{_:1}}},s:{_:1}},o:{_:1}},e:{f:{_:1,s:{_:1}}},f:{f:{o:{n:{_:1}}}},g:{g:{e:{r:{_:1}}}},h:{u:{a:{h:{u:{a:{_:1}}}}}},l:{d:{_:1,b:{i:{r:{t:{h:{_:1}}}}},h:{o:{o:{d:{_:1,s:{_:1}}}}},i:{s:{h:{_:1}}},l:{i:{k:{e:{_:1}}}},r:{e:{n:{_:1}}}},e:{_:1,s:{_:1}},i:{_:1},l:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1},y:{_:1}}},m:{e:{_:1,r:{a:{_:1}},c:{h:{o:{_:1}}}},n:{e:{y:{_:1}}},p:{_:1,a:{n:{z:{e:{e:{_:1}}}}},s:{_:1}},c:{h:{a:{r:{_:1}}}}},n:{_:1,a:{_:1},k:{_:1,s:{_:1}},o:{_:1},s:{_:1},c:{h:{o:{u:{_:1}}}},g:{l:{i:{n:{g:{_:1}}}}}},p:{_:1,m:{u:{n:{k:{_:1}}}},p:{e:{d:{_:1},r:{_:1}},i:{n:{g:{_:1}}}},s:{_:1}},r:{o:{p:{r:{a:{c:{t:{o:{r:{_:1}}}}}}}},p:{_:1,i:{n:{g:{_:1}}},y:{_:1}}},s:{e:{l:{_:1,i:{n:{g:{_:1}}}}}},t:{_:1,c:{h:{a:{t:{_:1}}}}},v:{a:{l:{r:{o:{u:{s:{_:1}}}}}}},k:{o:{r:{i:{t:{a:{_:1}}}}}}},l:{a:{m:{y:{d:{i:{a:{_:1}}}}}},o:{r:{i:{d:{e:{_:1}},n:{e:{_:1}}},o:{f:{o:{r:{m:{e:{d:{_:1}}}}}}}}}},o:{c:{o:{l:{a:{t:{e:{_:1,s:{_:1},y:{_:1}}}}}}},i:{c:{e:{_:1,s:{_:1}}},r:{_:1,b:{o:{y:{_:1}}},s:{_:1}}},k:{e:{_:1,d:{_:1},r:{_:1},s:{_:1}},i:{n:{g:{_:1}}}},l:{e:{r:{a:{_:1}},s:{t:{e:{r:{o:{l:{_:1}}}}}}},i:{n:{e:{s:{t:{e:{r:{a:{s:{e:{_:1}}}}}}}}}}},m:{p:{_:1,e:{r:{s:{_:1}}},i:{n:{g:{_:1}}}}},o:{s:{e:{_:1,r:{s:{_:1}},s:{_:1}},i:{n:{g:{_:1}}},y:{_:1}}},p:{_:1,p:{e:{d:{_:1},r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}},y:{_:1}},s:{_:1,t:{i:{c:{k:{s:{_:1}}}}}}},r:{d:{_:1,s:{_:1}},e:{_:1,o:{g:{r:{a:{p:{h:{y:{_:1}}}}}}},s:{_:1}},u:{s:{_:1}}},s:{e:{_:1,n:{_:1}}},w:{_:1,d:{e:{r:{_:1}}}}},r:{i:{s:{t:{e:{n:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}}}},i:{e:{_:1}},y:{_:1}}}},o:{m:{e:{_:1},i:{c:{_:1}},o:{s:{o:{m:{e:{s:{_:1}}}}}}},n:{i:{c:{_:1,a:{l:{l:{y:{_:1}}}},l:{e:{_:1}}}},o:{l:{o:{g:{y:{_:1}}}}}}}},u:{b:{b:{y:{_:1}}},c:{k:{_:1,e:{d:{_:1}},l:{e:{_:1,s:{_:1}}},s:{_:1}}},g:{_:1,g:{i:{n:{g:{_:1}}}}},m:{_:1,m:{y:{_:1}},p:{_:1,s:{_:1}},s:{_:1}},n:{k:{_:1,s:{_:1},y:{_:1}}},r:{c:{h:{_:1,e:{s:{_:1}}}},n:{_:1}},t:{e:{_:1,s:{_:1}}}}},i:{a:{o:{_:1}},c:{e:{l:{y:{_:1}}}},d:{e:{r:{_:1}}},g:{a:{r:{_:1,e:{t:{t:{e:{_:1,s:{_:1}}}}},s:{_:1}}}},n:{d:{e:{r:{_:1,a:{c:{e:{_:1}}}}}},e:{m:{a:{_:1,t:{i:{c:{_:1}}}}}},n:{a:{b:{a:{r:{_:1}}},m:{o:{n:{_:1}}}}},c:{c:{i:{n:{o:{_:1}}}}}},p:{h:{e:{r:{_:1}}}},r:{c:{l:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}},u:{i:{t:{_:1,e:{d:{_:1}},r:{y:{_:1}},s:{_:1}}},l:{a:{r:{_:1},t:{e:{_:1,d:{_:1}},i:{o:{n:{_:1}}},o:{r:{y:{_:1}}}}}},m:{c:{i:{s:{i:{o:{n:{_:1}}}}}},f:{e:{r:{e:{n:{c:{e:{_:1}}}}}}},s:{t:{a:{n:{c:{e:{_:1,s:{_:1}}},t:{i:{a:{l:{_:1}}}}}}}},v:{e:{n:{t:{_:1}}}}},s:{_:1}}},r:{h:{o:{s:{i:{s:{_:1}}}}}}},s:{s:{y:{_:1}}},t:{a:{t:{i:{o:{n:{_:1,s:{_:1}}}}}},e:{_:1,d:{_:1}},i:{e:{s:{_:1}},n:{g:{_:1}},z:{e:{n:{_:1,s:{_:1,h:{i:{p:{_:1}}}}}}}},r:{u:{s:{_:1}}},y:{_:1,w:{i:{d:{e:{_:1}}}}}},v:{i:{c:{_:1,s:{_:1}},l:{_:1,i:{a:{n:{_:1,s:{_:1}}},s:{a:{t:{i:{o:{n:{_:1}}}}}},t:{y:{_:1}},z:{a:{t:{i:{o:{n:{_:1,s:{_:1}}}}}},e:{d:{_:1}}}}}},v:{i:{e:{s:{_:1}}}}}},l:{a:{c:{k:{_:1}},d:{_:1},i:{m:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}},r:{v:{o:{y:{a:{n:{t:{_:1}}}}}}}},m:{_:1,b:{a:{k:{e:{_:1}}}},m:{e:{d:{_:1}},y:{_:1}},o:{r:{i:{n:{g:{_:1}}}}},p:{_:1,e:{d:{_:1},r:{l:{_:1}}},i:{n:{g:{_:1}}}},s:{_:1}},n:{_:1,d:{e:{s:{t:{i:{n:{e:{_:1}}}}}}},g:{_:1,i:{n:{g:{_:1}}}},k:{i:{n:{g:{_:1}}}}},p:{_:1,p:{e:{d:{_:1},r:{_:1}},i:{n:{g:{_:1}}}}},r:{e:{n:{c:{e:{_:1}}}},i:{f:{i:{c:{a:{t:{i:{o:{n:{_:1}}}}}}},y:{_:1,i:{n:{g:{_:1}}}}},n:{e:{t:{_:1}}},t:{y:{_:1}}}},s:{h:{_:1,i:{n:{g:{_:1}}}},p:{_:1},s:{_:1,e:{s:{_:1}},i:{c:{_:1,a:{l:{_:1}},s:{_:1}},e:{r:{_:1}},f:{i:{c:{a:{t:{i:{o:{n:{_:1}}}}}},e:{d:{_:1}}},y:{_:1}}},l:{e:{s:{s:{_:1}}}},m:{a:{t:{e:{_:1,s:{_:1}}}}},r:{o:{o:{m:{_:1,s:{_:1}}}}},y:{_:1}}},u:{s:{e:{_:1,s:{_:1}},t:{r:{o:{p:{h:{o:{b:{i:{a:{_:1},c:{_:1}}}}}}}}}},n:{c:{h:{e:{r:{_:1}}}}}},v:{i:{c:{l:{e:{_:1}}}}},w:{_:1,e:{d:{_:1}},s:{_:1},i:{t:{z:{e:{r:{_:1}}}}}},y:{_:1,m:{o:{r:{e:{_:1,s:{_:1}}}}},d:{o:{l:{_:1}}}}},e:{a:{n:{_:1,e:{d:{_:1},r:{_:1,s:{_:1}},s:{t:{_:1}}},i:{n:{g:{_:1}}},l:{i:{n:{e:{s:{s:{_:1}}}}}},s:{_:1,e:{_:1,d:{_:1},r:{_:1},s:{_:1}},i:{n:{g:{_:1}}}},u:{p:{_:1}}},r:{_:1,a:{n:{c:{e:{_:1,s:{_:1}}}}},e:{d:{_:1},r:{_:1}},i:{n:{g:{_:1}}},l:{y:{_:1}},s:{_:1}},t:{s:{_:1}},v:{a:{g:{e:{_:1}}},e:{_:1}}},f:{_:1,a:{i:{r:{y:{_:1}}},b:{l:{e:{_:1}}}},f:{a:{_:1}}},m:{e:{n:{c:{y:{_:1}},t:{_:1}}}},n:{c:{h:{_:1}}},r:{g:{y:{_:1,m:{a:{n:{_:1}}}}},i:{c:{a:{l:{_:1}}}},k:{_:1,s:{_:1}}},v:{e:{r:{_:1,l:{y:{_:1}},n:{e:{s:{s:{_:1}}}}}}}},i:{c:{h:{e:{_:1}},k:{_:1,e:{d:{_:1},r:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}},e:{n:{t:{_:1,e:{l:{e:{_:1}}},s:{_:1}}}},f:{f:{_:1,h:{a:{n:{g:{e:{r:{_:1}}}}}},s:{_:1}}},m:{a:{t:{e:{_:1}},x:{_:1}},b:{_:1,e:{d:{_:1},r:{s:{_:1}}},i:{n:{g:{_:1}}}}},n:{c:{h:{e:{d:{_:1},r:{_:1},s:{_:1}}}},g:{_:1,i:{n:{g:{_:1}}},s:{_:1},y:{_:1}},i:{c:{_:1,a:{l:{_:1,l:{y:{_:1}}}},s:{_:1}}},k:{_:1}},p:{_:1,b:{o:{a:{r:{d:{_:1}}}}},p:{e:{d:{_:1},r:{_:1,s:{_:1}}},i:{n:{g:{_:1,s:{_:1}}}}},s:{_:1}},q:{u:{e:{_:1}}},t:{o:{r:{i:{s:{_:1}}}}}},o:{a:{k:{_:1}},b:{b:{e:{r:{e:{d:{_:1}}}},o:{p:{u:{s:{_:1}}}}}},c:{k:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1},w:{i:{s:{e:{_:1}}},o:{r:{k:{_:1}}}}}},d:{_:1,s:{_:1}},g:{g:{e:{d:{_:1}},i:{n:{g:{_:1}}}},s:{_:1}},i:{s:{t:{e:{r:{e:{d:{_:1}}}}}}},n:{e:{_:1,d:{_:1},s:{_:1}}},p:{_:1},s:{e:{_:1,d:{_:1},l:{y:{_:1}},n:{e:{s:{s:{_:1}}}},r:{_:1},s:{_:1,t:{_:1}},t:{_:1,e:{d:{_:1}},s:{_:1}}},i:{n:{g:{_:1}}},u:{r:{e:{_:1}}}},t:{_:1,h:{_:1,e:{_:1,d:{_:1},s:{_:1,l:{i:{n:{e:{_:1}}}}}},i:{n:{g:{_:1}}},s:{_:1}},s:{_:1},t:{e:{d:{_:1}},i:{n:{g:{_:1}}}}},u:{d:{_:1,e:{d:{_:1}},s:{_:1},y:{_:1}},t:{_:1}},v:{e:{n:{_:1},r:{_:1,l:{e:{a:{f:{_:1}}}}},s:{_:1}}},w:{n:{_:1,i:{n:{g:{_:1}}},s:{_:1}}},y:{s:{t:{e:{r:{_:1}}}}}},u:{b:{_:1,b:{e:{d:{_:1}}},h:{o:{u:{s:{e:{_:1}}}}},s:{_:1}},c:{k:{_:1,i:{n:{g:{_:1}}}}},e:{_:1,l:{e:{s:{s:{_:1}}}},s:{_:1}},m:{p:{_:1,s:{_:1}},s:{i:{l:{y:{_:1}},n:{e:{s:{s:{_:1}}}}},y:{_:1}}},n:{g:{_:1},k:{_:1,e:{r:{_:1,s:{_:1}}}}},s:{t:{e:{r:{s:{_:1}}}}},t:{c:{h:{_:1,e:{d:{_:1},s:{_:1}}}},t:{e:{r:{_:1,i:{n:{g:{_:1}}}}}}}}},r:{a:{b:{_:1,b:{y:{_:1}},g:{r:{a:{s:{s:{_:1}}}}},s:{_:1},r:{a:{w:{l:{e:{r:{_:1}}}}}},o:{m:{i:{n:{a:{b:{l:{e:{_:1}}}}}}}}},c:{k:{_:1,e:{d:{_:1},r:{_:1,j:{a:{c:{k:{_:1}}}},s:{_:1}}},i:{n:{g:{_:1}}},l:{i:{n:{g:{_:1}}}},p:{o:{t:{_:1}}},s:{_:1}}},d:{l:{e:{_:1}},i:{l:{y:{_:1}}}},f:{t:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1,m:{a:{n:{s:{h:{i:{p:{_:1}}}}}},e:{n:{_:1}}}},y:{_:1}}},m:{_:1,m:{e:{d:{_:1}},i:{n:{g:{_:1}}}},p:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}},o:{r:{a:{n:{t:{_:1}}}}}},n:{b:{e:{r:{r:{y:{_:1}}}}},e:{_:1,s:{_:1}},i:{a:{l:{_:1}},u:{m:{_:1}},d:{o:{s:{_:1}}}},k:{_:1,i:{n:{g:{_:1}}},s:{_:1},y:{_:1}},n:{y:{_:1}}},p:{_:1,p:{e:{d:{_:1},r:{_:1}},i:{n:{g:{_:1}}},y:{_:1}},s:{_:1}},s:{h:{_:1,e:{d:{_:1},r:{_:1,s:{_:1}},s:{_:1}},i:{n:{g:{_:1}}}},s:{_:1}},t:{e:{_:1,d:{_:1},r:{_:1},s:{_:1}}},v:{e:{_:1,s:{_:1}},i:{n:{g:{_:1}}}},w:{l:{_:1,e:{d:{_:1},r:{s:{_:1}}},i:{n:{g:{_:1}}},s:{_:1},y:{_:1}},d:{a:{u:{n:{t:{_:1}}}}}},y:{o:{n:{s:{_:1}}}},z:{e:{_:1,d:{_:1}},i:{e:{r:{_:1},s:{t:{_:1}}},n:{e:{s:{s:{_:1}}}}},y:{_:1}}},e:{a:{k:{_:1,y:{_:1}},m:{_:1,e:{d:{_:1},r:{_:1}},i:{n:{g:{_:1}}},y:{_:1}},s:{e:{_:1,d:{_:1},s:{_:1}}},t:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1,s:{_:1}}},v:{e:{_:1,l:{y:{_:1}}},i:{t:{y:{_:1}}}}},o:{r:{_:1}},u:{r:{e:{_:1,s:{_:1}}}}}},d:{e:{n:{c:{e:{_:1}},t:{i:{a:{l:{s:{_:1}}}}},z:{a:{_:1}}}},i:{b:{i:{l:{i:{t:{y:{_:1}}}}},l:{e:{_:1}}},t:{_:1,e:{d:{_:1}},s:{_:1}}},o:{_:1}},e:{d:{_:1,s:{_:1}},k:{_:1},p:{_:1,e:{r:{s:{_:1}}},i:{n:{g:{_:1}}},s:{_:1},y:{_:1}}},m:{a:{t:{e:{d:{_:1}},i:{o:{n:{_:1}}},o:{r:{i:{u:{m:{_:1}}}}}}},e:{_:1}},p:{e:{_:1,s:{_:1}},t:{_:1}},s:{c:{e:{n:{t:{_:1}}}},t:{_:1,e:{d:{_:1}}},s:{e:{l:{i:{a:{_:1}}}}}},t:{i:{n:{s:{_:1}}}},v:{a:{s:{s:{e:{_:1}}}}},w:{_:1,m:{a:{n:{_:1}}},s:{_:1}}},i:{b:{_:1,b:{a:{g:{e:{_:1}}}},s:{_:1}},c:{k:{_:1,e:{t:{_:1}}}},e:{d:{_:1},r:{_:1},s:{_:1}},k:{e:{y:{_:1}}},m:{e:{_:1,s:{_:1}},i:{n:{a:{l:{_:1,i:{s:{t:{i:{c:{s:{_:1}}}}}},l:{y:{_:1}},s:{_:1}}},o:{l:{o:{g:{y:{_:1}}}}}}},p:{_:1},s:{o:{n:{_:1}}}},n:{g:{e:{_:1}}},p:{e:{s:{_:1}},p:{l:{e:{_:1,d:{_:1},s:{_:1}}}}},s:{_:1,e:{s:{_:1}},i:{s:{_:1}},p:{_:1,s:{_:1},y:{_:1}}},t:{e:{r:{i:{a:{_:1},o:{n:{_:1}}}}},i:{c:{_:1,a:{l:{_:1,l:{y:{_:1}}}},i:{s:{m:{_:1}},z:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}}}}},s:{_:1}}},t:{e:{r:{_:1,s:{_:1}}}}}},o:{a:{k:{_:1,e:{r:{_:1}}},g:{u:{n:{k:{_:1}}}}},c:{_:1,k:{_:1,e:{t:{_:1}}},o:{d:{i:{l:{e:{_:1,s:{_:1}}}}},n:{a:{w:{_:1}}}}},f:{t:{_:1}},i:{s:{s:{a:{n:{t:{s:{_:1}}}}}}},n:{i:{e:{s:{_:1}}}},o:{k:{_:1,e:{d:{_:1}},s:{_:1}},n:{_:1}},p:{_:1,p:{e:{d:{_:1}}},s:{_:1}},q:{u:{e:{t:{_:1}}}},s:{s:{_:1,b:{o:{w:{_:1}}},e:{d:{_:1},s:{_:1}},f:{i:{r:{e:{_:1}}}},h:{a:{i:{r:{s:{_:1}}}}},i:{n:{g:{_:1}}},r:{o:{a:{d:{s:{_:1}}}}},w:{o:{r:{d:{_:1}}}}}},t:{c:{h:{_:1}}},u:{c:{h:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}}}},p:{i:{e:{r:{_:1}}}},t:{o:{n:{s:{_:1}}}}},w:{_:1,b:{a:{r:{_:1}}},d:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}},e:{d:{_:1}},i:{n:{g:{_:1}}},n:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}},s:{_:1}},b:{a:{t:{_:1}}}},u:{c:{i:{a:{l:{_:1}},b:{l:{e:{_:1}}},f:{i:{e:{d:{_:1}},x:{_:1,i:{o:{n:{_:1}}}}},y:{_:1}}}},d:{_:1,d:{y:{_:1}},e:{_:1,l:{y:{_:1}}}},e:{l:{_:1,l:{y:{_:1}},t:{y:{_:1}}}},i:{s:{e:{_:1,d:{_:1},r:{_:1,s:{_:1}},s:{_:1}},i:{n:{g:{_:1}}}}},m:{b:{_:1,l:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}},s:{_:1}},m:{y:{_:1}},p:{e:{t:{s:{_:1}}},l:{e:{d:{_:1}}}}},n:{c:{h:{_:1,e:{d:{_:1},s:{_:1}},y:{_:1}}}},s:{a:{d:{e:{_:1,r:{_:1},s:{_:1}}}},h:{_:1,e:{d:{_:1},r:{_:1},s:{_:1}},i:{n:{g:{_:1}}}},t:{_:1,s:{_:1},y:{_:1},l:{e:{_:1}}}},t:{c:{h:{_:1,e:{s:{_:1}}}}},x:{_:1}},y:{_:1,i:{n:{g:{_:1}}},o:{g:{e:{n:{i:{c:{_:1}}}},o:{n:{a:{l:{_:1}}}}}},p:{t:{_:1,i:{c:{_:1}},o:{_:1},s:{_:1}}},s:{t:{a:{l:{_:1,s:{_:1}}}}}}},u:{b:{_:1,b:{i:{e:{s:{_:1}}},y:{_:1}},e:{_:1,d:{_:1},s:{_:1}},i:{c:{_:1,l:{e:{_:1}}}},s:{_:1},o:{n:{e:{_:1}}},c:{h:{o:{o:{_:1}}}}},c:{k:{o:{o:{_:1}}},u:{m:{b:{e:{r:{_:1}}}}}},d:{_:1,d:{l:{e:{_:1,d:{_:1},s:{_:1}},y:{_:1}},y:{_:1}}},e:{_:1,d:{_:1}},f:{f:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}},a:{n:{t:{_:1}}}},i:{s:{i:{n:{e:{_:1}}}}},l:{i:{n:{a:{r:{y:{_:1}}}}},m:{i:{n:{a:{t:{i:{n:{g:{_:1}},o:{n:{_:1}}}}}}}},o:{t:{t:{e:{s:{_:1}}}}},p:{a:{_:1,b:{i:{l:{i:{t:{y:{_:1}}}}},l:{e:{_:1}}}}},t:{_:1,i:{v:{a:{t:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}}}}}}},u:{r:{a:{l:{_:1,l:{y:{_:1}}}},e:{_:1,d:{_:1},s:{_:1}}}}}},m:{i:{n:{_:1}},m:{e:{r:{b:{u:{n:{d:{_:1}}}}}}},u:{l:{a:{t:{i:{v:{e:{_:1}}}}}}}},n:{e:{i:{f:{o:{r:{m:{_:1}}}}}},n:{i:{n:{g:{_:1}}}}},p:{_:1,b:{o:{a:{r:{d:{_:1,s:{_:1}}}}}},c:{a:{k:{e:{_:1,s:{_:1}}}}},i:{d:{_:1}},p:{a:{_:1}},s:{_:1}},r:{_:1,a:{c:{a:{o:{_:1}}},t:{e:{_:1},o:{r:{_:1}}}},b:{_:1},d:{_:1,l:{e:{_:1}}},e:{_:1,d:{_:1},s:{_:1}},f:{e:{w:{_:1,s:{_:1}}}},i:{e:{_:1},n:{g:{_:1}},o:{s:{i:{t:{y:{_:1}}}},u:{s:{_:1,l:{y:{_:1}}}}}},l:{_:1,e:{d:{_:1},r:{s:{_:1}}},i:{n:{g:{_:1}}},y:{_:1}},m:{u:{d:{g:{e:{o:{n:{_:1}}}}}}},r:{a:{n:{_:1}},e:{n:{c:{y:{_:1}},t:{_:1,l:{y:{_:1}},s:{_:1}}}},i:{c:{u:{l:{u:{m:{_:1}}}}}},y:{_:1}},s:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}},v:{e:{_:1}}},o:{r:{y:{_:1}},l:{a:{_:1}}}},t:{_:1,a:{i:{n:{_:1,s:{_:1}}}},s:{y:{_:1}}},v:{a:{c:{e:{o:{u:{s:{_:1}}}}}},e:{_:1,b:{a:{l:{l:{_:1}}}},s:{_:1}}}},s:{h:{i:{o:{n:{_:1,s:{_:1}}}},y:{_:1}},p:{_:1},s:{_:1,i:{n:{g:{_:1}}}},t:{a:{r:{d:{_:1}}},o:{d:{i:{a:{l:{_:1},n:{_:1}}},y:{_:1}},m:{_:1,a:{r:{i:{l:{y:{_:1}}},y:{_:1}}},e:{r:{_:1,s:{_:1}}},s:{_:1}}}}},t:{_:1,a:{w:{a:{y:{_:1}}}},b:{a:{c:{k:{s:{_:1}}}}},e:{_:1,n:{e:{s:{s:{_:1}}}},r:{_:1},s:{t:{_:1},y:{_:1}}},i:{c:{l:{e:{_:1,s:{_:1}}}},e:{_:1,f:{l:{y:{_:1}}}}},l:{a:{s:{s:{_:1}}},e:{r:{_:1,y:{_:1}}}},o:{f:{f:{_:1,s:{_:1}}},u:{t:{_:1}}},s:{_:1},t:{e:{r:{_:1,s:{_:1}}},h:{r:{o:{a:{t:{_:1}}}}},i:{n:{g:{_:1}}}}}},y:{a:{n:{i:{d:{e:{_:1}}}}},b:{e:{r:{n:{e:{t:{i:{c:{_:1}}}}},s:{p:{a:{c:{e:{_:1}}}}}}},o:{r:{g:{_:1}}}},c:{l:{e:{_:1,s:{_:1}},o:{n:{e:{_:1}},p:{s:{_:1}},t:{r:{o:{n:{_:1}}}}}}},l:{i:{n:{d:{e:{r:{_:1,s:{_:1}}}}}}},m:{b:{a:{l:{_:1}}}},n:{i:{c:{_:1,a:{l:{_:1}},i:{s:{m:{_:1}}},s:{_:1}}},d:{a:{q:{u:{i:{l:{_:1}}}}}}},p:{h:{e:{r:{_:1}}},r:{e:{s:{s:{_:1}}},u:{s:{_:1}}}},s:{t:{_:1,i:{c:{_:1}}}}}};