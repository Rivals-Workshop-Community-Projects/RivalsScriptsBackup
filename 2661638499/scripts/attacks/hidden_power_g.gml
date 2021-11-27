var atk = 7; // G
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("attack_G"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("attack_G_hurt"));
set_attack_value(atk, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(atk, AG_NUM_WINDOWS, 4);

set_window_value(atk, 1, AG_WINDOW_LENGTH, 6);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 1, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);
set_window_value(atk, 1, AG_WINDOW_SFX, asset_get("sfx_absa_cloud_place"));
set_window_value(atk, 1, AG_WINDOW_SFX_FRAME, get_window_value(atk, 1, AG_WINDOW_LENGTH) - 1);

set_window_value(atk, 2, AG_WINDOW_LENGTH, 18);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(atk, 2, AG_WINDOW_CUSTOM_GRAVITY, -2 * gravity_speed);

//looping
set_window_value(atk, 3, AG_WINDOW_LENGTH, 2);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 5); //manually handled
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(atk, 3, AG_WINDOW_CUSTOM_GRAVITY, -1.5 * gravity_speed);

set_window_value(atk, 4, AG_WINDOW_TYPE, 7);
set_window_value(atk, 4, AG_WINDOW_LENGTH, 24);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(atk, 4, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

set_num_hitboxes(atk, 0);

//?
set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 1, HG_WINDOW, 2);
set_hitbox_value(atk, 1, HG_LIFETIME, 4);
set_hitbox_value(atk, 1, HG_HITBOX_X, 30);
set_hitbox_value(atk, 1, HG_HITBOX_Y, -52);
set_hitbox_value(atk, 1, HG_WIDTH, 42);
set_hitbox_value(atk, 1, HG_HEIGHT, 64);
set_hitbox_value(atk, 1, HG_SHAPE, 1);
set_hitbox_value(atk, 1, HG_PRIORITY, 2);
set_hitbox_value(atk, 1, HG_DAMAGE, 6);
set_hitbox_value(atk, 1, HG_ANGLE, 30);
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, .85);
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(atk, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

//self-destruct hitbox
set_hitbox_value(atk, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 2, HG_HITBOX_X, 0);
set_hitbox_value(atk, 2, HG_HITBOX_Y, -32);
set_hitbox_value(atk, 2, HG_LIFETIME, 3);
set_hitbox_value(atk, 2, HG_WIDTH, 5);
set_hitbox_value(atk, 2, HG_HEIGHT, 5);
set_hitbox_value(atk, 2, HG_SHAPE, 0);
set_hitbox_value(atk, 2, HG_PRIORITY, 2);
set_hitbox_value(atk, 2, HG_DAMAGE, 0);
set_hitbox_value(atk, 2, HG_ANGLE, 90);
set_hitbox_value(atk, 2, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(atk, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(atk, 2, HG_VISUAL_EFFECT, 1);

//================================================================
//WORD DATA
set_window_value(UNOWN_ATK.G, 2, AG_UNOWN_WINDOW_ACTIVE, true);
if ("g" not in unown_dictionary) unown_dictionary.g = make_trie_G();
//================================================================
//contains words starting with G
#define make_trie_G()
    return {a:{b:{b:{i:{n:{g:{_:1}}},y:{_:1}},y:{_:1},i:{t:{e:{_:1}}}},d:{g:{e:{t:{_:1}}}},f:{f:{_:1}},g:{_:1,a:{_:1},e:{_:1},g:{e:{d:{_:1}},i:{n:{g:{_:1}}},l:{e:{_:1}}},s:{_:1}},i:{e:{t:{y:{_:1}}},n:{_:1,e:{d:{_:1}},f:{u:{l:{_:1,l:{y:{_:1}}}}},i:{n:{g:{_:1}}},s:{_:1}}},l:{_:1,a:{_:1,c:{t:{i:{c:{_:1}}}},x:{y:{_:1}}},e:{_:1},i:{l:{e:{e:{_:1}}}},l:{_:1,a:{n:{t:{_:1}},d:{e:{_:1}}},b:{l:{a:{d:{d:{e:{r:{_:1}}}}}}},e:{r:{i:{e:{s:{_:1}}},y:{_:1}}},i:{n:{g:{_:1}},v:{a:{n:{t:{i:{n:{g:{_:1}}}}}}}},o:{n:{_:1,s:{_:1}},p:{i:{n:{g:{_:1}}}},w:{s:{_:1}}}},o:{r:{e:{_:1}},s:{h:{e:{s:{_:1}}}}},s:{_:1},v:{a:{n:{i:{z:{e:{d:{_:1}}}},t:{u:{l:{a:{_:1}}}}}}}},m:{b:{i:{t:{_:1}},l:{e:{_:1,r:{_:1}},i:{n:{g:{_:1}}}}},e:{_:1,r:{_:1},s:{_:1}},m:{a:{_:1},y:{_:1}},s:{_:1},u:{t:{_:1}}},n:{d:{e:{r:{_:1}}},g:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},l:{a:{n:{d:{_:1}}},y:{_:1}},r:{e:{n:{e:{_:1}}}},s:{_:1,t:{e:{r:{_:1,s:{_:1}}}}},w:{a:{y:{_:1}}}},j:{a:{_:1}}},p:{_:1,s:{_:1}},r:{_:1,a:{g:{e:{_:1,s:{_:1}}}},b:{_:1,a:{g:{e:{_:1}}},o:{d:{o:{r:{_:1}}}}},c:{o:{n:{_:1}},h:{o:{m:{p:{_:1}}}}},d:{e:{n:{_:1,e:{r:{_:1,s:{_:1}}},i:{a:{s:{_:1}},n:{g:{_:1}}},s:{_:1}},v:{o:{i:{r:{_:1}}}}}},g:{a:{n:{t:{u:{a:{n:{_:1}}}}}},l:{i:{n:{g:{_:1}}}},o:{y:{l:{e:{_:1,s:{_:1}}}}}},i:{b:{a:{l:{d:{i:{_:1}}}}},s:{h:{_:1}}},l:{a:{n:{d:{_:1}}},i:{c:{_:1}}},m:{e:{n:{t:{_:1,s:{_:1}}}}},n:{e:{r:{_:1},t:{_:1}},i:{s:{h:{_:1}}}},r:{i:{s:{o:{n:{_:1}}}}},t:{e:{r:{_:1,s:{_:1}}},h:{_:1}}},s:{_:1,b:{a:{g:{_:1}}},e:{s:{_:1}},k:{e:{t:{_:1}}},l:{i:{g:{h:{t:{_:1}}}}},o:{l:{i:{n:{e:{_:1}}}}},p:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}}},s:{e:{d:{_:1},s:{_:1}},y:{_:1}},t:{r:{i:{c:{_:1}},o:{d:{o:{n:{_:1}}}}},l:{y:{_:1}}}},t:{_:1,e:{_:1,d:{_:1},h:{o:{u:{s:{e:{_:1}}}}},k:{e:{e:{p:{e:{r:{_:1}}}}}},s:{_:1},w:{a:{y:{_:1}}}},h:{e:{r:{_:1,e:{d:{_:1}},i:{n:{g:{_:1,s:{_:1}}}},s:{_:1}}}},o:{r:{_:1}}},u:{d:{y:{_:1}},g:{e:{_:1},i:{n:{g:{_:1}}}},l:{t:{_:1}},n:{t:{l:{e:{t:{_:1}}}}},z:{e:{_:1}}},v:{e:{_:1,l:{_:1}}},w:{k:{_:1,i:{n:{g:{_:1}}}}},y:{_:1,e:{s:{t:{_:1}}},n:{e:{s:{s:{_:1}}}},s:{_:1}},z:{e:{_:1,b:{o:{_:1}},d:{_:1},l:{l:{e:{_:1}}}},p:{a:{c:{h:{o:{_:1}}}}}}},e:{a:{r:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1,h:{i:{f:{t:{_:1}}}}}}},c:{k:{o:{_:1}}},d:{_:1},e:{_:1,k:{_:1,s:{_:1},y:{_:1}},s:{_:1,e:{_:1}},z:{_:1,e:{r:{_:1,s:{_:1}}}}},i:{s:{h:{a:{s:{_:1}}}}},l:{_:1,a:{t:{i:{n:{_:1}},o:{_:1}}},s:{_:1}},m:{_:1,m:{a:{_:1}},s:{_:1}},n:{_:1,d:{a:{r:{m:{e:{_:1}}}},e:{r:{_:1}}},e:{_:1,a:{l:{o:{g:{y:{_:1}}}}},r:{a:{l:{_:1,l:{y:{_:1}},s:{_:1}},t:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1,s:{_:1}}}},o:{r:{_:1,s:{_:1}}}}},i:{c:{_:1}},o:{s:{i:{t:{y:{_:1}}}},u:{s:{_:1,l:{y:{_:1}}}}}},s:{_:1,i:{s:{_:1}},e:{c:{t:{_:1}}}},t:{i:{c:{_:1,a:{l:{l:{y:{_:1}}}},i:{s:{t:{_:1}}},s:{_:1}}}},v:{a:{_:1}}},i:{e:{_:1},t:{a:{l:{_:1,s:{_:1}}}},u:{s:{_:1,e:{s:{_:1}}}}},o:{a:{_:1},m:{e:{_:1}}},r:{e:{_:1}},t:{l:{e:{_:1,m:{a:{n:{_:1,l:{y:{_:1}}}},e:{n:{_:1}}},r:{_:1}},y:{_:1}},s:{_:1}},u:{i:{n:{e:{_:1,l:{y:{_:1}}}}},s:{_:1}},g:{a:{r:{_:1}}}},o:{g:{r:{a:{p:{h:{i:{c:{_:1,a:{l:{_:1,l:{y:{_:1}}}}}},y:{_:1}}}}}},l:{o:{g:{i:{c:{a:{l:{_:1}}},s:{t:{_:1,s:{_:1}}}},y:{_:1}}}},m:{e:{t:{r:{i:{c:{_:1}},y:{_:1}}}}},p:{o:{l:{i:{t:{i:{c:{a:{l:{_:1}}}}}}}}},s:{y:{n:{c:{h:{r:{o:{n:{o:{u:{s:{_:1}}}}}}}}}}},d:{u:{d:{e:{_:1}}}}},r:{b:{i:{l:{_:1,s:{_:1}}}},i:{a:{t:{r:{i:{c:{_:1,s:{_:1}}}}}}},m:{_:1,a:{n:{_:1,s:{_:1}}},s:{_:1}}},s:{t:{a:{p:{o:{_:1}},t:{i:{n:{g:{_:1}},o:{n:{_:1}}}}},u:{r:{e:{_:1,s:{_:1}}}}}},t:{_:1,a:{w:{a:{y:{_:1}}}},s:{_:1},t:{e:{r:{_:1}},i:{n:{g:{_:1}}}},u:{p:{_:1}}},y:{s:{e:{r:{_:1}}}}},h:{a:{s:{t:{l:{y:{_:1}}}}},e:{t:{t:{o:{_:1,s:{_:1}}}}},o:{s:{t:{_:1,s:{_:1}}},u:{l:{_:1,i:{s:{h:{_:1}}}}}}},i:{a:{n:{t:{_:1,s:{_:1}}}},b:{_:1,b:{e:{r:{i:{s:{h:{_:1}}}}},o:{n:{s:{_:1}}}},l:{e:{t:{s:{_:1}},_:1}},s:{o:{n:{_:1}}}},d:{d:{y:{_:1,u:{p:{_:1}}}}},f:{t:{_:1,e:{d:{_:1}},s:{_:1}}},g:{_:1,a:{n:{t:{i:{c:{_:1}}}},l:{i:{t:{h:{_:1}}}}},g:{l:{e:{_:1,s:{_:1}},i:{n:{g:{_:1}}},y:{_:1}}},o:{l:{o:{_:1}}},s:{_:1}},l:{b:{e:{r:{t:{_:1}}}},d:{e:{d:{_:1}}},l:{_:1,s:{_:1}}},m:{b:{a:{l:{_:1}}},l:{e:{t:{_:1}}},m:{e:{_:1},i:{c:{k:{s:{_:1}}},e:{_:1}}},p:{_:1}},n:{_:1,g:{e:{r:{_:1,b:{r:{e:{a:{d:{_:1}}}}}}}},n:{y:{_:1}},s:{e:{n:{g:{_:1}}}}},r:{a:{f:{f:{e:{_:1,s:{_:1}}},a:{r:{i:{g:{_:1}}}}},t:{i:{n:{a:{_:1}}}}},l:{_:1,f:{r:{i:{e:{n:{d:{_:1,s:{_:1}}}}}}},i:{e:{_:1}},s:{_:1},y:{_:1}},t:{h:{_:1}}},s:{t:{_:1}},t:{_:1},v:{e:{_:1,a:{w:{a:{y:{_:1}}}},n:{_:1,s:{_:1}},r:{_:1,s:{_:1}},s:{_:1}},i:{n:{g:{_:1}}}},z:{m:{o:{_:1,s:{_:1}}},z:{a:{r:{d:{_:1}}}}}},l:{a:{c:{i:{e:{r:{s:{_:1}}}},e:{o:{n:{_:1}}}},d:{_:1,e:{_:1,s:{_:1}},i:{a:{t:{o:{r:{_:1,s:{_:1}}}}}},l:{y:{_:1}},s:{t:{o:{n:{e:{_:1}}}}}},m:{o:{r:{_:1,o:{u:{s:{_:1}}}},u:{r:{_:1}}},e:{o:{w:{_:1}}}},n:{c:{e:{_:1,d:{_:1},s:{_:1}}},d:{_:1,s:{_:1}}},r:{e:{_:1,s:{_:1}},i:{n:{g:{_:1}}}},s:{s:{_:1,e:{s:{_:1}},w:{a:{r:{e:{_:1}}}},y:{_:1}},t:{r:{i:{e:{r:{_:1}}}}}},u:{c:{o:{m:{a:{_:1}}}}},z:{e:{_:1,d:{_:1},r:{_:1}}},l:{i:{e:{_:1}}}},e:{a:{m:{_:1,i:{n:{g:{_:1}}}}},e:{_:1},n:{_:1,g:{a:{r:{r:{y:{_:1}}}}}}},i:{b:{_:1},d:{e:{_:1,r:{s:{_:1}}},i:{n:{g:{_:1}}}},m:{m:{e:{r:{_:1}}},p:{s:{e:{_:1,d:{_:1}}}}},n:{t:{_:1}},t:{c:{h:{_:1,e:{s:{_:1}}}},t:{e:{r:{_:1,i:{n:{g:{_:1}}}}}}},g:{a:{r:{_:1}}},s:{c:{o:{r:{_:1}}}}},o:{a:{t:{_:1,i:{n:{g:{_:1}}}}},b:{a:{l:{_:1}},e:{_:1,s:{_:1}}},o:{m:{_:1,y:{_:1}}},p:{_:1},r:{i:{a:{_:1},f:{i:{e:{d:{_:1}}}},o:{u:{s:{_:1,l:{y:{_:1}}}}}},y:{_:1}},s:{s:{_:1,y:{_:1}}},v:{e:{_:1,r:{_:1},s:{_:1}}},w:{_:1,i:{n:{g:{_:1}}}}},u:{c:{o:{s:{e:{_:1}}}},e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}},m:{_:1},t:{t:{o:{n:{_:1,y:{_:1}}}}}},y:{c:{e:{r:{i:{n:{_:1}}}}}}},n:{a:{t:{_:1,s:{_:1}},w:{_:1,i:{n:{g:{_:1}}}}},o:{m:{e:{_:1,s:{_:1}}}}},o:{_:1,a:{_:1,d:{_:1,i:{n:{g:{_:1}}}},l:{_:1,i:{e:{_:1}},s:{_:1}},t:{_:1,e:{e:{_:1}},s:{_:1}}},b:{_:1,b:{l:{e:{_:1,d:{e:{g:{o:{o:{k:{_:1}}}}},y:{g:{o:{o:{k:{_:1}}}}}},s:{_:1}}}},l:{e:{t:{_:1}},i:{n:{_:1,s:{_:1}}}},s:{_:1}},d:{_:1,d:{a:{m:{_:1,n:{_:1,e:{d:{_:1}}}},u:{g:{h:{t:{e:{r:{_:1}}}}}}},e:{s:{s:{_:1,e:{s:{_:1}}}}}},f:{a:{t:{h:{e:{r:{_:1}}}}},o:{r:{s:{a:{k:{e:{n:{_:1}}}}}}}},l:{i:{k:{e:{_:1}},n:{e:{s:{s:{_:1}}}}},y:{_:1}},m:{o:{t:{h:{e:{r:{_:1}}}}}},s:{_:1,e:{n:{d:{_:1}}},o:{n:{_:1}}}},e:{r:{s:{_:1}},s:{_:1}},f:{e:{r:{_:1}}},g:{g:{l:{e:{_:1,s:{_:1}}}},o:{a:{t:{_:1}}}},i:{n:{g:{_:1}},t:{e:{r:{_:1}}}},l:{d:{_:1,e:{n:{_:1,r:{o:{d:{_:1}}}},e:{n:{_:1}}},f:{i:{s:{h:{_:1}}}},u:{c:{k:{_:1}}}},f:{_:1,e:{r:{s:{_:1}}},i:{n:{g:{_:1}}}},l:{y:{_:1}},b:{a:{t:{_:1}}},e:{m:{_:1},t:{t:{_:1}}},u:{r:{k:{_:1}}},i:{s:{o:{p:{o:{d:{_:1}}}}}}},n:{d:{o:{l:{a:{_:1}}}},e:{_:1,r:{_:1,s:{_:1}}},g:{_:1},o:{r:{r:{h:{e:{a:{_:1}}}}}},z:{o:{_:1}}},o:{_:1,b:{e:{r:{_:1,s:{_:1}}}},d:{_:1,b:{y:{e:{_:1,s:{_:1}}}},i:{e:{_:1,s:{_:1}}},l:{y:{_:1}},m:{a:{n:{_:1}}},n:{e:{s:{s:{_:1}}}},s:{_:1},w:{i:{l:{l:{_:1}}}},y:{_:1},r:{a:{_:1}}},e:{y:{_:1}},f:{_:1,b:{a:{l:{l:{_:1}}}},i:{n:{g:{_:1}}},y:{_:1}},g:{l:{y:{_:1}}},n:{_:1,e:{y:{_:1}},i:{e:{_:1,s:{_:1}}},s:{_:1}},p:{y:{_:1}},s:{e:{_:1}},m:{y:{_:1}}},p:{h:{e:{r:{_:1}}}},r:{_:1,e:{_:1,b:{y:{s:{s:{_:1}}}}},g:{e:{_:1,o:{u:{s:{_:1}}}}},i:{l:{l:{a:{_:1}}}},y:{_:1}},s:{h:{_:1},p:{e:{l:{_:1}}},s:{i:{p:{_:1,i:{n:{g:{_:1}}},s:{_:1}},f:{l:{e:{u:{r:{_:1}}}}}}}},t:{_:1,h:{i:{c:{_:1},t:{a:{_:1},e:{l:{l:{e:{_:1}}}}}},o:{r:{i:{t:{a:{_:1}}}}}},t:{e:{n:{_:1}}}},u:{g:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}}}},l:{a:{s:{h:{_:1}}}},r:{d:{_:1},m:{e:{t:{_:1}}},g:{e:{i:{s:{t:{_:1}}}}}},t:{_:1}},v:{e:{r:{n:{e:{d:{_:1},s:{s:{_:1}}},i:{n:{g:{_:1}}},m:{e:{n:{t:{_:1,a:{l:{_:1}},s:{_:1}}}}},o:{r:{_:1}}}}}},w:{n:{_:1,s:{_:1}}}},r:{a:{b:{_:1,b:{e:{d:{_:1}},i:{n:{g:{_:1}}},y:{_:1}},s:{_:1}},c:{e:{_:1,d:{_:1},f:{u:{l:{_:1,l:{y:{_:1}}}}},s:{_:1}},i:{n:{g:{_:1}},o:{u:{s:{_:1,l:{y:{_:1}}}}}}},d:{_:1,e:{_:1,d:{_:1},r:{_:1,s:{_:1}},s:{_:1}},i:{n:{g:{_:1}}},u:{a:{l:{l:{y:{_:1}}},t:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1}}}}}}},f:{f:{i:{t:{i:{_:1}}}},t:{s:{_:1}}},h:{a:{m:{_:1}}},i:{l:{_:1},n:{_:1,y:{_:1}}},m:{_:1,m:{a:{r:{_:1}}},p:{s:{_:1}},s:{_:1}},n:{_:1,d:{_:1,a:{d:{_:1}},b:{a:{b:{y:{_:1}}}},c:{h:{i:{l:{d:{_:1,r:{e:{n:{_:1}}}}}}}},d:{a:{d:{_:1,d:{y:{_:1}}},u:{g:{h:{t:{e:{r:{_:1,s:{_:1}}}}}}}}},e:{r:{_:1},u:{r:{_:1}}},f:{a:{t:{h:{e:{r:{_:1,s:{_:1}}}}}}},k:{i:{d:{_:1,s:{_:1}}}},m:{a:{_:1},o:{t:{h:{e:{r:{_:1,s:{_:1}}}}}}},p:{a:{_:1,r:{e:{n:{t:{_:1,s:{_:1}}}}}}},s:{o:{n:{_:1}},t:{a:{n:{d:{_:1}}}}}},g:{e:{_:1,r:{_:1}}},i:{t:{e:{_:1}}},n:{y:{_:1}},o:{l:{a:{_:1}}},t:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}},b:{u:{l:{l:{_:1}}}}},p:{e:{_:1,f:{r:{u:{i:{t:{_:1}}}}},s:{_:1},v:{i:{n:{e:{_:1}}}}},h:{i:{c:{_:1,s:{_:1}},t:{e:{_:1}}},s:{_:1}},p:{l:{o:{c:{t:{_:1}}}}}},s:{p:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}}},s:{_:1,h:{o:{p:{p:{e:{r:{_:1}}}}}},y:{_:1}}},t:{e:{_:1,d:{_:1},f:{u:{l:{_:1}}}},i:{f:{i:{c:{a:{t:{i:{o:{n:{_:1}}}}}},e:{d:{_:1}}},y:{i:{n:{g:{_:1}}}}},t:{u:{d:{e:{_:1}}}}},u:{i:{t:{o:{u:{s:{_:1}}},y:{_:1}}}}},v:{e:{_:1,l:{_:1,y:{_:1},e:{r:{_:1}}},s:{_:1,t:{_:1}},y:{a:{r:{d:{_:1,s:{_:1}}}}}},i:{t:{y:{_:1}}},y:{_:1}},y:{_:1},z:{e:{d:{_:1}},i:{n:{g:{_:1}}}}},e:{a:{s:{e:{_:1,b:{a:{l:{l:{_:1}}}},d:{_:1}},i:{n:{g:{_:1}}},y:{_:1}},t:{_:1,e:{r:{_:1},s:{t:{_:1}}},l:{y:{_:1}},n:{e:{s:{s:{_:1}}}}}},e:{d:{_:1,y:{_:1},e:{n:{t:{_:1}}}},k:{_:1},n:{_:1,e:{r:{_:1}},h:{o:{u:{s:{e:{_:1}}}}},s:{_:1}},t:{_:1,i:{n:{g:{_:1,s:{_:1}}}},s:{_:1}}},m:{l:{i:{n:{_:1}}}},n:{a:{d:{e:{_:1,s:{_:1}}}},i:{n:{j:{a:{_:1}}}}},w:{_:1},y:{_:1,h:{o:{u:{n:{d:{_:1}}}}}}},i:{d:{_:1,d:{l:{e:{_:1}}},l:{o:{c:{k:{_:1}}}}},e:{f:{_:1},v:{a:{n:{c:{e:{_:1}}}},e:{_:1,s:{_:1}},i:{n:{g:{_:1}}}}},f:{f:{_:1,i:{n:{_:1,s:{_:1}}}},t:{_:1,e:{r:{s:{_:1}}}}},l:{l:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}},m:{_:1,e:{_:1,s:{_:1},r:{_:1}},m:{s:{n:{a:{r:{l:{_:1}}}}}}},n:{_:1,d:{_:1,e:{r:{_:1}},i:{n:{g:{_:1}}},s:{_:1,t:{o:{n:{e:{_:1}}}}}},g:{o:{_:1}},n:{i:{n:{g:{_:1}}}},s:{_:1}},p:{_:1,e:{_:1,s:{_:1}},i:{n:{g:{_:1}}},p:{i:{n:{g:{_:1}}}},s:{_:1}},s:{l:{y:{_:1}},t:{l:{e:{_:1}}}},t:{s:{_:1}},z:{z:{l:{y:{_:1}}}}},o:{a:{n:{i:{n:{g:{_:1}}}}},c:{e:{r:{_:1,i:{e:{s:{_:1}}},y:{_:1}}}},g:{_:1,g:{y:{_:1}}},i:{n:{_:1}},o:{m:{_:1,e:{d:{_:1},r:{_:1}},i:{n:{g:{_:1}}},s:{_:1,m:{e:{n:{_:1}}}}},v:{e:{_:1},y:{_:1}},k:{e:{y:{_:1}}}},p:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}}}},s:{s:{_:1,e:{d:{_:1},r:{_:1},s:{_:1}},i:{n:{g:{_:1}}},l:{y:{_:1}}}},t:{e:{s:{q:{u:{e:{_:1}}}}},l:{e:{_:1}}},u:{c:{h:{_:1,y:{_:1}}},n:{d:{_:1,b:{r:{e:{a:{k:{i:{n:{g:{_:1}}}}}}}},e:{d:{_:1}},h:{o:{g:{_:1}}},i:{n:{g:{_:1}}},l:{e:{s:{s:{_:1}}}},s:{_:1,k:{e:{e:{p:{e:{r:{_:1}}}}}}},w:{o:{r:{k:{_:1}}}}}},p:{_:1,i:{e:{_:1,s:{_:1}},n:{g:{_:1}}},s:{_:1}},s:{e:{_:1}},d:{o:{n:{_:1}}}},v:{e:{_:1,l:{_:1,i:{n:{g:{_:1}}}},s:{_:1}},y:{l:{e:{_:1}}}},w:{_:1,e:{r:{s:{_:1}}},i:{n:{g:{_:1}}},l:{_:1,i:{t:{h:{e:{_:1}}}}},n:{_:1,u:{p:{_:1,s:{_:1}}}},s:{_:1},t:{h:{_:1}}}},u:{b:{_:1,b:{i:{n:{g:{_:1},_:1}},y:{_:1}},s:{_:1}},d:{g:{e:{_:1,s:{_:1}},i:{n:{g:{_:1}}}}},e:{l:{_:1},s:{o:{m:{e:{_:1}}}}},m:{b:{l:{i:{n:{g:{_:1}}}}},p:{y:{_:1},i:{g:{_:1}}}},n:{g:{e:{_:1},y:{_:1}},t:{_:1}}}},u:{a:{c:{a:{m:{o:{l:{e:{_:1}}}}}},r:{a:{n:{t:{e:{e:{_:1,d:{_:1},i:{n:{g:{_:1}}},s:{_:1}}}}}},d:{_:1,e:{d:{_:1}},i:{a:{n:{_:1,s:{_:1,h:{i:{p:{_:1}}}}}},n:{g:{_:1}}},r:{a:{i:{l:{_:1}}}},s:{_:1}}},v:{a:{_:1}}},e:{r:{i:{l:{l:{a:{_:1,s:{_:1}}}}},r:{i:{l:{l:{a:{_:1,s:{_:1}}}}}}},s:{s:{_:1,e:{d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}},t:{_:1,h:{o:{u:{s:{e:{_:1}}}}},s:{_:1}}}},f:{f:{_:1}},i:{d:{a:{n:{c:{e:{_:1}}}},e:{_:1,d:{_:1},l:{i:{n:{e:{s:{_:1}}}}},s:{_:1}},i:{n:{g:{_:1}}}},l:{d:{_:1,e:{r:{_:1}}},l:{o:{t:{i:{n:{e:{_:1}}}}}},t:{_:1,y:{_:1}}},n:{e:{a:{_:1,s:{_:1}}}},t:{a:{r:{_:1,i:{s:{t:{_:1}}},s:{_:1}}}}},l:{a:{g:{_:1}},c:{h:{_:1}},f:{_:1},l:{_:1,i:{b:{l:{e:{_:1}}}}},p:{i:{n:{_:1}}}},m:{_:1,p:{t:{i:{o:{n:{_:1}}}}},s:{_:1,h:{o:{e:{_:1},o:{s:{_:1}}}}}},n:{_:1,f:{i:{r:{e:{_:1}}}},k:{_:1},m:{a:{n:{_:1}},e:{n:{_:1}}},n:{e:{d:{_:1},r:{_:1,y:{_:1}}},i:{n:{g:{_:1}}}},p:{o:{i:{n:{t:{_:1}}},w:{d:{e:{r:{_:1}}}}}},s:{_:1,h:{o:{t:{_:1,s:{_:1}}}}}},r:{g:{l:{i:{n:{g:{_:1}}}}},n:{e:{y:{_:1}}},u:{_:1},d:{u:{r:{r:{_:1}}}}},s:{h:{_:1,e:{r:{_:1}},i:{n:{g:{_:1}}},y:{_:1}},t:{o:{_:1}}},t:{_:1,l:{e:{s:{s:{_:1}}}},s:{_:1},t:{e:{r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}}}},y:{_:1,s:{_:1}},z:{z:{l:{i:{n:{g:{_:1}}},o:{r:{d:{_:1}}}}}}},y:{m:{_:1,s:{_:1}},n:{e:{c:{o:{l:{o:{g:{i:{s:{t:{_:1}}}}}}}}}},p:{p:{e:{d:{_:1}}},s:{i:{e:{s:{_:1}}},y:{_:1}}},a:{r:{a:{d:{o:{s:{_:1}}}}}}}};