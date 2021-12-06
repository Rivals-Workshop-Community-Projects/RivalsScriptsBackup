var atk = 18; // R
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("attack_R"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("attack_R_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 5);

set_window_value(atk, 1, AG_WINDOW_LENGTH, 8);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 1, AG_WINDOW_VSPEED, -4);
set_window_value(atk, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 1, AG_WINDOW_SFX, asset_get("sfx_ell_nair"));
set_window_value(atk, 1, AG_WINDOW_SFX_FRAME, 7);

//Looping
set_window_value(atk, 2, AG_WINDOW_LENGTH, 8);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, 2, AG_WINDOW_VSPEED, 8);
set_window_value(atk, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(atk, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 2, AG_WINDOW_SFX, asset_get("sfx_ell_drill_loop"));
set_window_value(atk, 2, AG_WINDOW_SFX_FRAME, 1);

//finisher
set_window_value(atk, 3, AG_WINDOW_LENGTH, 2);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(atk, 3, AG_WINDOW_GOTO, 5);

//landing
set_window_value(atk, 4, AG_WINDOW_LENGTH, 8);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 4, AG_WINDOW_SFX, asset_get("sfx_ell_arc_small_missile_ground"));
set_window_value(atk, 4, AG_WINDOW_SFX_FRAME, 0);

//endlag
set_window_value(atk, 5, AG_WINDOW_LENGTH, 15);
set_window_value(atk, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, 5, AG_WINDOW_ANIM_FRAME_START, 7);

set_num_hitboxes(atk, 6);

//Top looping hit
set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 1, HG_WINDOW, 2);
set_hitbox_value(atk, 1, HG_LIFETIME, 3);
set_hitbox_value(atk, 1, HG_HITBOX_Y, -20);
set_hitbox_value(atk, 1, HG_WIDTH, 64);
set_hitbox_value(atk, 1, HG_HEIGHT, 24);
set_hitbox_value(atk, 1, HG_PRIORITY, 6);
set_hitbox_value(atk, 1, HG_SHAPE, 2);
set_hitbox_value(atk, 1, HG_DAMAGE, 1);
set_hitbox_value(atk, 1, HG_ANGLE, 280);
set_hitbox_value(atk, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(atk, 1, HG_TECHABLE, 3);
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(atk, 1, HG_EXTRA_HITPAUSE, -2);
set_hitbox_value(atk, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(atk, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(atk, 1, HG_HITBOX_GROUP, 0);

//bottom looping hit
set_hitbox_value(atk, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 2, HG_WINDOW, 2);
set_hitbox_value(atk, 2, HG_LIFETIME, 3);
set_hitbox_value(atk, 2, HG_HITBOX_Y, 0);
set_hitbox_value(atk, 2, HG_WIDTH, 32);
set_hitbox_value(atk, 2, HG_HEIGHT, 48);
set_hitbox_value(atk, 2, HG_PRIORITY, 2);
set_hitbox_value(atk, 2, HG_SHAPE, 2);
set_hitbox_value(atk, 2, HG_DAMAGE, 1);
set_hitbox_value(atk, 2, HG_ANGLE, 0);
set_hitbox_value(atk, 2, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(atk, 2, HG_TECHABLE, 3);
set_hitbox_value(atk, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(atk, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(atk, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(atk, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(atk, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(atk, 2, HG_HITBOX_GROUP, 1);

//copies of above
set_hitbox_value(atk, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 3, HG_WINDOW, 2);
set_hitbox_value(atk, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(atk, 3, HG_LIFETIME, get_hitbox_value(atk, 1, HG_LIFETIME));
set_hitbox_value(atk, 3, HG_HITBOX_Y, get_hitbox_value(atk, 1, HG_HITBOX_Y));
set_hitbox_value(atk, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(atk, 3, HG_HITBOX_GROUP, 2);

set_hitbox_value(atk, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 4, HG_WINDOW, 2);
set_hitbox_value(atk, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(atk, 4, HG_LIFETIME, get_hitbox_value(atk, 2, HG_LIFETIME));
set_hitbox_value(atk, 4, HG_HITBOX_Y, get_hitbox_value(atk, 2, HG_HITBOX_Y));
set_hitbox_value(atk, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(atk, 4, HG_HITBOX_GROUP, 2);

//Final hit (Air)
set_hitbox_value(atk, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 5, HG_WINDOW, 3);
set_hitbox_value(atk, 5, HG_LIFETIME, 2);
set_hitbox_value(atk, 5, HG_HITBOX_Y, 0);
set_hitbox_value(atk, 5, HG_WIDTH, 32);
set_hitbox_value(atk, 5, HG_HEIGHT, 48);
set_hitbox_value(atk, 5, HG_PRIORITY, 3);
set_hitbox_value(atk, 5, HG_SHAPE, 2);
set_hitbox_value(atk, 5, HG_DAMAGE, 3);
set_hitbox_value(atk, 5, HG_ANGLE, 270);
set_hitbox_value(atk, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, 5, HG_KNOCKBACK_SCALING, .75);
set_hitbox_value(atk, 5, HG_UNOWN_DAMAGE_BONUS, 5);
set_hitbox_value(atk, 5, HG_UNOWN_KNOCKBACK_BONUS, 1);
set_hitbox_value(atk, 5, HG_UNOWN_SCALING_BONUS, 0.10);
set_hitbox_value(atk, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, 5, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(atk, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(atk, 5, HG_HITBOX_GROUP, 3);

//Final hit (Landed)
set_hitbox_value(atk, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 6, HG_WINDOW, 4);
set_hitbox_value(atk, 6, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(atk, 6, HG_LIFETIME, 6);
set_hitbox_value(atk, 6, HG_HITBOX_Y, -20);
set_hitbox_value(atk, 6, HG_WIDTH, 64);
set_hitbox_value(atk, 6, HG_HEIGHT, 64);
set_hitbox_value(atk, 6, HG_PRIORITY, 3);
set_hitbox_value(atk, 6, HG_SHAPE, 2);
set_hitbox_value(atk, 6, HG_DAMAGE, 3);
set_hitbox_value(atk, 6, HG_ANGLE, 75);
set_hitbox_value(atk, 6, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(atk, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, 6, HG_KNOCKBACK_SCALING, .45);
set_hitbox_value(atk, 6, HG_UNOWN_DAMAGE_BONUS, 5);
set_hitbox_value(atk, 6, HG_UNOWN_KNOCKBACK_BONUS, 1);
set_hitbox_value(atk, 6, HG_UNOWN_SCALING_BONUS, 0.25);
set_hitbox_value(atk, 6, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, 6, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(atk, 6, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(atk, 6, HG_HITBOX_GROUP, 3);



//================================================================
//WORD DATA
set_window_value(UNOWN_ATK.R, 2, AG_UNOWN_WINDOW_ACTIVE, true);
if ("r" not in unown_dictionary) unown_dictionary.r = make_trie_R();
//================================================================
//contains words starting with R
#define make_trie_R()
    return {a:{b:{b:{i:{_:1,t:{_:1,s:{_:1}}},l:{e:{_:1}}},i:{d:{_:1},e:{s:{_:1}}},o:{o:{t:{_:1}}}},c:{c:{o:{o:{n:{s:{_:1}}}}},e:{_:1,d:{_:1},r:{_:1},s:{_:1},t:{r:{a:{c:{k:{_:1}}}}}},i:{a:{l:{_:1}},n:{g:{_:1}},s:{m:{_:1},t:{_:1}}},k:{_:1,e:{d:{_:1},t:{_:1,e:{e:{r:{_:1,i:{n:{g:{_:1}}}}}}}},i:{n:{g:{_:1}}},s:{_:1}},q:{u:{e:{t:{_:1,b:{a:{l:{l:{_:1}}}}}}}},y:{_:1}},d:{a:{r:{_:1}},i:{a:{l:{_:1},n:{c:{e:{_:1}},t:{_:1}},t:{i:{n:{g:{_:1}},o:{n:{_:1}}},o:{r:{_:1}}}},c:{a:{l:{_:1,l:{y:{_:1}}}}},o:{_:1,a:{c:{t:{i:{v:{e:{_:1}}}}}},e:{d:{_:1}},l:{o:{g:{i:{s:{t:{_:1}}},y:{_:1}}}},s:{_:1}},s:{h:{_:1,e:{s:{_:1}}}},u:{s:{_:1}}}},f:{f:{l:{e:{_:1}}},t:{_:1,i:{n:{g:{_:1}}}}},g:{_:1,e:{_:1,s:{_:1}},g:{e:{d:{_:1,y:{_:1}}},i:{n:{g:{_:1}}}},i:{n:{g:{_:1}}},s:{_:1},t:{i:{m:{e:{_:1}}}}},h:{_:1},i:{d:{_:1,e:{d:{_:1},r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}},s:{_:1}},l:{_:1,i:{n:{g:{_:1}}},r:{o:{a:{d:{_:1,i:{n:{g:{_:1}}},s:{_:1}}}}},s:{_:1}},n:{_:1,b:{o:{w:{_:1}}},c:{o:{a:{t:{_:1}}}},e:{d:{_:1}},i:{e:{r:{_:1}},n:{g:{_:1}}},s:{_:1,t:{o:{r:{m:{_:1}}}}},y:{_:1}},s:{e:{_:1,d:{_:1},r:{_:1,s:{_:1}},s:{_:1}},i:{n:{_:1,g:{_:1},s:{_:1}}}},c:{h:{u:{_:1}}},k:{o:{u:{_:1}}}},j:{a:{h:{_:1}}},k:{e:{_:1,d:{_:1}}},l:{l:{i:{e:{d:{_:1}}},y:{_:1,i:{n:{g:{_:1}}}}},p:{h:{_:1}},t:{s:{_:1}}},m:{_:1,b:{l:{e:{_:1},i:{n:{g:{_:1}}}},u:{n:{c:{t:{i:{o:{u:{s:{_:1}}}}}}}}},i:{f:{i:{c:{a:{t:{i:{o:{n:{s:{_:1}}}}}}}}}},m:{e:{d:{_:1}}},p:{_:1,a:{g:{e:{_:1}},r:{d:{o:{s:{_:1}}}}}},r:{o:{d:{_:1}}},u:{s:{_:1}}},n:{_:1,c:{h:{_:1,e:{r:{_:1,s:{_:1}}},o:{_:1}},i:{d:{_:1}}},d:{_:1,o:{m:{_:1,l:{y:{_:1}}}},y:{_:1}},g:{_:1,e:{_:1,r:{_:1,s:{_:1}},s:{_:1}},i:{n:{g:{_:1}}}},k:{_:1,i:{n:{g:{_:1,s:{_:1}}}},s:{_:1}},s:{a:{c:{k:{_:1}}},o:{m:{_:1}}},t:{_:1,i:{n:{g:{_:1}}},s:{_:1}},n:{o:{_:1}}},p:{_:1,e:{_:1,d:{_:1},s:{_:1}},i:{d:{_:1,l:{y:{_:1}},s:{_:1},a:{s:{h:{_:1}}}},n:{g:{_:1}},s:{t:{_:1,s:{_:1}}}},p:{e:{r:{s:{_:1}}}},t:{o:{r:{_:1,s:{_:1}}},u:{r:{e:{_:1}}}}},r:{e:{_:1,l:{y:{_:1}},s:{t:{_:1}}},i:{n:{g:{_:1}},t:{y:{_:1}}}},s:{c:{a:{l:{s:{_:1}}}},h:{_:1,e:{s:{_:1}},l:{y:{_:1}}},p:{b:{e:{r:{r:{y:{_:1}}}}}}},t:{_:1,e:{_:1,d:{_:1},s:{_:1}},h:{_:1,e:{r:{_:1}},o:{l:{e:{_:1}}}},i:{n:{g:{_:1,s:{_:1}}},o:{_:1,n:{_:1,a:{l:{_:1,i:{z:{e:{_:1},i:{n:{g:{_:1}}}}},l:{y:{_:1}}}},s:{_:1}}},c:{a:{t:{e:{_:1}}}}},s:{_:1},t:{e:{d:{_:1}},i:{n:{g:{_:1}}},l:{e:{_:1,d:{_:1},s:{_:1,n:{a:{k:{e:{_:1,s:{_:1}}}}}}},i:{n:{g:{_:1}}}},y:{_:1},a:{t:{a:{_:1}}}}},v:{a:{g:{e:{_:1}}},e:{_:1,d:{_:1},n:{_:1,o:{u:{s:{_:1}}},s:{_:1}}},i:{n:{e:{_:1},g:{_:1,s:{_:1}}},s:{h:{_:1,i:{n:{g:{_:1}}}}}}},w:{_:1,h:{i:{d:{e:{_:1}}}}},y:{_:1,e:{d:{_:1}},s:{_:1},q:{u:{a:{z:{a:{_:1}}}}}},z:{o:{r:{_:1,s:{_:1}}}}},e:{_:1,a:{c:{h:{_:1,e:{d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}},q:{u:{a:{i:{n:{t:{_:1,e:{d:{_:1}}}}}}}},t:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1,a:{r:{y:{_:1}}},s:{_:1}}},v:{e:{_:1}}},o:{r:{_:1,s:{_:1}}},s:{_:1}}},d:{_:1,e:{r:{_:1,s:{_:1}}},i:{l:{y:{_:1}},n:{g:{_:1,s:{_:1}}}},o:{u:{t:{_:1}}},s:{_:1},y:{_:1}},l:{_:1,i:{s:{e:{_:1,d:{_:1},s:{_:1}},m:{_:1},t:{_:1,i:{c:{_:1,a:{l:{l:{y:{_:1}}}}}}}},t:{i:{e:{s:{_:1}}},y:{_:1}},z:{a:{t:{i:{o:{n:{_:1}}}}},e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}},l:{y:{_:1}},m:{_:1,s:{_:1}},t:{y:{_:1}}},m:{_:1,e:{d:{_:1}}},p:{_:1,e:{r:{_:1,s:{_:1}}},p:{e:{a:{r:{_:1,e:{d:{_:1}},s:{_:1}}}}}},r:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},r:{a:{n:{g:{e:{_:1},i:{n:{g:{_:1}}}}}}},s:{_:1}},s:{o:{n:{_:1,a:{b:{l:{e:{_:1},y:{_:1}}}},e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}},s:{e:{m:{b:{l:{e:{_:1}}}}},i:{g:{n:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},m:{e:{n:{t:{_:1}}}}}}},u:{r:{a:{n:{c:{e:{_:1}}}},e:{_:1},i:{n:{g:{_:1}}}}}}},t:{t:{a:{c:{h:{_:1}}}}}},b:{a:{t:{e:{_:1}}},e:{l:{_:1,l:{i:{n:{g:{_:1}},o:{n:{_:1},u:{s:{_:1}}}}},s:{_:1}}},i:{r:{t:{h:{_:1}}}},o:{o:{t:{_:1}},r:{n:{_:1}},u:{n:{d:{_:1,s:{_:1}}}}},u:{i:{l:{d:{_:1,i:{n:{g:{_:1}}}},t:{_:1}}},t:{t:{a:{l:{_:1}}}}}},c:{_:1,a:{l:{l:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}}}},n:{t:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}}}},p:{_:1,t:{u:{r:{e:{_:1,d:{_:1}}}}}}},e:{d:{i:{n:{g:{_:1}}}},i:{p:{t:{_:1,s:{_:1}}},v:{e:{_:1,d:{_:1},r:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}},n:{t:{_:1,l:{y:{_:1}}}},p:{t:{i:{o:{n:{_:1,i:{s:{t:{_:1}}}}},v:{e:{_:1}}}}},s:{s:{_:1,i:{o:{n:{_:1}}}}}},h:{a:{r:{g:{e:{_:1}}}},e:{c:{k:{_:1,e:{d:{_:1}}}}}},i:{p:{e:{_:1,s:{_:1}},i:{e:{n:{t:{_:1}}}},r:{o:{c:{a:{l:{_:1}}}}}},t:{a:{l:{_:1,s:{_:1}},t:{i:{o:{n:{_:1}}}}},e:{_:1},i:{n:{g:{_:1}}}}},k:{l:{e:{s:{s:{_:1,l:{y:{_:1}},n:{e:{s:{s:{_:1}}}}}}}},o:{n:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}}}}},l:{a:{i:{m:{_:1,i:{n:{g:{_:1}}}}}},i:{n:{e:{r:{_:1}},i:{n:{g:{_:1}}}}},u:{s:{i:{v:{e:{_:1}}}}}},o:{g:{n:{i:{s:{e:{_:1,d:{_:1}}},t:{i:{o:{n:{_:1}}}},z:{a:{b:{l:{e:{_:1}}},n:{c:{e:{_:1}}}},e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}}}},l:{l:{e:{c:{t:{i:{o:{n:{_:1}}}}}}}},m:{b:{i:{n:{a:{n:{t:{_:1}}}}}},m:{e:{n:{d:{_:1,a:{t:{i:{o:{n:{_:1,s:{_:1}}}}}},e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}}}}},n:{_:1,c:{i:{l:{e:{_:1,d:{_:1}},i:{a:{t:{i:{o:{n:{_:1}}}}},n:{g:{_:1}}}}}},n:{a:{i:{s:{s:{a:{n:{c:{e:{_:1}}}}}}}},e:{c:{t:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}}}}}},s:{i:{d:{e:{r:{_:1,e:{d:{_:1}}}}}},t:{r:{u:{c:{t:{_:1}}}}}},v:{e:{n:{e:{_:1}}}}},r:{d:{_:1,e:{d:{_:1},r:{_:1,s:{_:1}}},i:{n:{g:{_:1,s:{_:1}}}},s:{_:1}}},u:{n:{t:{_:1}},r:{s:{e:{_:1}}}},v:{e:{r:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1},y:{_:1}}}}},r:{e:{a:{t:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1,a:{l:{_:1}}}}}}}},i:{m:{i:{n:{a:{t:{i:{o:{n:{_:1,s:{_:1}}}}}}}}}},u:{i:{t:{_:1,e:{d:{_:1},r:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}}}},t:{a:{l:{_:1},n:{g:{l:{e:{_:1}}}}},i:{f:{y:{_:1}}},o:{r:{y:{_:1}}},u:{m:{_:1}}},u:{p:{e:{r:{a:{t:{e:{_:1},i:{n:{g:{_:1}}}}}}}},r:{r:{i:{n:{g:{_:1}}}}},s:{e:{_:1}}},y:{c:{l:{e:{_:1,s:{_:1}},i:{n:{g:{_:1}}}}}}},d:{_:1,d:{i:{s:{h:{_:1}}}},e:{c:{o:{r:{a:{t:{e:{_:1},i:{n:{g:{_:1}}}}}}}},e:{m:{_:1,i:{n:{g:{_:1}}}}},f:{i:{n:{e:{_:1}}}},m:{p:{t:{i:{o:{n:{_:1}}}}}},v:{e:{l:{o:{p:{m:{e:{n:{t:{_:1}}}}}}}}}},h:{e:{a:{d:{_:1,s:{_:1}}}}},i:{a:{l:{_:1}},d:{_:1},r:{e:{c:{t:{_:1}}}}},n:{e:{c:{k:{_:1,s:{_:1}}}}},o:{_:1,n:{e:{_:1}}},r:{e:{s:{s:{_:1}}}},s:{_:1,k:{i:{n:{s:{_:1}}}}},u:{c:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}},t:{i:{o:{n:{_:1}}}}},n:{d:{a:{n:{c:{i:{e:{s:{_:1}}},y:{_:1}},t:{_:1}}}}}},w:{o:{o:{d:{_:1}}}}},e:{_:1,d:{_:1},f:{_:1,e:{r:{_:1}},s:{_:1}},k:{_:1,i:{n:{g:{_:1}}},s:{_:1}},l:{_:1,e:{c:{t:{e:{d:{_:1}},i:{o:{n:{_:1}}}}},d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}},n:{t:{e:{r:{_:1}}}},v:{a:{l:{u:{a:{t:{e:{_:1}}}}}},e:{_:1,s:{_:1}}}},f:{e:{r:{_:1,e:{e:{_:1},n:{c:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}},d:{u:{m:{_:1,s:{_:1}}}}}},r:{a:{l:{_:1,s:{_:1}}},e:{d:{_:1}},i:{n:{g:{_:1}}}},s:{_:1}}},i:{l:{l:{_:1,s:{_:1}}},n:{e:{d:{_:1},m:{e:{n:{t:{_:1}}}},r:{y:{_:1}}},i:{n:{g:{_:1}}}}},l:{e:{c:{t:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1}},v:{e:{_:1}}},s:{_:1}}},x:{_:1,e:{s:{_:1}}}}},o:{c:{u:{s:{_:1}}},r:{m:{_:1,e:{d:{_:1}},s:{_:1}}}},r:{a:{i:{n:{_:1}}},e:{s:{h:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},m:{e:{n:{t:{s:{_:1}}}}}}}},i:{g:{e:{r:{a:{t:{e:{d:{_:1}},o:{r:{_:1,s:{_:1}}}}}}}}}},u:{e:{l:{i:{n:{g:{_:1}}}}},g:{e:{_:1,e:{_:1,s:{_:1}}}},n:{d:{_:1,a:{b:{l:{e:{_:1}}}}}},s:{a:{l:{_:1}},e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}},t:{e:{_:1}}}},g:{a:{i:{n:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}}}},l:{_:1},r:{d:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},l:{e:{s:{s:{_:1}}}},s:{_:1}}},t:{t:{a:{_:1}}}},e:{n:{c:{y:{_:1}},e:{r:{a:{t:{e:{_:1,d:{_:1}},i:{o:{n:{_:1}}}}}}},t:{_:1}}},g:{a:{e:{_:1}}},i:{m:{e:{_:1,n:{_:1,t:{_:1,a:{l:{_:1}}}},s:{_:1}}},n:{a:{_:1}},o:{n:{_:1,a:{l:{_:1,s:{_:1}}}}},s:{t:{e:{r:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}}},e:{l:{_:1}}},r:{a:{r:{_:1},t:{i:{o:{n:{_:1}}}}},y:{_:1}}}},r:{o:{c:{k:{_:1}}}},c:{e:{_:1}},g:{i:{g:{a:{s:{_:1}}}}},e:{l:{e:{k:{i:{_:1}}}}},d:{r:{a:{g:{o:{_:1}}}}}},r:{e:{t:{_:1,s:{_:1},t:{a:{b:{l:{e:{_:1},y:{_:1}}}},e:{d:{_:1}},i:{n:{g:{_:1}}}}}},o:{u:{p:{_:1}}}},u:{l:{a:{r:{_:1,i:{t:{y:{_:1}}},l:{y:{_:1}},s:{_:1}},t:{e:{_:1,d:{_:1}},i:{o:{n:{_:1,s:{_:1}}}}}}},r:{g:{i:{t:{a:{t:{e:{_:1}}}}}}}}},h:{a:{b:{_:1,i:{l:{i:{t:{a:{t:{e:{_:1,d:{_:1}},i:{o:{n:{_:1}}}}}}}}}},s:{h:{_:1,i:{n:{g:{_:1}}}}}},e:{a:{r:{s:{a:{l:{_:1,s:{_:1}}},e:{_:1,d:{_:1}},i:{n:{g:{_:1}}}}},t:{_:1}}}},i:{g:{n:{_:1,i:{n:{g:{_:1}}},s:{_:1}}},m:{b:{u:{r:{s:{e:{_:1,d:{_:1}}}}}}},n:{_:1,c:{a:{r:{n:{a:{t:{e:{d:{_:1}}}}}}}},d:{e:{e:{r:{_:1}}}},f:{o:{r:{c:{e:{d:{_:1},m:{e:{n:{t:{_:1,s:{_:1}}}}}}}}}},s:{t:{a:{t:{e:{_:1,d:{_:1},m:{e:{n:{t:{_:1}}}}},i:{n:{g:{_:1}}}}}}},v:{e:{n:{t:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}}}}}}},t:{e:{r:{a:{t:{e:{_:1}}}}}}},j:{e:{c:{t:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1,s:{_:1}}}},s:{_:1}}}},o:{i:{c:{e:{_:1},i:{n:{g:{_:1}}}}}},u:{v:{e:{n:{a:{t:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}}}}}}}}}},k:{i:{n:{d:{l:{e:{_:1,d:{_:1}}}}}}},l:{a:{p:{s:{e:{_:1},i:{n:{g:{_:1}}}}},t:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1,s:{_:1,h:{i:{p:{_:1,s:{_:1}}}}}}},v:{e:{_:1,l:{y:{_:1}},s:{_:1}},i:{t:{y:{_:1}}}}}},x:{_:1,a:{n:{t:{s:{_:1}}},t:{i:{o:{n:{_:1}}}}},e:{d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}},y:{_:1}},e:{a:{s:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}},g:{a:{t:{e:{d:{_:1}}}}},n:{t:{l:{e:{s:{s:{_:1,l:{y:{_:1}}}}}}}},v:{a:{n:{c:{e:{_:1}},t:{_:1}}}}},i:{a:{b:{i:{l:{i:{t:{y:{_:1}}}}},l:{e:{_:1}}},n:{c:{e:{_:1}}}},c:{_:1,s:{_:1},a:{n:{t:{h:{_:1}}}}},e:{f:{_:1},s:{_:1},v:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}}}}},g:{i:{o:{n:{_:1},u:{s:{_:1,l:{y:{_:1}}}}}}},n:{q:{u:{i:{s:{h:{_:1,i:{n:{g:{_:1}}}}}}}}},s:{h:{_:1}},v:{e:{_:1},i:{n:{g:{_:1}}}}},o:{a:{d:{_:1}},c:{a:{t:{e:{_:1},i:{o:{n:{_:1}}}}}}},u:{c:{t:{a:{n:{t:{_:1,l:{y:{_:1}}}}}}}},y:{_:1,i:{n:{g:{_:1}}}}},m:{_:1,a:{i:{n:{_:1,d:{e:{r:{_:1}}},e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}},k:{e:{_:1}},r:{k:{_:1,a:{b:{l:{e:{_:1},y:{_:1}}}},e:{d:{_:1}},s:{_:1}},r:{i:{e:{d:{_:1}}},y:{_:1}}},t:{c:{h:{_:1}}}},e:{d:{i:{a:{l:{_:1}},e:{d:{_:1},s:{_:1}}},y:{_:1}},m:{b:{e:{r:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}},r:{a:{n:{c:{e:{_:1}}}}}}}},i:{n:{d:{_:1,e:{d:{_:1},r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}},s:{_:1}},i:{s:{c:{e:{_:1}}}}},s:{s:{i:{o:{n:{_:1}}}}},t:{t:{i:{n:{g:{_:1}}}}}},n:{a:{n:{t:{s:{_:1}}}}},o:{d:{e:{l:{e:{d:{_:1}},l:{i:{n:{g:{_:1}}}}}}},r:{s:{e:{_:1}},a:{i:{d:{_:1}}}},t:{e:{_:1,l:{y:{_:1}}}},v:{a:{l:{_:1}},e:{_:1,d:{_:1},r:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}}},n:{a:{i:{s:{s:{a:{n:{c:{e:{_:1}}}}}}},l:{_:1},m:{e:{_:1}}},d:{e:{r:{_:1,e:{d:{_:1}},s:{_:1}},z:{v:{o:{u:{s:{_:1}}}}}}},e:{g:{a:{d:{e:{_:1}}},e:{_:1},i:{n:{g:{_:1}}},o:{t:{i:{a:{t:{e:{_:1}}}}}}},w:{_:1,a:{l:{_:1}},e:{d:{_:1}},i:{n:{g:{_:1}}}}},o:{u:{n:{c:{e:{_:1}}}},v:{a:{t:{e:{_:1},i:{n:{g:{_:1}},o:{n:{_:1,s:{_:1}}}}}}},w:{n:{_:1,e:{d:{_:1}}}}},t:{_:1,a:{l:{_:1,s:{_:1}}},e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}},o:{p:{e:{n:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}}}}},r:{g:{a:{n:{i:{z:{e:{_:1},i:{n:{g:{_:1}}}}}}}}}},p:{_:1,a:{i:{d:{_:1},n:{t:{_:1}},r:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},m:{a:{n:{_:1}}},s:{_:1}}},r:{a:{t:{i:{o:{n:{s:{_:1}}}}}},t:{e:{e:{_:1}}}},y:{_:1,m:{e:{n:{t:{_:1}}}}}},e:{a:{l:{_:1},t:{_:1,e:{d:{_:1,l:{y:{_:1}}}},i:{n:{g:{_:1}}}}},l:{l:{e:{n:{t:{_:1}}}}},n:{t:{_:1,a:{n:{c:{e:{_:1}}}}}},r:{c:{u:{s:{s:{i:{o:{n:{s:{_:1}}}}}}}},t:{o:{i:{r:{e:{_:1}}}}}},t:{i:{t:{i:{o:{n:{_:1},u:{s:{_:1}}},v:{e:{_:1}}}}}}},h:{r:{a:{s:{e:{_:1}}}}},l:{a:{c:{e:{_:1,a:{b:{l:{e:{_:1}}}},d:{_:1},m:{e:{n:{t:{_:1,s:{_:1}}}}}},i:{n:{g:{_:1}}}},y:{_:1,i:{n:{g:{_:1}}}}},e:{n:{i:{s:{h:{_:1}}}}},i:{c:{a:{_:1,t:{e:{_:1},i:{n:{g:{_:1}}}}}},e:{d:{_:1},s:{_:1}}},y:{_:1}},o:{r:{t:{_:1,e:{d:{_:1,l:{y:{_:1}}},r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}},s:{_:1}}},s:{i:{t:{o:{r:{y:{_:1}}}}},s:{e:{s:{s:{_:1}}}}}},r:{e:{s:{e:{n:{t:{_:1,a:{t:{i:{o:{n:{_:1,s:{_:1}}},v:{e:{_:1,s:{_:1}}}}}},e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}}},s:{_:1,e:{d:{_:1}},i:{o:{n:{_:1}}}}}},i:{e:{v:{e:{_:1}}},m:{a:{n:{d:{_:1,e:{d:{_:1}}}}}},s:{a:{l:{_:1,s:{_:1}}}}},o:{a:{c:{h:{_:1}}},b:{a:{t:{e:{_:1}}}},d:{u:{c:{t:{i:{o:{n:{_:1}},v:{e:{_:1}}}}}}},g:{r:{a:{m:{_:1,m:{i:{n:{g:{_:1}}}}}}}}}},s:{_:1},t:{i:{l:{e:{_:1,s:{_:1}},i:{a:{n:{_:1}}}}}},u:{b:{l:{i:{c:{_:1,a:{n:{_:1,s:{_:1}}}}}}},g:{n:{a:{n:{t:{_:1}}}}},l:{s:{i:{v:{e:{_:1}}}}},t:{a:{t:{i:{o:{n:{_:1}}}}},e:{_:1,d:{_:1}}}}},q:{u:{e:{s:{t:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}}},i:{e:{m:{_:1}},r:{e:{_:1,d:{_:1},m:{e:{n:{t:{_:1,s:{_:1}}}}},s:{_:1}},i:{n:{g:{_:1}}}},s:{i:{t:{e:{_:1},i:{o:{n:{_:1,s:{_:1}}}}}}}}}},r:{e:{a:{d:{_:1}}},o:{u:{t:{e:{_:1,d:{_:1}}}}},u:{n:{s:{_:1}}}},s:{_:1,c:{h:{e:{d:{u:{l:{e:{_:1,d:{_:1}}}}}}},i:{n:{d:{e:{d:{_:1}}}}},u:{e:{_:1,d:{_:1},r:{_:1,s:{_:1}},s:{_:1}},i:{n:{g:{_:1}}}}},e:{a:{r:{c:{h:{_:1,e:{r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}}}}}},d:{a:{_:1}},m:{b:{l:{a:{n:{c:{e:{_:1}}}},e:{_:1,s:{_:1}},i:{n:{g:{_:1}}}}}},n:{t:{_:1,e:{d:{_:1}},f:{u:{l:{_:1}}},i:{n:{g:{_:1}}},m:{e:{n:{t:{_:1,s:{_:1}}}}},s:{_:1}}},r:{v:{a:{t:{i:{o:{n:{_:1,s:{_:1}}}}}},e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}},t:{_:1,t:{i:{n:{g:{_:1}}}}}},h:{o:{o:{t:{_:1,s:{_:1}}}},i:{r:{a:{m:{_:1}}}}},i:{d:{e:{n:{c:{e:{_:1,s:{_:1}},y:{_:1}},t:{_:1,s:{_:1}}},s:{_:1}},i:{n:{g:{_:1}}},u:{a:{l:{_:1}},e:{_:1}}},g:{n:{_:1,a:{t:{i:{o:{n:{_:1}}}}},e:{d:{_:1}},i:{n:{g:{_:1}}}}},l:{i:{e:{n:{t:{_:1}}}}},n:{_:1},s:{t:{_:1,a:{n:{c:{e:{_:1}},t:{_:1}}},e:{d:{_:1}},i:{n:{g:{_:1}}}}}},o:{l:{u:{t:{e:{_:1},i:{o:{n:{_:1}}}}},v:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}}}}},n:{a:{n:{c:{e:{_:1}}}}},r:{t:{_:1,e:{d:{_:1}},s:{_:1}}},u:{r:{c:{e:{_:1,f:{u:{l:{_:1}}},s:{_:1}}}}}},p:{e:{c:{t:{_:1,a:{b:{i:{l:{i:{t:{y:{_:1}}}}},l:{e:{_:1}}}},e:{d:{_:1}},f:{u:{l:{_:1,l:{y:{_:1}}}}},i:{n:{g:{_:1}},v:{e:{l:{y:{_:1}}}}},s:{_:1}}}},i:{r:{a:{t:{i:{o:{n:{_:1,s:{_:1}}}},o:{r:{_:1,y:{_:1}}}}}}},o:{n:{d:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}},s:{e:{_:1,s:{_:1}},i:{b:{i:{l:{i:{t:{i:{e:{s:{_:1}}},y:{_:1}}}}},l:{e:{_:1},y:{_:1}}},v:{e:{_:1}}}}}}},t:{_:1,a:{r:{t:{_:1}},u:{r:{a:{n:{t:{_:1,s:{_:1}}},t:{e:{u:{r:{_:1}}}}}}}},e:{d:{_:1}},f:{u:{l:{_:1}}},i:{n:{g:{_:1}},t:{u:{t:{i:{o:{n:{_:1}}}}}}},l:{e:{s:{s:{_:1}}}},o:{r:{a:{t:{i:{v:{e:{_:1}}}}},e:{_:1,d:{_:1}},i:{n:{g:{_:1}}}}},r:{a:{i:{n:{_:1,i:{n:{g:{_:1}}},t:{_:1,s:{_:1}}}}},i:{c:{t:{_:1,e:{d:{_:1}},i:{o:{n:{_:1,s:{_:1}}}}}}},o:{o:{m:{_:1,s:{_:1}}}},u:{c:{t:{u:{r:{i:{n:{g:{_:1}}}}}}}}},s:{_:1}},u:{l:{t:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}},m:{e:{_:1,d:{_:1},s:{_:1}}},r:{f:{a:{c:{e:{d:{_:1}}}}},r:{e:{c:{t:{i:{o:{n:{_:1}}}}}}}}}},t:{a:{i:{l:{_:1,e:{r:{s:{_:1}}}},n:{_:1,e:{d:{_:1},r:{_:1}},i:{n:{g:{_:1}}}}},k:{e:{_:1}},l:{i:{a:{t:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}}},o:{r:{y:{_:1}}}}}}},r:{d:{_:1,e:{d:{_:1}}}}},e:{s:{t:{_:1}}},h:{i:{n:{k:{_:1,i:{n:{g:{_:1}}}}}},o:{u:{g:{h:{t:{_:1}}}}}},i:{n:{a:{_:1,l:{_:1},s:{_:1}}},r:{e:{_:1,d:{_:1},m:{e:{n:{t:{_:1}}}}},i:{n:{g:{_:1}}}}},o:{r:{t:{_:1}}},r:{a:{c:{t:{_:1,a:{b:{l:{e:{_:1}}}},i:{o:{n:{_:1}}}}}},e:{a:{t:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}}},i:{b:{u:{t:{i:{o:{n:{_:1}}}}}},e:{v:{a:{l:{_:1}},e:{_:1,d:{_:1}},i:{n:{g:{_:1}}}}}},o:{_:1,f:{i:{t:{_:1}}},g:{r:{a:{d:{e:{_:1}}}}}}},u:{r:{n:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}}}},u:{n:{i:{o:{n:{_:1,s:{_:1}}},t:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}}}},c:{l:{u:{s:{_:1}}}}}}},v:{_:1,a:{m:{p:{_:1}}},e:{a:{l:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}},l:{a:{t:{i:{o:{n:{_:1,s:{_:1}}}}}},i:{n:{g:{_:1}}},s:{_:1}},n:{g:{e:{_:1}},u:{e:{_:1,s:{_:1}}}},r:{e:{_:1,d:{_:1},n:{c:{e:{_:1}},d:{_:1},t:{l:{y:{_:1}}}}},s:{a:{l:{_:1}},e:{_:1,d:{_:1}},i:{b:{l:{e:{_:1}}}}},t:{_:1,s:{_:1}}}},i:{e:{w:{_:1,e:{d:{_:1},r:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}},s:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}},o:{n:{s:{_:1}}},t:{_:1}}},v:{a:{l:{_:1}},e:{_:1,d:{_:1}},i:{n:{g:{_:1}}}}},o:{k:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}}}},l:{t:{i:{n:{g:{_:1}}}},u:{t:{i:{o:{n:{_:1,a:{r:{i:{e:{s:{_:1}}},y:{_:1}}},i:{z:{e:{_:1}}},s:{_:1}}}}}},v:{e:{_:1,d:{_:1},r:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}}},u:{l:{s:{i:{o:{n:{_:1}}}}}}},w:{a:{r:{d:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}}},i:{n:{d:{_:1}}},r:{i:{t:{e:{_:1,s:{_:1}},i:{n:{g:{_:1}}},t:{e:{n:{_:1}}}}},o:{t:{e:{_:1}}}}},x:{_:1}},h:{e:{t:{o:{r:{i:{c:{a:{l:{_:1}}}}}}}},i:{n:{e:{s:{t:{o:{n:{e:{_:1,s:{_:1}}}}}}},o:{_:1,c:{e:{r:{o:{s:{_:1}}}}}}}},y:{m:{e:{_:1,d:{_:1},s:{_:1}}},t:{h:{m:{_:1,s:{_:1}}}},h:{o:{r:{n:{_:1}}}},d:{o:{n:{_:1}}},p:{e:{r:{i:{o:{r:{_:1}}}}}}}},i:{a:{l:{t:{o:{_:1}}}},b:{_:1,b:{e:{d:{_:1}},o:{n:{_:1,s:{_:1}}}},s:{_:1},o:{m:{b:{e:{e:{_:1}}}}}},c:{e:{_:1},h:{_:1,e:{r:{_:1},s:{_:1,t:{_:1}}}},k:{_:1,e:{t:{y:{_:1}},y:{_:1}},s:{_:1,h:{a:{w:{_:1}}}}},o:{c:{h:{e:{t:{_:1}}}}}},d:{_:1,d:{a:{n:{c:{e:{_:1}}}},e:{n:{_:1}},i:{n:{g:{_:1}}},l:{e:{_:1,d:{_:1},r:{_:1},s:{_:1}}}},e:{_:1,r:{_:1,s:{_:1}},s:{_:1}},g:{e:{_:1}},i:{c:{u:{l:{e:{_:1,d:{_:1}},o:{u:{s:{_:1,l:{y:{_:1}}}}}}}},n:{g:{_:1}}}},f:{e:{_:1},f:{_:1},l:{e:{_:1,s:{_:1}},i:{n:{g:{_:1}}}},t:{_:1}},g:{_:1,g:{e:{d:{_:1}},i:{n:{g:{_:1}}}},h:{t:{_:1,e:{o:{u:{s:{_:1,n:{e:{s:{s:{_:1}}}}}}}},f:{u:{l:{_:1,l:{y:{_:1}}}}},l:{y:{_:1}},o:{_:1},s:{_:1},y:{_:1}}},i:{d:{_:1}},o:{r:{_:1,o:{u:{s:{_:1}}}}},s:{_:1}},l:{e:{_:1,d:{_:1},y:{_:1}},l:{a:{b:{o:{o:{m:{_:1}}}}}}},m:{_:1},n:{_:1,g:{_:1,e:{r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}},s:{_:1,i:{d:{e:{_:1}}}}},k:{_:1},s:{e:{_:1},i:{n:{g:{_:1}}}}},o:{j:{a:{_:1}},t:{_:1,i:{n:{g:{_:1}}},s:{_:1}},l:{u:{_:1}}},p:{_:1,e:{_:1},p:{e:{d:{_:1},r:{_:1}},i:{n:{g:{_:1}}},l:{e:{_:1,s:{_:1}},i:{n:{g:{_:1}}}}},s:{_:1}},s:{e:{_:1,n:{_:1},s:{_:1}},i:{n:{g:{_:1}}},k:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1},y:{_:1}},o:{t:{t:{o:{_:1}}}}},t:{e:{_:1,s:{_:1}},t:{e:{r:{_:1}}},u:{a:{l:{_:1,i:{s:{t:{i:{c:{_:1}}}}},s:{_:1}}}},z:{_:1,y:{_:1}}},v:{a:{l:{_:1,r:{y:{_:1}},s:{_:1}}},e:{r:{_:1,b:{a:{n:{k:{_:1}}}},s:{_:1,i:{d:{e:{_:1}}}}},t:{e:{d:{_:1}},i:{n:{g:{_:1}}}}},i:{e:{r:{a:{_:1}}}}}},o:{a:{c:{h:{_:1}},d:{_:1,b:{l:{o:{c:{k:{_:1,s:{_:1}}}}}},h:{o:{u:{s:{e:{_:1}}}}},i:{e:{_:1,s:{_:1}}},s:{_:1,t:{e:{r:{_:1}}}},w:{a:{y:{_:1}}}},m:{_:1,i:{n:{g:{_:1}}}},r:{_:1,i:{n:{g:{_:1}}}},s:{t:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}}},b:{_:1,b:{e:{d:{_:1},r:{_:1,i:{e:{s:{_:1}}},s:{_:1},y:{_:1}}},i:{n:{_:1,g:{_:1},s:{_:1}}}},e:{_:1,s:{_:1}},i:{n:{_:1,s:{_:1}}},o:{t:{_:1,i:{c:{_:1}},s:{_:1}}},s:{_:1},u:{s:{t:{_:1}}}},c:{k:{_:1,e:{d:{_:1},r:{_:1,s:{_:1}},t:{_:1,s:{_:1}}},i:{n:{g:{_:1}}},s:{_:1},y:{_:1},r:{u:{f:{f:{_:1}}}}}},d:{_:1,e:{_:1,n:{t:{_:1,s:{_:1}}},o:{_:1}},m:{a:{n:{_:1}}},s:{_:1}},g:{e:{r:{_:1,s:{_:1}}},u:{e:{_:1,s:{_:1}}},g:{e:{n:{r:{o:{l:{a:{_:1}}}}}}}},l:{e:{_:1,s:{_:1}},f:{_:1},l:{_:1,e:{d:{_:1},r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}},s:{_:1}},y:{c:{o:{l:{y:{_:1}}}}}},m:{_:1,a:{n:{_:1,c:{e:{_:1,s:{_:1}},i:{n:{g:{_:1}}}},t:{i:{c:{_:1,a:{l:{l:{y:{_:1}}}},i:{z:{e:{_:1}}}}}}}},e:{o:{_:1}},p:{_:1,e:{r:{_:1}},i:{n:{g:{_:1}}}}},o:{f:{_:1,e:{r:{_:1}},s:{_:1},t:{o:{p:{_:1,s:{_:1}}}}},k:{_:1,i:{e:{_:1,s:{_:1}},d:{e:{e:{_:1}}}}},m:{_:1,f:{u:{l:{_:1}}},i:{e:{_:1},n:{g:{_:1}}},m:{a:{t:{e:{_:1,s:{_:1}}}}},s:{_:1},y:{_:1}},s:{t:{_:1,e:{r:{_:1,s:{_:1}}}}},t:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}},p:{e:{_:1,d:{_:1},s:{_:1}}},s:{c:{o:{e:{_:1}}},e:{_:1,b:{u:{d:{_:1,s:{_:1}},s:{h:{_:1}}}},m:{a:{r:{y:{_:1}}}},s:{_:1},l:{i:{a:{_:1}}},r:{a:{d:{e:{_:1}}}}},i:{n:{_:1}},t:{e:{r:{_:1}}},y:{_:1}},t:{_:1,a:{r:{y:{_:1}},t:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1}}}}},i:{s:{s:{e:{r:{i:{e:{_:1}}}}}}},o:{_:1,m:{_:1}},s:{_:1},t:{e:{d:{_:1},n:{_:1}},i:{n:{g:{_:1}}}},u:{n:{d:{a:{_:1}}}}},u:{g:{e:{_:1},h:{_:1,a:{g:{e:{_:1}}},e:{r:{_:1}},i:{n:{g:{_:1}}},l:{y:{_:1}},n:{e:{c:{k:{s:{_:1}}}}},r:{i:{d:{e:{r:{s:{_:1}}}}}}}},l:{e:{t:{t:{e:{_:1}}}}},n:{d:{_:1,a:{b:{o:{u:{t:{_:1}}}}},e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}},s:{e:{_:1},i:{n:{g:{_:1}}},t:{_:1,e:{d:{_:1}}}},t:{e:{_:1,d:{_:1},r:{_:1},s:{_:1}},i:{n:{e:{_:1,l:{y:{_:1}},s:{_:1}},g:{_:1}}}}},v:{e:{r:{_:1}},i:{n:{g:{_:1}}}},w:{_:1,a:{n:{_:1}},b:{o:{a:{t:{_:1}}}},d:{y:{_:1}},i:{n:{g:{_:1}}},s:{_:1},l:{e:{t:{_:1}}}},y:{a:{l:{_:1,l:{y:{_:1}},s:{_:1},t:{i:{e:{s:{_:1}}},y:{_:1}}}}}},u:{b:{_:1,b:{e:{d:{_:1},r:{_:1,s:{_:1}}},i:{n:{g:{_:1}},s:{h:{_:1}}},l:{e:{_:1}}},e:{_:1,s:{_:1}},i:{e:{s:{_:1}}},s:{_:1},y:{_:1}},c:{k:{u:{s:{_:1}}}},d:{d:{e:{r:{_:1}}},e:{_:1,l:{y:{_:1}},n:{e:{s:{s:{_:1}}}},r:{_:1}},i:{m:{e:{n:{t:{a:{r:{y:{_:1}}}}}}}}},e:{_:1},f:{f:{_:1,i:{a:{n:{s:{_:1}}}},l:{e:{_:1,d:{_:1},s:{_:1},t:{_:1}}}}},g:{_:1,b:{y:{_:1}},g:{e:{d:{_:1}}}},i:{n:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}},l:{e:{_:1,d:{_:1},r:{_:1,s:{_:1}},s:{_:1}},i:{n:{g:{_:1}}}},m:{_:1,b:{a:{_:1},l:{e:{_:1},i:{n:{g:{_:1,s:{_:1}}}}}},m:{a:{g:{i:{n:{g:{_:1}}}}},y:{_:1}},o:{r:{_:1,e:{d:{_:1}},s:{_:1}},u:{r:{_:1,s:{_:1}}}},p:{_:1,l:{e:{d:{_:1}}},u:{s:{_:1}}}},n:{_:1,a:{r:{o:{u:{n:{d:{_:1}}}}},w:{a:{y:{_:1,s:{_:1}}}}},d:{o:{w:{n:{_:1}}}},e:{_:1,s:{_:1},r:{i:{g:{u:{s:{_:1}}}}}},g:{_:1},n:{e:{r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}},y:{_:1}},o:{f:{f:{_:1}}},s:{_:1},t:{_:1},w:{a:{y:{_:1}}}},p:{t:{u:{r:{e:{_:1,d:{_:1}}}}}},r:{a:{l:{_:1}}},s:{e:{_:1},h:{_:1,e:{d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}},t:{_:1,e:{d:{_:1}},l:{e:{_:1}},y:{_:1}}},t:{_:1,h:{_:1,l:{e:{s:{s:{_:1,l:{y:{_:1}}}}}}},t:{i:{n:{g:{_:1}}}}}},y:{a:{_:1},e:{_:1}}};