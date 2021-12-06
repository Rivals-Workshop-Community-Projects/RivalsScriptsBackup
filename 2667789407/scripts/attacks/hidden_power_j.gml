var atk = AT_DSPECIAL_2; // J (not 10. because of dan.)
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("attack_J"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("attack_J_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 6);

//Startup
set_window_value(atk, 1, AG_WINDOW_LENGTH, 8);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(atk, 1, AG_WINDOW_SFX_FRAME, get_window_value(atk, 1, AG_WINDOW_LENGTH) - 1);
//Active
set_window_value(atk, 2, AG_WINDOW_LENGTH, 12);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 1);
//Endlag (on miss grab)
set_window_value(atk, 3, AG_WINDOW_LENGTH, 12);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, 3, AG_WINDOW_GOTO, 9); //ends move

//grab: swing
set_window_value(atk, 4, AG_WINDOW_LENGTH, 9);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(atk, 4, AG_WINDOW_HITPAUSE_FRAME, 6);
set_window_value(atk, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 4, AG_WINDOW_SFX, sound_get("rse_throw"));
set_window_value(atk, 4, AG_WINDOW_SFX_FRAME, 3);
//grab: eject
set_window_value(atk, 5, AG_WINDOW_LENGTH, 4);
set_window_value(atk, 5, AG_WINDOW_HSPEED, 1);
set_window_value(atk, 5, AG_WINDOW_VSPEED, -3);
set_window_value(atk, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 5, AG_WINDOW_ANIM_FRAME_START, 10);
//grab: endlag
set_window_value(atk, 6, AG_WINDOW_LENGTH, 24);
set_window_value(atk, 6, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, 6, AG_WINDOW_ANIM_FRAME_START, 11);

set_num_hitboxes(atk, 2);

set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 1, HG_WINDOW, 2);
set_hitbox_value(atk, 1, HG_LIFETIME, 12);
set_hitbox_value(atk, 1, HG_HITBOX_X, -16);
set_hitbox_value(atk, 1, HG_HITBOX_Y, 16);
set_hitbox_value(atk, 1, HG_WIDTH, 40);
set_hitbox_value(atk, 1, HG_HEIGHT, 48);
set_hitbox_value(atk, 1, HG_PRIORITY, 2);
set_hitbox_value(atk, 1, HG_DAMAGE, 5);
set_hitbox_value(atk, 1, HG_ANGLE, 90);
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(atk, 1, HG_TECHABLE, 3);
set_hitbox_value(atk, 1, HG_HITPAUSE_SCALING, .0);
set_hitbox_value(atk, 1, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(atk, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(atk, 1, HG_VISUAL_EFFECT, 0);

//grabbed victim's target positions during window 4
unown_j_positions[0] = { x: -16, y:  16 };
unown_j_positions[1] = { x: -28, y:  12 };
unown_j_positions[2] = { x: -40, y:   4 };
unown_j_positions[3] = { x: -50, y:  -8 };
unown_j_positions[4] = { x: -54, y: -22 };
unown_j_positions[5] = { x: -56, y: -38 };
unown_j_positions[6] = { x: -52, y: -50 };
unown_j_positions[7] = { x: -42, y: -62 };
unown_j_positions[8] = { x: -36, y: -68 };

//grab eject
set_hitbox_value(atk, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 2, HG_WINDOW, 5);
set_hitbox_value(atk, 2, HG_LIFETIME, 2);
set_hitbox_value(atk, 2, HG_HITBOX_X, -36);
set_hitbox_value(atk, 2, HG_HITBOX_Y, -68);
set_hitbox_value(atk, 2, HG_WIDTH, 6);
set_hitbox_value(atk, 2, HG_HEIGHT, 6);
set_hitbox_value(atk, 2, HG_PRIORITY, 3);
set_hitbox_value(atk, 2, HG_DAMAGE, 2);
set_hitbox_value(atk, 2, HG_ANGLE, 70);
set_hitbox_value(atk, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, 2, HG_KNOCKBACK_SCALING, .40);
set_hitbox_value(atk, 2, HG_UNOWN_DAMAGE_BONUS, 6);
set_hitbox_value(atk, 2, HG_UNOWN_KNOCKBACK_BONUS, 1);
set_hitbox_value(atk, 2, HG_UNOWN_SCALING_BONUS, 0.20);
set_hitbox_value(atk, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(atk, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(atk, 2, HG_HITBOX_GROUP, 1);

//================================================================
//WORD DATA
set_window_value(atk, 2, AG_UNOWN_WINDOW_ACTIVE, true);
if ("j" not in unown_dictionary) unown_dictionary.j = make_trie_J();
//NOTE: C is too big for its file. subgroup "CO" handled here
//(Assumes files are loaded alphabetically. probably not ideal)
if ("c" in unown_dictionary && "o" not in unown_dictionary.c) unown_dictionary.c.o = make_trie_CO();
//================================================================
//contains words starting with J
#define make_trie_J()
    return {a:{b:{_:1,b:{e:{r:{_:1,i:{n:{g:{_:1}}}}}},o:{t:{_:1}},s:{_:1}},c:{k:{_:1,a:{l:{_:1,s:{_:1}},s:{s:{_:1,e:{s:{_:1}}}}},e:{d:{_:1},r:{s:{_:1}},t:{_:1,s:{_:1}}},i:{n:{g:{_:1}}},p:{o:{t:{_:1}}},s:{_:1}}},d:{e:{_:1,d:{_:1}}},g:{_:1,g:{e:{r:{_:1}}},s:{_:1},u:{a:{r:{_:1,s:{_:1}}}}},i:{l:{_:1,b:{i:{r:{d:{_:1}}},r:{e:{a:{k:{_:1}}}}},e:{d:{_:1}},h:{o:{u:{s:{e:{_:1}}}}}}},k:{e:{_:1}},l:{o:{p:{y:{_:1}}}},m:{_:1,b:{o:{r:{e:{e:{_:1}}}}},m:{e:{d:{_:1},r:{_:1}},i:{e:{s:{_:1}},n:{g:{_:1}}}},s:{_:1}},n:{e:{_:1},i:{t:{o:{r:{_:1,i:{a:{l:{_:1}}},s:{_:1}}}}},k:{_:1},g:{m:{o:{o:{_:1}}}}},p:{a:{n:{_:1,e:{s:{e:{_:1}}}}}},r:{_:1,g:{o:{n:{_:1}}},r:{i:{n:{g:{_:1}}}},s:{_:1}},s:{m:{i:{n:{e:{_:1}}}},p:{e:{r:{_:1}}}},u:{n:{d:{i:{c:{e:{_:1}}}},t:{_:1}}},v:{a:{_:1},e:{l:{i:{n:{_:1}}}}},w:{_:1,b:{o:{n:{e:{_:1}}}},e:{d:{_:1}},s:{_:1}},y:{_:1,w:{a:{l:{k:{i:{n:{g:{_:1}}}}}}}},z:{z:{_:1,e:{d:{_:1}}}}},e:{a:{l:{o:{u:{s:{_:1,y:{_:1}}}}},n:{_:1,s:{_:1}}},e:{p:{_:1,e:{r:{s:{_:1}}},s:{_:1}},z:{_:1}},f:{e:{_:1}},l:{l:{_:1,i:{e:{s:{_:1}},c:{e:{n:{t:{_:1}}}}},y:{_:1,b:{e:{a:{n:{_:1}}}},f:{i:{s:{h:{_:1}}}}}}},n:{n:{y:{_:1}}},o:{p:{a:{r:{d:{i:{z:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}}}}},y:{_:1}}}}}},r:{k:{_:1,e:{d:{_:1}},i:{n:{_:1,g:{_:1}}},s:{_:1},y:{_:1}},r:{i:{e:{s:{_:1}}},y:{_:1}},s:{e:{y:{_:1,s:{_:1}}}}},s:{s:{_:1,e:{_:1}},t:{_:1,e:{r:{_:1}}},u:{i:{t:{_:1,s:{_:1}}}}},t:{_:1,s:{_:1},t:{i:{s:{o:{n:{_:1}}}}}},w:{_:1,e:{l:{_:1,e:{r:{_:1,s:{_:1}}},l:{e:{r:{y:{_:1}}}},r:{y:{_:1}},s:{_:1}}},s:{_:1}},z:{e:{b:{e:{l:{_:1}}}}}},i:{b:{_:1},f:{f:{_:1,y:{_:1}}},g:{_:1,g:{l:{e:{_:1},i:{n:{g:{_:1}}},y:{_:1,p:{u:{f:{f:{_:1}}}}}}},s:{a:{w:{_:1}}}},h:{a:{d:{_:1}}},l:{l:{_:1},t:{e:{d:{_:1}}}},m:{i:{n:{y:{_:1}}},m:{i:{e:{s:{_:1}}},y:{_:1}}},n:{_:1,g:{l:{e:{_:1,s:{_:1}},i:{n:{g:{_:1}}}}},x:{_:1}},t:{t:{e:{r:{s:{_:1},y:{_:1}}}}},r:{a:{c:{h:{i:{_:1}}}}}},o:{_:1,b:{_:1,l:{e:{s:{s:{_:1}}}},s:{_:1}},c:{k:{_:1,e:{y:{_:1,s:{_:1}}},s:{_:1,t:{r:{a:{p:{_:1}}}}}}},e:{_:1,s:{_:1},y:{_:1}},g:{_:1,g:{e:{r:{_:1}},i:{n:{g:{_:1}}}}},h:{n:{_:1,n:{y:{_:1}},s:{_:1}},t:{o:{_:1}}},i:{n:{_:1,e:{d:{_:1},r:{_:1}},i:{n:{g:{_:1}}},s:{_:1},t:{_:1,s:{_:1}}}},k:{e:{_:1,d:{_:1},r:{_:1,s:{_:1}},s:{_:1}},i:{n:{g:{_:1}}}},l:{l:{i:{e:{s:{_:1}}},y:{_:1}},t:{_:1,e:{o:{n:{_:1}}},i:{k:{_:1}}}},n:{e:{s:{_:1}}},r:{d:{a:{n:{_:1}}}},s:{e:{p:{h:{_:1}}},h:{_:1}},t:{_:1,t:{e:{d:{_:1}}}},u:{r:{n:{a:{l:{_:1,i:{s:{m:{_:1},t:{_:1,i:{c:{_:1}},s:{_:1}}}},s:{_:1}}},e:{y:{_:1,e:{d:{_:1}},s:{_:1}}}}},s:{t:{_:1}}},y:{_:1,f:{u:{l:{_:1}}},o:{u:{s:{_:1}}},s:{_:1,t:{i:{c:{k:{_:1}}}}}}},u:{b:{i:{l:{e:{e:{_:1}}}}},d:{a:{s:{_:1}},g:{e:{_:1,d:{_:1},m:{e:{n:{t:{_:1}}}},s:{_:1}},i:{n:{g:{_:1}}},m:{e:{n:{t:{_:1,a:{l:{_:1}},s:{_:1}}}}}},i:{c:{i:{a:{l:{_:1},r:{y:{_:1}}}}}},o:{_:1}},g:{_:1,g:{e:{r:{n:{a:{u:{t:{_:1}}}}}},l:{e:{_:1},i:{n:{g:{_:1}}}}},h:{e:{a:{d:{_:1}}}},s:{_:1},u:{l:{a:{r:{_:1}}}}},i:{c:{e:{_:1,d:{_:1},s:{_:1}},y:{_:1}}},j:{i:{t:{s:{u:{_:1}}}}},k:{e:{_:1,b:{o:{x:{_:1}}}}},l:{e:{p:{_:1}}},m:{b:{l:{e:{_:1,d:{_:1}}},o:{_:1}},p:{_:1,e:{d:{_:1},r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}},s:{_:1,u:{i:{t:{_:1}}}},y:{_:1},l:{u:{f:{f:{_:1}}}}}},n:{c:{t:{i:{o:{n:{_:1}}},u:{r:{e:{_:1}}}}},g:{l:{e:{_:1,s:{_:1}}}},i:{o:{r:{_:1,s:{_:1}}},p:{e:{r:{_:1}}}},k:{_:1,i:{e:{_:1,s:{_:1}}},y:{_:1,a:{r:{d:{_:1}}}}}},r:{i:{e:{s:{_:1}},s:{d:{i:{c:{t:{i:{o:{n:{_:1}}}}}}}}},o:{r:{_:1,s:{_:1}}},y:{_:1}},s:{_:1,t:{_:1,i:{c:{e:{_:1}},f:{i:{a:{b:{l:{e:{_:1}}}},c:{a:{t:{i:{o:{n:{_:1}}}}}},e:{d:{_:1},s:{_:1}}},y:{_:1}}}}},t:{_:1},v:{e:{n:{i:{l:{e:{_:1}}}}}}},y:{n:{x:{_:1}}}};
//================================================================
//contains words starting with CO
#define make_trie_CO()
    return {a:{c:{h:{_:1,e:{d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}},l:{_:1,i:{t:{i:{o:{n:{_:1}}}}},s:{_:1},o:{s:{s:{a:{l:{_:1}}}}}},r:{s:{e:{_:1}}},s:{t:{_:1,a:{l:{_:1}},e:{r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}}}},t:{_:1,i:{n:{g:{_:1}}},s:{_:1},t:{a:{i:{l:{s:{_:1}}}}}},x:{_:1,i:{n:{g:{_:1}}}}},b:{_:1,b:{_:1,l:{e:{r:{_:1}}}},r:{a:{_:1,s:{_:1}}},w:{e:{b:{_:1,s:{_:1}}}},a:{l:{i:{o:{n:{_:1}}}}}},c:{a:{_:1,i:{n:{e:{_:1}}}},k:{_:1,a:{m:{a:{m:{i:{e:{_:1}}}}}},e:{d:{_:1}},l:{e:{s:{_:1}}},n:{e:{y:{_:1}}},p:{i:{t:{_:1}}},r:{o:{a:{c:{h:{_:1,e:{s:{_:1}}}}}}},t:{a:{i:{l:{_:1,s:{_:1}}}}},y:{_:1}},o:{_:1,a:{_:1},n:{u:{t:{_:1,s:{_:1}}}},o:{n:{_:1}}}},d:{_:1,d:{l:{e:{_:1},i:{n:{g:{_:1}}}}},e:{_:1,d:{_:1},p:{e:{n:{d:{e:{n:{t:{_:1}}}}}}},s:{_:1}},i:{c:{i:{l:{_:1}}},n:{g:{_:1}}}},e:{d:{_:1,s:{_:1}},r:{c:{e:{_:1,d:{_:1}},i:{o:{n:{_:1}}}}},x:{i:{s:{t:{_:1}}}}},f:{f:{e:{e:{_:1,h:{o:{u:{s:{e:{_:1}}}}},s:{_:1}},r:{s:{_:1}}},i:{n:{_:1,s:{_:1}}}},a:{g:{r:{i:{g:{u:{s:{_:1}}}}}}}},g:{_:1,n:{a:{c:{_:1}},i:{z:{a:{n:{t:{_:1}}}}}}},h:{e:{r:{e:{n:{t:{_:1}}}},s:{i:{o:{n:{_:1}},v:{e:{_:1}}}}}},i:{f:{f:{u:{r:{e:{_:1}}}}},l:{_:1,e:{d:{_:1}}},n:{_:1,c:{i:{d:{e:{_:1,n:{c:{e:{_:1,s:{_:1}}},t:{a:{l:{_:1,l:{y:{_:1}}}}}}}}}},s:{_:1}}},k:{e:{_:1,s:{_:1}}},l:{_:1,a:{_:1},c:{h:{i:{c:{i:{n:{e:{_:1}}}}}}},d:{_:1,e:{r:{_:1},s:{t:{_:1}}},l:{y:{_:1}},n:{e:{s:{s:{_:1}}}},s:{_:1}},e:{_:1,s:{_:1,l:{a:{w:{_:1}}}}},i:{c:{_:1},n:{_:1},s:{e:{u:{m:{_:1}}}},t:{i:{s:{_:1}}}},l:{a:{b:{o:{r:{a:{t:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1}}},o:{r:{_:1}}}}}}},g:{e:{_:1,n:{_:1}}},p:{s:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}},r:{_:1,b:{o:{n:{e:{_:1}}}},s:{_:1}},t:{e:{r:{a:{l:{_:1}}}}}},e:{a:{g:{u:{e:{_:1,s:{_:1}}}}},c:{t:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1,s:{_:1}}},v:{e:{_:1,l:{y:{_:1}}}}},o:{r:{_:1,s:{_:1}}},s:{_:1}}},e:{n:{_:1}},g:{e:{_:1,s:{_:1}}}},i:{d:{e:{_:1,d:{_:1}}},e:{_:1,r:{_:1}},n:{s:{_:1}},s:{i:{o:{n:{_:1}}}}}},o:{g:{n:{e:{_:1}}},n:{_:1,e:{l:{_:1,s:{_:1}}},i:{a:{l:{_:1,s:{_:1}}},e:{s:{_:1}},s:{t:{s:{_:1}}},z:{a:{t:{i:{o:{n:{_:1}}}}},e:{d:{_:1}}}},n:{a:{d:{e:{_:1}}}},y:{_:1}},r:{_:1,a:{d:{o:{_:1}}},e:{d:{_:1}},f:{u:{l:{_:1}}},i:{n:{g:{_:1}}},s:{_:1}},s:{s:{a:{l:{_:1}},e:{u:{m:{_:1}}}}},u:{r:{_:1,e:{d:{_:1}},s:{_:1}}}},u:{m:{n:{_:1,i:{s:{t:{_:1,s:{_:1}}}},s:{_:1}}}}},m:{a:{_:1,s:{_:1},t:{o:{s:{e:{_:1}}}}},b:{_:1,a:{t:{_:1,i:{v:{e:{_:1}}}}},i:{n:{a:{t:{i:{o:{n:{_:1}}}}},e:{_:1,d:{_:1},s:{_:1}},g:{_:1}}},o:{_:1},u:{s:{t:{_:1,e:{d:{_:1}},i:{b:{l:{e:{_:1}}},o:{n:{_:1}}}},k:{e:{n:{_:1}}}}},e:{e:{_:1}}},e:{_:1,b:{a:{c:{k:{_:1,s:{_:1}}}}},d:{i:{a:{n:{_:1,s:{_:1}}},c:{_:1},e:{s:{_:1}}},y:{_:1}},r:{_:1,s:{_:1}},s:{_:1},t:{_:1},u:{p:{p:{a:{n:{c:{e:{_:1}}}}}}}},f:{o:{r:{t:{_:1,a:{b:{l:{e:{_:1},y:{_:1}}}},e:{d:{_:1},r:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}}},y:{_:1},e:{y:{_:1}}},i:{c:{_:1,a:{l:{_:1}},s:{_:1}},n:{g:{_:1}}},m:{a:{_:1,n:{d:{_:1,a:{n:{t:{_:1}}},e:{r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}},m:{e:{n:{t:{_:1,s:{_:1}}}}},o:{_:1,s:{_:1}},s:{_:1}}}},e:{m:{o:{r:{a:{t:{i:{n:{g:{_:1}}}}}}}},n:{c:{e:{_:1},i:{n:{g:{_:1}}}},d:{a:{b:{l:{e:{_:1}}},t:{i:{o:{n:{_:1}}}}}},s:{u:{r:{a:{t:{e:{_:1}}}}}},t:{_:1,a:{r:{i:{e:{s:{_:1}}},y:{_:1}},t:{o:{r:{_:1}}}},e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}},r:{c:{e:{_:1},i:{a:{l:{_:1,i:{s:{m:{_:1}}},l:{y:{_:1}},s:{_:1}}}}}}},i:{e:{_:1,s:{_:1}},s:{e:{r:{a:{t:{e:{_:1}}}}},s:{a:{r:{y:{_:1}}},i:{o:{n:{_:1,e:{d:{_:1},r:{_:1,s:{_:1}}}}}}}},t:{_:1,m:{e:{n:{t:{_:1,s:{_:1}}}}},s:{_:1},t:{e:{d:{_:1},e:{_:1,s:{_:1}}},i:{n:{g:{_:1}}}}}},o:{d:{e:{_:1},i:{t:{i:{e:{s:{_:1}}},y:{_:1}}}},n:{_:1,e:{r:{_:1}},l:{y:{_:1}},p:{l:{a:{c:{e:{_:1}}}}},w:{e:{a:{l:{t:{h:{_:1}}}}}}},t:{i:{o:{n:{_:1}}}}},u:{n:{a:{l:{_:1}},e:{_:1},i:{c:{a:{t:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1,s:{_:1}}}},o:{r:{_:1}}}}},n:{g:{_:1}},o:{n:{_:1}},q:{u:{e:{_:1}}},s:{m:{_:1},t:{_:1,s:{_:1}}},t:{i:{e:{s:{_:1}}},y:{_:1}}}},t:{e:{_:1,d:{_:1}}}}},p:{_:1,a:{c:{t:{_:1,o:{r:{_:1}}}},d:{r:{e:{_:1}}},n:{i:{e:{s:{_:1}},o:{n:{_:1,s:{_:1,h:{i:{p:{_:1}}}}}}},y:{_:1}},r:{a:{b:{l:{e:{_:1}}},t:{i:{v:{e:{_:1,l:{y:{_:1}}}}}}},e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}},s:{o:{n:{_:1}}}},t:{m:{e:{n:{t:{_:1,s:{_:1}}}}}}},s:{s:{_:1,i:{o:{n:{_:1,a:{t:{e:{_:1}}}}}}}},t:{i:{b:{i:{l:{i:{t:{y:{_:1}}}}},l:{e:{_:1}}}}}},e:{l:{_:1,l:{e:{d:{_:1}},i:{n:{g:{_:1}}}},s:{_:1}},n:{s:{a:{t:{e:{_:1,d:{_:1}},i:{o:{n:{_:1}}}}}}},t:{e:{_:1,n:{c:{e:{_:1}},t:{_:1}}},i:{n:{g:{_:1}},t:{i:{o:{n:{_:1,s:{_:1}}},v:{e:{_:1,n:{e:{s:{s:{_:1}}}}}}},o:{r:{_:1,s:{_:1}}}}}}},i:{l:{a:{t:{i:{o:{n:{_:1}}}}},i:{n:{g:{_:1}}}}},l:{a:{c:{e:{n:{c:{y:{_:1}},t:{_:1}}}},i:{n:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1},t:{_:1,s:{_:1}}}}},e:{t:{e:{_:1,d:{_:1},l:{y:{_:1}},s:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1}}}},x:{_:1,i:{o:{n:{_:1}},t:{i:{e:{s:{_:1}}},y:{_:1}}}}},i:{a:{n:{t:{_:1}}},c:{a:{t:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1,s:{_:1}}}}}}},m:{e:{n:{t:{_:1,a:{r:{y:{_:1}}},s:{_:1}}}}}},y:{_:1}},o:{n:{e:{n:{t:{_:1,s:{_:1}}}}},s:{e:{d:{_:1},r:{_:1,s:{_:1}}},i:{t:{e:{_:1},i:{o:{n:{_:1}}}}},t:{_:1},u:{r:{e:{_:1}}}},u:{n:{d:{_:1,s:{_:1}}}}},r:{e:{h:{e:{n:{d:{_:1,i:{n:{g:{_:1}}}},s:{i:{o:{n:{_:1}},v:{e:{_:1}}}}}}},s:{s:{e:{d:{_:1}},i:{o:{n:{_:1,s:{_:1}}}},o:{r:{_:1}}}}},i:{s:{e:{_:1,d:{_:1}}}},o:{m:{i:{s:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}}}}},u:{l:{s:{i:{o:{n:{_:1}},v:{e:{_:1,l:{y:{_:1}}}}},o:{r:{y:{_:1}}}}},t:{e:{_:1,r:{_:1,i:{z:{e:{d:{_:1}}}},s:{_:1}}}}}},r:{a:{d:{e:{_:1,s:{_:1}}}}}},n:{_:1,c:{e:{a:{l:{_:1,e:{d:{_:1},r:{_:1}},i:{n:{g:{_:1}}},m:{e:{n:{t:{_:1}}}}}},d:{e:{_:1},i:{n:{g:{_:1}}}},i:{t:{e:{d:{_:1}}},v:{a:{b:{l:{e:{_:1},y:{_:1}}}},e:{_:1,d:{_:1}},i:{n:{g:{_:1}}}}},n:{t:{r:{a:{t:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1}}}}},i:{c:{_:1}}}}},p:{t:{_:1,i:{o:{n:{_:1}}},s:{_:1}}},r:{n:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}},t:{_:1,s:{_:1}}},s:{s:{i:{o:{n:{_:1,s:{_:1}}}}}}},i:{e:{r:{g:{e:{_:1}}}},s:{e:{_:1}}},l:{a:{v:{e:{_:1}}},u:{d:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}},s:{i:{o:{n:{_:1,s:{_:1}}},v:{e:{_:1,l:{y:{_:1}}}}}}}},o:{c:{t:{e:{d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1}}}}},r:{d:{_:1}},u:{r:{s:{e:{_:1}}}}},r:{e:{t:{e:{_:1}}}},u:{r:{_:1,r:{e:{n:{t:{l:{y:{_:1}}}}}}},s:{s:{i:{o:{n:{_:1,s:{_:1}}}}}}}},d:{e:{m:{n:{_:1,a:{t:{i:{o:{n:{_:1}}}}},e:{d:{_:1}},i:{n:{g:{_:1}}}}},n:{s:{a:{t:{i:{o:{n:{_:1}}}}},e:{d:{_:1}}}},s:{c:{e:{n:{d:{i:{n:{g:{_:1}}}}}}}}},i:{m:{e:{n:{t:{_:1}}}},t:{i:{o:{n:{_:1,e:{d:{_:1},r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}},s:{_:1}}}}}},o:{_:1,l:{e:{n:{c:{e:{s:{_:1}}}}}},m:{i:{n:{i:{u:{m:{_:1}}}}}},n:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}}}},r:{_:1},s:{_:1}},u:{c:{i:{v:{e:{_:1}}},t:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},o:{r:{_:1}},s:{_:1}}}}},e:{_:1,s:{_:1},y:{_:1}},f:{e:{d:{e:{r:{a:{c:{y:{_:1}},t:{e:{_:1,s:{_:1}},i:{o:{n:{_:1}}}}}}}},r:{_:1,e:{n:{c:{e:{_:1,s:{_:1}}}}},r:{e:{d:{_:1}},i:{n:{g:{_:1}}}}},s:{s:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1,a:{l:{_:1}},s:{_:1}}}},o:{r:{_:1}}}},t:{t:{i:{_:1}}}},i:{d:{a:{n:{t:{_:1,e:{_:1}}}},e:{_:1,d:{_:1},n:{c:{e:{_:1,s:{_:1}}},t:{_:1,i:{a:{l:{_:1,i:{t:{y:{_:1}}},l:{y:{_:1}}}}}}},s:{_:1}},i:{n:{g:{_:1}}}},g:{u:{r:{a:{t:{i:{o:{n:{_:1}}}}}}}},n:{e:{_:1,d:{_:1},m:{e:{n:{t:{_:1}}}}},i:{n:{g:{_:1}}}},r:{m:{_:1,a:{t:{i:{o:{n:{_:1}}}}},e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}},s:{c:{a:{t:{e:{d:{_:1}},i:{n:{g:{_:1}}}}}}},t:{_:1}},l:{i:{c:{t:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}}},u:{e:{n:{c:{e:{_:1}}}}}},o:{r:{m:{_:1,i:{t:{y:{_:1}}}}},u:{n:{d:{_:1}}}},r:{o:{n:{t:{_:1,a:{t:{i:{o:{n:{_:1,s:{_:1}}}}}},e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}}}},u:{s:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1}}}}}},g:{e:{n:{i:{a:{l:{_:1,i:{t:{y:{_:1}}}}}}},s:{t:{i:{o:{n:{_:1}}}}}},r:{a:{t:{s:{_:1},u:{l:{a:{t:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}},o:{n:{s:{_:1}}}}}}}}}},e:{g:{a:{t:{i:{o:{n:{_:1}}}}}},s:{s:{_:1,i:{o:{n:{a:{l:{_:1}}}}},m:{a:{n:{_:1}}},w:{o:{m:{a:{n:{_:1}}}}}}}}}},j:{e:{c:{t:{u:{r:{e:{_:1}}}}}},u:{g:{a:{l:{_:1},t:{e:{_:1}}}},n:{c:{t:{i:{o:{n:{_:1}}}}}},r:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}}},k:{_:1,e:{d:{_:1},l:{d:{u:{r:{r:{_:1}}}}}}},n:{_:1,e:{c:{t:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1,s:{_:1}}}},s:{_:1}}},d:{_:1},r:{_:1}},i:{n:{g:{_:1}},p:{t:{i:{o:{n:{_:1}}}}},v:{i:{n:{g:{_:1}}}}},o:{i:{s:{s:{e:{u:{r:{_:1}}}}}}}},q:{u:{e:{r:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}},s:{t:{_:1}}}}},s:{_:1,c:{i:{e:{n:{c:{e:{_:1}},t:{i:{o:{u:{s:{_:1}}}}}}},o:{u:{s:{_:1,l:{y:{_:1}},n:{e:{s:{s:{_:1}}}}}}}}},e:{c:{r:{a:{t:{e:{d:{_:1}}}}},u:{t:{i:{v:{e:{_:1}}}}}},n:{s:{u:{a:{l:{_:1}},s:{_:1}}},t:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}}}},q:{u:{e:{n:{c:{e:{_:1,s:{_:1}}},t:{l:{y:{_:1}}}}}}},r:{v:{a:{t:{i:{o:{n:{_:1}},v:{e:{_:1}}},o:{r:{y:{_:1}}}}},e:{_:1}}}},i:{d:{e:{r:{_:1,a:{b:{l:{e:{_:1},y:{_:1}}},t:{e:{_:1},i:{o:{n:{_:1}}}}},e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}}},g:{l:{i:{e:{r:{e:{_:1}}}}}},s:{t:{e:{d:{_:1},n:{t:{_:1,l:{y:{_:1}}}}},s:{_:1}}}},o:{l:{a:{t:{i:{o:{n:{_:1}}}}},e:{_:1,d:{_:1}},i:{d:{a:{t:{e:{_:1,d:{_:1}}}}},n:{g:{_:1}}}},r:{t:{_:1,i:{n:{g:{_:1}},u:{m:{_:1}}}}}},p:{i:{c:{u:{o:{u:{s:{_:1}}}}},r:{a:{c:{i:{e:{s:{_:1}}},y:{_:1}},t:{o:{r:{_:1,s:{_:1}}}}},e:{_:1,d:{_:1}},i:{n:{g:{_:1}}}}}},t:{a:{b:{l:{e:{_:1}}},n:{t:{_:1,l:{y:{_:1}}}}},e:{l:{l:{a:{t:{i:{o:{n:{_:1}}}}}}}},i:{p:{a:{t:{i:{o:{n:{_:1}}}}}},t:{u:{e:{n:{t:{s:{_:1}}}},t:{e:{_:1,s:{_:1}},i:{o:{n:{_:1,a:{l:{_:1,l:{y:{_:1}}}}}}}}}}},r:{a:{i:{n:{t:{s:{_:1}}}}},i:{c:{t:{o:{r:{_:1}}}}},u:{c:{t:{_:1,e:{d:{_:1}},i:{o:{n:{_:1}},v:{e:{_:1}}}}},e:{d:{_:1}}}}},u:{l:{_:1,a:{t:{e:{_:1}}},t:{_:1,a:{n:{t:{_:1}},t:{i:{o:{n:{_:1,s:{_:1}}}}}},e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}},m:{e:{_:1,d:{_:1},r:{_:1,s:{_:1}},s:{_:1}},i:{n:{g:{_:1}}},m:{a:{t:{e:{_:1,d:{_:1}}}}},p:{t:{i:{o:{n:{_:1}}}}}}}},t:{a:{c:{t:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}},g:{i:{o:{u:{s:{_:1}}}}},i:{n:{_:1,e:{d:{_:1},r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}},m:{e:{n:{t:{_:1}}}},s:{_:1}}},m:{i:{n:{a:{t:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1}}}}}}}}},e:{m:{p:{l:{a:{t:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}}}}}},o:{r:{a:{r:{y:{_:1}}}}},t:{_:1}}},n:{d:{e:{r:{_:1,s:{_:1}}}},t:{_:1,e:{d:{_:1}},i:{o:{n:{_:1}}},m:{e:{n:{t:{_:1}}}},s:{_:1}}},s:{t:{_:1,a:{n:{t:{_:1,s:{_:1}}}},i:{n:{g:{_:1}}}}},x:{t:{_:1}}},i:{n:{e:{n:{t:{_:1,a:{l:{_:1}},s:{_:1}}}},g:{e:{n:{c:{i:{e:{s:{_:1}}},y:{_:1}}}}},u:{a:{l:{l:{y:{_:1}}},n:{c:{e:{_:1}}},t:{i:{o:{n:{_:1}}}}},e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}},t:{y:{_:1}}},o:{u:{s:{_:1,l:{y:{_:1}}}}},u:{m:{_:1}}}}},o:{r:{t:{i:{o:{n:{i:{s:{t:{_:1}}}}}}}},u:{r:{s:{_:1}}}},r:{a:{_:1,b:{a:{n:{d:{_:1}}}},c:{e:{p:{t:{i:{v:{e:{s:{_:1}}}}}}},t:{_:1,e:{d:{_:1}},i:{o:{n:{_:1,s:{_:1}}}},o:{r:{_:1}},s:{_:1}}},d:{i:{c:{t:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1}}},o:{r:{y:{_:1}}}}}}},p:{t:{i:{o:{n:{_:1}}}}},r:{y:{_:1}},s:{t:{_:1}}},i:{b:{u:{t:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1,s:{_:1}}}},o:{r:{_:1,s:{_:1}}}}}},t:{e:{_:1}},v:{e:{d:{_:1}}}},o:{l:{_:1,l:{e:{d:{_:1},r:{_:1}},i:{n:{g:{_:1}}}},s:{_:1}},v:{e:{r:{s:{i:{a:{l:{_:1}}},y:{_:1}}}}}}},u:{s:{i:{o:{n:{_:1,s:{_:1}}}}}}},v:{e:{n:{e:{_:1,d:{_:1},s:{_:1}},i:{e:{n:{c:{e:{_:1}},t:{_:1,l:{y:{_:1}}}}}},t:{_:1,i:{o:{n:{_:1,a:{l:{_:1}}}}}}},r:{g:{e:{_:1},i:{n:{g:{_:1}}}},s:{a:{t:{i:{o:{n:{_:1,a:{l:{_:1}},s:{_:1}}}}}},e:{_:1},i:{o:{n:{_:1}}}},t:{_:1,e:{d:{_:1}},i:{b:{l:{e:{_:1,s:{_:1}}}},n:{g:{_:1}}}}},y:{_:1,o:{r:{_:1}}}},i:{c:{t:{_:1,e:{d:{_:1}},i:{o:{n:{_:1,s:{_:1}}}}}},n:{c:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}}},o:{y:{_:1}},u:{l:{s:{i:{n:{g:{_:1}}}}}}}},o:{_:1,i:{n:{g:{_:1}}},k:{_:1,b:{o:{o:{k:{_:1,s:{_:1}}}}},e:{d:{_:1},r:{_:1}},i:{e:{_:1,s:{_:1}},n:{g:{_:1}}},s:{_:1}},l:{_:1,a:{n:{t:{_:1}}},e:{d:{_:1},r:{_:1,s:{_:1}},s:{t:{_:1}}},i:{n:{g:{_:1}}},l:{y:{_:1}},n:{e:{s:{s:{_:1}}}},s:{_:1}},n:{_:1},p:{_:1,e:{d:{_:1},r:{_:1,a:{t:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1}},v:{e:{_:1}}}}},s:{_:1}}}},r:{d:{i:{n:{a:{t:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}},o:{r:{_:1}}}}}}}},t:{_:1,i:{e:{s:{_:1}}}}},p:{_:1,a:{c:{e:{t:{i:{c:{_:1}}}}}},e:{_:1},i:{e:{d:{_:1},r:{_:1},s:{_:1}},l:{o:{t:{_:1}}},n:{g:{_:1}},o:{u:{s:{l:{y:{_:1}}}}}},p:{e:{r:{_:1,h:{e:{a:{d:{_:1}}}},s:{_:1},a:{j:{a:{h:{_:1}}}}}},i:{n:{g:{_:1}}}},s:{_:1},t:{e:{r:{_:1}}},y:{_:1,c:{a:{t:{_:1}}},i:{n:{g:{_:1}}},r:{i:{g:{h:{t:{_:1}}}}}}},r:{_:1,a:{l:{_:1}},d:{_:1,i:{a:{l:{_:1}}},l:{e:{s:{s:{_:1}}}},o:{n:{_:1,e:{d:{_:1}}}},s:{_:1},u:{r:{o:{y:{_:1}}}}},e:{_:1},i:{a:{n:{d:{e:{r:{_:1}}}}}},k:{_:1,e:{r:{_:1}},s:{_:1,c:{r:{e:{w:{_:1}}}}},y:{_:1}},n:{_:1,b:{a:{l:{l:{_:1}}}},e:{d:{_:1},r:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1,t:{o:{n:{e:{_:1}}}}}}},f:{i:{e:{l:{d:{_:1}}}},l:{a:{k:{e:{s:{_:1}}}}}},u:{c:{o:{p:{i:{a:{_:1}}}}}},y:{_:1}},o:{l:{l:{a:{r:{y:{_:1}}}}},n:{a:{_:1,r:{y:{_:1}},t:{i:{o:{n:{_:1}}}}},e:{r:{_:1,s:{_:1}}}}},p:{o:{r:{a:{l:{_:1},t:{e:{_:1},i:{o:{n:{_:1,s:{_:1}}}}}},e:{a:{l:{_:1}}}}},s:{_:1,e:{_:1,s:{_:1}}},h:{i:{s:{h:{_:1}}}}},r:{a:{l:{_:1}},e:{c:{t:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1,a:{l:{_:1}},s:{_:1}}},v:{e:{_:1}}},l:{y:{_:1}}}},l:{a:{t:{i:{o:{n:{_:1}}}}}},s:{p:{o:{n:{d:{_:1,e:{d:{_:1},n:{c:{e:{_:1}},t:{_:1,s:{_:1}}}},i:{n:{g:{_:1}}},s:{_:1}}}}}}},i:{d:{o:{r:{_:1}}}},o:{b:{o:{r:{a:{t:{e:{_:1},i:{o:{n:{_:1}}}}}}}}},u:{p:{t:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1}}}}}}},s:{a:{g:{e:{_:1}}},e:{t:{_:1}},o:{l:{a:{_:1}}}},t:{e:{x:{_:1}}},y:{_:1},v:{i:{s:{q:{u:{i:{r:{e:{_:1}}}}}},k:{n:{i:{g:{h:{t:{_:1}}}}}}}}},s:{_:1,i:{g:{n:{_:1}}},m:{e:{t:{i:{c:{_:1,s:{_:1}}}}},i:{c:{_:1,a:{l:{l:{y:{_:1}}}}}},o:{l:{o:{g:{y:{_:1}}}},p:{o:{l:{i:{t:{a:{n:{_:1}}}}}}},s:{_:1},g:{_:1},e:{m:{_:1}}}},t:{_:1,a:{_:1},i:{n:{g:{_:1}}},l:{y:{_:1}},s:{_:1},u:{m:{e:{_:1,s:{_:1}}}}},y:{_:1}},t:{_:1,i:{l:{l:{i:{o:{n:{_:1}}}}}},s:{_:1},t:{a:{g:{e:{_:1,s:{_:1}}}},o:{n:{_:1,e:{e:{_:1}}}}}},u:{c:{h:{_:1}},g:{a:{r:{_:1,s:{_:1}}},h:{_:1,i:{n:{g:{_:1}}},s:{_:1}}},l:{d:{_:1}},n:{c:{i:{l:{_:1,l:{o:{r:{_:1}}},o:{r:{s:{_:1}}}}}},s:{e:{l:{_:1,i:{n:{g:{_:1}}},l:{i:{n:{g:{_:1}}},o:{r:{_:1}}},o:{r:{_:1,s:{_:1}}}}}},t:{_:1,d:{o:{w:{n:{_:1}}}},e:{d:{_:1},n:{a:{n:{c:{e:{_:1}}}}},r:{_:1,a:{t:{t:{a:{c:{k:{_:1}}}}}},f:{e:{i:{t:{_:1,i:{n:{g:{_:1}}}}}}},m:{e:{a:{s:{u:{r:{e:{s:{_:1}}}}}}}},o:{f:{f:{e:{r:{_:1}}}}},p:{a:{r:{t:{_:1}}}}},s:{s:{_:1}}},i:{e:{s:{_:1}},n:{g:{_:1}}},l:{e:{s:{s:{_:1}}}},r:{i:{e:{s:{_:1}}},y:{_:1,m:{e:{n:{_:1}}},s:{i:{d:{e:{_:1}}}}}},s:{_:1},y:{_:1}}},p:{_:1,e:{_:1},l:{e:{_:1,s:{_:1}},i:{n:{g:{_:1}}}},o:{n:{_:1,s:{_:1}}}},r:{a:{g:{e:{_:1,o:{u:{s:{_:1}}}}}},i:{e:{r:{_:1,s:{_:1}}}},s:{e:{_:1,s:{_:1}},i:{n:{g:{_:1}}}},t:{_:1,e:{d:{_:1},o:{u:{s:{_:1}}},s:{y:{_:1}}},h:{o:{u:{s:{e:{_:1}}}}},i:{n:{g:{_:1}}},r:{o:{o:{m:{_:1,s:{_:1}}}}},s:{_:1,h:{i:{p:{_:1}}},i:{d:{e:{_:1}}}},y:{a:{r:{d:{_:1}}}}}},s:{i:{n:{_:1,s:{_:1}}}},t:{u:{r:{e:{_:1}}}}},v:{e:{_:1,n:{_:1,a:{n:{t:{_:1}}}},r:{_:1,a:{g:{e:{_:1}},l:{l:{s:{_:1}}}},e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1},t:{_:1},u:{p:{_:1}}},t:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}}}}},w:{_:1,a:{r:{d:{_:1,i:{c:{e:{_:1}}},l:{y:{_:1}},s:{_:1}}}},b:{o:{y:{_:1,s:{_:1}}}},e:{d:{_:1},r:{_:1,i:{n:{g:{_:1}}}}},g:{i:{r:{l:{_:1}}}},o:{r:{k:{e:{r:{_:1}}}}},s:{_:1}},x:{_:1},y:{_:1,o:{t:{e:{_:1,s:{_:1}}}}},z:{_:1,i:{e:{r:{_:1}}},y:{_:1,i:{n:{g:{_:1}}}}}};