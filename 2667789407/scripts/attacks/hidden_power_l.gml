var atk = 12; // L
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("attack_L"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("attack_L_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 7);

//startup
set_window_value(atk, 1, AG_WINDOW_LENGTH, 8);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(atk, 1, AG_WINDOW_SFX_FRAME, get_window_value(atk, 1, AG_WINDOW_LENGTH)-1);

//active (early)
set_window_value(atk, 2, AG_WINDOW_LENGTH, 3);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(atk, 2, AG_WINDOW_HITPAUSE_FRAME, 4);

//active (falling)
set_window_value(atk, 3, AG_WINDOW_LENGTH, 3);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, 3, AG_WINDOW_HITPAUSE_FRAME, 4);
set_window_value(atk, 3, AG_WINDOW_GOTO, 7); //ends move early unless held

//land shock
set_window_value(atk, 4, AG_WINDOW_LENGTH, 8);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 4, AG_WINDOW_SFX, asset_get("sfx_kragg_rock_shatter"));
set_window_value(atk, 4, AG_WINDOW_SFX_FRAME, 0);

//land endlag
set_window_value(atk, 5, AG_WINDOW_LENGTH, 8);
set_window_value(atk, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, 5, AG_WINDOW_GOTO, 7);

//bounced
set_window_value(atk, 6, AG_WINDOW_LENGTH, 12);
set_window_value(atk, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 6, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 6, AG_WINDOW_SFX, sound_get("yoshi_bounce"));
set_window_value(atk, 6, AG_WINDOW_SFX_FRAME, 0);
set_window_value(atk, 6, AG_WINDOW_HITPAUSE_FRAME, 4);
set_window_value(atk, 6, AG_WINDOW_VSPEED, -8);
set_window_value(atk, 6, AG_WINDOW_VSPEED_TYPE, 1);

//endlag
set_window_value(atk, 7, AG_WINDOW_LENGTH, 8);
set_window_value(atk, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 7, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(atk, 5);

//first hit
set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 1, HG_WINDOW, 2);
set_hitbox_value(atk, 1, HG_LIFETIME, get_window_value(atk, 2, AG_WINDOW_LENGTH));
set_hitbox_value(atk, 1, HG_HITBOX_X, 10);
set_hitbox_value(atk, 1, HG_HITBOX_Y, 0);
set_hitbox_value(atk, 1, HG_WIDTH, 32);
set_hitbox_value(atk, 1, HG_HEIGHT, 50);
set_hitbox_value(atk, 1, HG_SHAPE, 2);
set_hitbox_value(atk, 1, HG_PRIORITY, 2);
set_hitbox_value(atk, 1, HG_DAMAGE, 8);
set_hitbox_value(atk, 1, HG_ANGLE, 270);
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(atk, 1, HG_UNOWN_DAMAGE_BONUS, 4);
set_hitbox_value(atk, 1, HG_UNOWN_KNOCKBACK_BONUS, 1);
set_hitbox_value(atk, 1, HG_UNOWN_SCALING_BONUS, 0.25);
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(atk, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(atk, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

//Falling hit
set_hitbox_value(atk, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 2, HG_WINDOW, 3);
set_hitbox_value(atk, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(atk, 2, HG_LIFETIME, 1);
set_hitbox_value(atk, 2, HG_HITBOX_X, 10);
set_hitbox_value(atk, 2, HG_HITBOX_Y, 0);
set_hitbox_value(atk, 2, HG_WIDTH, 32);
set_hitbox_value(atk, 2, HG_HEIGHT, 20);
set_hitbox_value(atk, 2, HG_SHAPE, 2);
set_hitbox_value(atk, 2, HG_PRIORITY, 2);
set_hitbox_value(atk, 2, HG_DAMAGE, 5);
set_hitbox_value(atk, 2, HG_ANGLE, 80);
set_hitbox_value(atk, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, 2, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(atk, 2, HG_UNOWN_DAMAGE_BONUS, 4);
set_hitbox_value(atk, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, 2, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(atk, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

//Shockwave hits
set_hitbox_value(atk, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 3, HG_WINDOW, 4);
set_hitbox_value(atk, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(atk, 3, HG_LIFETIME, 5);
set_hitbox_value(atk, 3, HG_HITBOX_X, 0);
set_hitbox_value(atk, 3, HG_HITBOX_Y, -12);
set_hitbox_value(atk, 3, HG_WIDTH, 80);
set_hitbox_value(atk, 3, HG_HEIGHT, 32);
set_hitbox_value(atk, 3, HG_SHAPE, 2);
set_hitbox_value(atk, 3, HG_PRIORITY, 6);
set_hitbox_value(atk, 3, HG_DAMAGE, 8);
set_hitbox_value(atk, 3, HG_ANGLE, 80);
set_hitbox_value(atk, 3, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(atk, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, 3, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(atk, 3, HG_UNOWN_DAMAGE_BONUS, 4);
set_hitbox_value(atk, 3, HG_UNOWN_KNOCKBACK_BONUS, 1);
set_hitbox_value(atk, 3, HG_UNOWN_SCALING_BONUS, 0.15);
set_hitbox_value(atk, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, 3, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(atk, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(atk, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 4, HG_WINDOW, 4);
set_hitbox_value(atk, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(atk, 4, HG_LIFETIME, 3);
set_hitbox_value(atk, 4, HG_HITBOX_X, 80);
set_hitbox_value(atk, 4, HG_HITBOX_Y, -4);
set_hitbox_value(atk, 4, HG_WIDTH, 160);
set_hitbox_value(atk, 4, HG_HEIGHT, 8);
set_hitbox_value(atk, 4, HG_SHAPE, 1);
set_hitbox_value(atk, 4, HG_PRIORITY, 2);
set_hitbox_value(atk, 4, HG_DAMAGE, 7);
set_hitbox_value(atk, 4, HG_ANGLE, 90);
set_hitbox_value(atk, 4, HG_GROUNDEDNESS, 1);
set_hitbox_value(atk, 4, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(atk, 4, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(atk, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, 4, HG_KNOCKBACK_SCALING, 0.15);
set_hitbox_value(atk, 4, HG_UNOWN_DAMAGE_BONUS, 3);
set_hitbox_value(atk, 4, HG_UNOWN_KNOCKBACK_BONUS, 1);
set_hitbox_value(atk, 4, HG_UNOWN_SCALING_BONUS, 0.25);
set_hitbox_value(atk, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(atk, 4, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(atk, 4, HG_HIT_SFX, asset_get("sfx_kragg_spike"));

set_hitbox_value(atk, 5, HG_PARENT_HITBOX, 4);
set_hitbox_value(atk, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 5, HG_WINDOW, 4);
set_hitbox_value(atk, 5, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(atk, 5, HG_LIFETIME, 3);
set_hitbox_value(atk, 5, HG_HITBOX_X, -80);
set_hitbox_value(atk, 5, HG_HITBOX_Y, -4);
set_hitbox_value(atk, 5, HG_EXTENDED_PARRY_STUN, 1);

//================================================================
//WORD DATA
set_window_value(UNOWN_ATK.L, 2, AG_UNOWN_WINDOW_ACTIVE, true);
set_window_value(UNOWN_ATK.L, 4, AG_UNOWN_WINDOW_ACTIVE, true);
if ("l" not in unown_dictionary) unown_dictionary.l = make_trie_L();
//================================================================
//contains words starting with L
#define make_trie_L()
    return {a:{_:1,b:{_:1,e:{l:{_:1,e:{d:{_:1}},l:{e:{d:{_:1}}},s:{_:1}}},o:{r:{_:1,a:{t:{o:{r:{i:{e:{s:{_:1}}},y:{_:1}}}}},e:{d:{_:1},r:{s:{_:1}}}},u:{r:{_:1}}},r:{a:{d:{o:{r:{_:1}}}}},s:{_:1},y:{r:{i:{n:{t:{h:{_:1}}}}}}},c:{_:1,e:{_:1,d:{_:1},r:{a:{t:{e:{d:{_:1}},i:{o:{n:{_:1,s:{_:1}}}}}}},s:{_:1},y:{_:1}},k:{_:1,e:{d:{_:1},y:{s:{_:1}}},i:{n:{g:{_:1}}},l:{u:{s:{t:{e:{r:{_:1}}}}}},s:{_:1}},q:{u:{e:{r:{_:1}}}},r:{o:{s:{s:{e:{_:1}}}}},t:{i:{c:{_:1}},o:{s:{e:{_:1}}}},y:{_:1}},d:{_:1,d:{e:{r:{_:1,s:{_:1}}},i:{e:{s:{_:1}}}},e:{n:{_:1}},i:{e:{s:{_:1}}},l:{e:{_:1}},s:{_:1},y:{_:1,s:{h:{i:{p:{_:1}}}}}},g:{_:1,e:{r:{_:1}},g:{i:{n:{g:{_:1}}}},o:{o:{n:{_:1}}}},i:{d:{_:1},r:{_:1,d:{_:1},o:{n:{_:1}}}},k:{e:{_:1,r:{_:1,s:{_:1}},s:{_:1,h:{o:{r:{e:{_:1}}}},i:{d:{e:{_:1}}}}}},m:{_:1,a:{_:1},b:{_:1,d:{a:{_:1}},e:{r:{t:{_:1}}},s:{_:1}},e:{_:1,n:{e:{s:{s:{_:1}}},t:{_:1}}},i:{n:{a:{t:{e:{d:{_:1}}}}}},p:{_:1,p:{o:{s:{t:{_:1}}}},s:{_:1},e:{n:{t:{_:1}}}}},n:{c:{e:{_:1,r:{_:1}}},d:{_:1,e:{d:{_:1},r:{_:1,s:{_:1}}},f:{a:{l:{l:{_:1}}},i:{l:{l:{_:1}}}},i:{n:{g:{_:1,s:{_:1}}}},l:{a:{d:{y:{_:1}}},o:{r:{d:{_:1,s:{_:1}}}}},m:{a:{r:{k:{_:1,s:{_:1}}}}},s:{_:1,c:{a:{p:{e:{_:1,s:{_:1}},i:{n:{g:{_:1}}}}}},l:{i:{d:{e:{_:1}}}}},o:{r:{u:{s:{_:1}}}}},e:{_:1,s:{_:1}},g:{_:1,l:{e:{y:{_:1}}},u:{a:{g:{e:{_:1,s:{_:1}}}},i:{s:{h:{i:{n:{g:{_:1}}}}}}}},k:{y:{_:1}},t:{e:{r:{n:{_:1}}},u:{r:{n:{_:1}}}},y:{a:{r:{d:{_:1}}}}},p:{_:1,d:{o:{g:{_:1}}},e:{l:{_:1}},p:{i:{n:{g:{_:1}}}},s:{_:1,e:{_:1,d:{_:1},s:{_:1}}},t:{o:{p:{_:1,s:{_:1}}}},r:{a:{s:{_:1}}}},r:{_:1,c:{e:{n:{y:{_:1}}},h:{_:1}},d:{_:1},g:{e:{_:1,l:{y:{_:1}},r:{_:1},s:{t:{_:1}}}},k:{_:1},s:{_:1},v:{a:{e:{_:1},l:{_:1}},i:{t:{a:{r:{_:1}}}},e:{s:{t:{a:{_:1}}}}},y:{n:{g:{i:{t:{i:{s:{_:1}}}}}}}},s:{_:1,a:{g:{n:{a:{_:1},e:{_:1}}}},c:{i:{v:{i:{o:{u:{s:{_:1}}}}}}},e:{r:{_:1,s:{_:1}}},h:{_:1,e:{d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}},s:{_:1,i:{e:{_:1}},o:{_:1}},t:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}},t:{c:{h:{_:1,e:{d:{_:1}}}},e:{_:1,l:{y:{_:1}},n:{t:{_:1}},r:{_:1},s:{t:{_:1}},x:{_:1}},h:{e:{_:1,r:{_:1}}},i:{n:{o:{_:1}},t:{u:{d:{e:{_:1}}}},a:{s:{_:1}},o:{s:{_:1}}},r:{i:{n:{e:{_:1}}}},t:{e:{_:1,r:{_:1},s:{_:1}}}},u:{g:{h:{_:1,a:{b:{l:{e:{_:1}}}},e:{d:{_:1}},i:{n:{g:{_:1,s:{t:{o:{c:{k:{_:1}}}}}}}},s:{_:1},t:{e:{r:{_:1}}}}},n:{c:{h:{_:1,e:{d:{_:1},r:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}},d:{e:{r:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}}}},r:{y:{_:1}}}},r:{a:{_:1},e:{a:{t:{e:{_:1}}},l:{_:1}}}},v:{a:{_:1},e:{n:{d:{e:{r:{_:1}}}}},i:{s:{h:{_:1,e:{d:{_:1}}}}}},w:{_:1,f:{u:{l:{_:1,l:{y:{_:1}}}}},m:{a:{n:{_:1}},e:{n:{_:1}}},n:{_:1,m:{o:{w:{e:{r:{_:1}}}}},s:{_:1}},s:{_:1,u:{i:{t:{_:1,s:{_:1}}}}},y:{e:{r:{_:1,e:{d:{_:1}},s:{_:1}}}}},x:{_:1,a:{t:{i:{v:{e:{_:1,s:{_:1}}}}}}},y:{_:1,a:{w:{a:{y:{_:1}}}},e:{r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}},m:{a:{n:{_:1}}},o:{u:{t:{_:1}}},s:{_:1}},z:{a:{r:{_:1}},i:{n:{e:{s:{s:{_:1}}}}},y:{_:1}}},e:{a:{d:{_:1,e:{r:{_:1,s:{_:1,h:{i:{p:{_:1}}}}}},i:{n:{g:{_:1}}},s:{_:1}},f:{_:1,l:{e:{t:{s:{_:1}}}},s:{_:1},y:{_:1},e:{o:{n:{_:1}}}},g:{u:{e:{_:1,s:{_:1}}}},k:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1},y:{_:1}},n:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}},p:{_:1,i:{n:{g:{_:1}}},s:{_:1},t:{_:1}},r:{_:1,n:{_:1,e:{d:{_:1},r:{_:1}},i:{n:{g:{_:1}}},s:{_:1},t:{_:1}},y:{_:1}},s:{e:{_:1,d:{_:1}},h:{_:1},t:{_:1}},t:{h:{e:{r:{_:1}}}},v:{e:{_:1,r:{_:1},s:{_:1}},i:{n:{g:{_:1}}},a:{n:{n:{y:{_:1}}}}}},c:{h:{_:1},t:{u:{r:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}}}},d:{_:1,e:{r:{h:{o:{s:{e:{n:{_:1}}}}}}},g:{e:{_:1,r:{_:1,s:{_:1}}}},y:{b:{a:{_:1}}},i:{a:{n:{_:1}}}},e:{_:1,c:{h:{_:1,e:{s:{_:1}}}},r:{i:{n:{g:{_:1}}},y:{_:1}},w:{a:{y:{_:1}}}},f:{t:{_:1,o:{v:{e:{r:{_:1,s:{_:1}}}}},s:{_:1},y:{_:1}}},g:{_:1,a:{c:{y:{_:1}},l:{_:1,i:{t:{i:{e:{s:{_:1}}},y:{_:1}},z:{i:{n:{g:{_:1}}}}},l:{y:{_:1}}}},e:{n:{d:{_:1,a:{r:{y:{_:1}}},s:{_:1}}}},g:{e:{d:{_:1}},y:{_:1}},i:{o:{n:{_:1,s:{_:1}}},s:{l:{a:{t:{e:{_:1},i:{o:{n:{_:1}},v:{e:{_:1}}},u:{r:{e:{_:1}}}}}}},t:{_:1,i:{m:{a:{c:{y:{_:1}},t:{e:{_:1}}}}}}},s:{_:1},w:{o:{r:{k:{_:1}}}}},i:{_:1,s:{u:{r:{e:{_:1,l:{y:{_:1}}}}}}},m:{m:{i:{n:{g:{s:{_:1}}}}},o:{n:{_:1,a:{d:{e:{_:1}}},y:{_:1}}},u:{r:{_:1}}},n:{d:{_:1,i:{n:{g:{_:1}}}},g:{t:{h:{_:1,s:{_:1}}}},i:{e:{n:{c:{y:{_:1}}}}},o:{_:1},s:{_:1,e:{s:{_:1}}},t:{_:1,i:{l:{s:{_:1}}}}},o:{p:{a:{r:{d:{_:1,s:{_:1}}}}},t:{a:{r:{d:{_:1,s:{_:1}}}}},n:{_:1}},p:{e:{r:{_:1,s:{_:1}}},r:{e:{c:{h:{a:{u:{n:{_:1}}}}}}}},s:{b:{i:{a:{n:{_:1,s:{_:1}}}}},i:{o:{n:{s:{_:1}}}},s:{_:1,e:{e:{_:1},n:{_:1},r:{_:1}},o:{n:{_:1,s:{_:1}}}},t:{_:1}},t:{_:1,h:{a:{l:{_:1}}},s:{_:1},t:{e:{r:{_:1,h:{e:{a:{d:{_:1}}}},i:{n:{g:{_:1}}},m:{a:{n:{_:1}}},s:{_:1}}},i:{n:{g:{_:1}}},u:{c:{e:{_:1}}}}},u:{k:{e:{m:{i:{a:{_:1}}}}}},v:{e:{e:{_:1},l:{_:1,h:{e:{a:{d:{e:{d:{_:1}}}}}},s:{_:1}},r:{_:1,a:{g:{e:{_:1,d:{_:1}}}}}},i:{t:{a:{t:{e:{_:1},i:{o:{n:{_:1}}}}},y:{_:1}}},y:{_:1}},w:{d:{_:1},i:{s:{_:1}}},x:{_:1},z:{_:1}},i:{_:1,a:{b:{i:{l:{i:{t:{y:{_:1}}}}},l:{e:{_:1}}},i:{s:{o:{n:{_:1}}}},n:{e:{_:1}},r:{_:1,s:{_:1}}},b:{a:{t:{i:{o:{n:{_:1}}}}},e:{l:{_:1},r:{a:{l:{_:1,s:{_:1}},t:{e:{d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1}}}}},t:{i:{e:{s:{_:1}}},y:{_:1}}}},i:{d:{o:{_:1}}},r:{a:{r:{i:{a:{n:{_:1}},e:{s:{_:1}}},y:{_:1}}}}},c:{e:{_:1,n:{c:{e:{_:1}},s:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}}},h:{e:{n:{_:1}}},k:{_:1,e:{d:{_:1},r:{_:1}},i:{n:{g:{_:1}},t:{u:{n:{g:{_:1}}}},l:{i:{c:{k:{y:{_:1}}}}}},s:{_:1}},o:{r:{i:{c:{e:{_:1}}}}}},d:{_:1,o:{_:1,c:{a:{i:{n:{e:{_:1}}}}}},s:{_:1}},e:{_:1,d:{_:1},g:{e:{_:1}},n:{_:1},r:{_:1},s:{_:1},u:{_:1,t:{e:{n:{a:{n:{t:{_:1,s:{_:1}}}}}}}},p:{a:{r:{d:{_:1}}}}},f:{e:{_:1,b:{o:{a:{t:{s:{_:1}}}}},g:{u:{a:{r:{d:{_:1}}}}},l:{e:{s:{s:{_:1}}},i:{k:{e:{_:1}},n:{e:{_:1}}},o:{n:{g:{_:1}}}},r:{_:1,s:{_:1}},s:{a:{v:{e:{r:{_:1}}}},t:{y:{l:{e:{_:1}}}}},t:{i:{m:{e:{_:1,s:{_:1}}}}}},t:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},o:{f:{f:{_:1}}},s:{_:1}}},g:{a:{m:{e:{n:{t:{_:1}}}},t:{u:{r:{e:{_:1}}}}},h:{t:{_:1,e:{d:{_:1},n:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}}},r:{_:1,s:{_:1}}},h:{e:{a:{d:{e:{d:{_:1}}},r:{t:{e:{d:{_:1}}}}}},o:{u:{s:{e:{_:1}}}}},i:{n:{g:{_:1}}},l:{y:{_:1}},n:{e:{s:{s:{_:1}}},i:{n:{g:{_:1}}}},s:{_:1}}}},k:{e:{_:1,d:{_:1},l:{i:{h:{o:{o:{d:{_:1}}}}},y:{_:1}},n:{e:{s:{s:{_:1}}}},s:{_:1},w:{i:{s:{e:{_:1}}}}},i:{n:{g:{_:1}}}},l:{a:{c:{_:1,s:{_:1}}},i:{e:{s:{_:1}}},y:{_:1},e:{e:{p:{_:1}}},l:{i:{p:{u:{p:{_:1}}},g:{a:{n:{t:{_:1}}}}}}},m:{a:{_:1},b:{_:1,e:{r:{_:1}},o:{_:1},s:{_:1}},e:{_:1,l:{i:{g:{h:{t:{_:1}}}}},r:{i:{c:{k:{_:1}}}},s:{_:1,t:{o:{n:{e:{_:1}}}}},y:{_:1}},i:{t:{_:1,a:{t:{i:{o:{n:{_:1,s:{_:1}}}}}},e:{d:{_:1}},l:{e:{s:{s:{_:1}}}},s:{_:1}}},o:{_:1,s:{_:1},u:{s:{i:{n:{e:{_:1,s:{_:1}}}}}}},p:{_:1,i:{n:{g:{_:1}}},s:{_:1}}},n:{_:1,e:{_:1,a:{g:{e:{_:1}},r:{_:1}},b:{a:{c:{k:{e:{r:{_:1}}}}}},d:{_:1},n:{_:1,s:{_:1}},r:{_:1,s:{_:1}},s:{_:1},u:{p:{_:1}}},g:{_:1,e:{r:{_:1,i:{e:{_:1},n:{g:{_:1}}},s:{_:1}}},o:{_:1},u:{i:{s:{t:{i:{c:{_:1}}}}}}},i:{n:{g:{_:1}}},k:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}},o:{l:{e:{u:{m:{_:1}}}},o:{n:{e:{_:1}}}},t:{_:1}},o:{n:{_:1,s:{_:1}}},p:{_:1,o:{s:{u:{c:{t:{i:{o:{n:{_:1}}}}}}}},p:{e:{d:{_:1}},y:{_:1}},s:{_:1,t:{i:{c:{k:{_:1}}}}}},q:{u:{e:{f:{y:{_:1}}},i:{d:{_:1,a:{t:{e:{_:1,d:{_:1}},i:{o:{n:{_:1}}}}}}},o:{r:{_:1,e:{d:{_:1}}}}}},r:{a:{_:1}},s:{_:1,t:{_:1,e:{d:{_:1},n:{_:1,e:{d:{_:1},r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}},s:{_:1}}},i:{n:{g:{_:1}}},s:{_:1}}},t:{_:1,a:{n:{y:{_:1}}},e:{_:1,r:{_:1,a:{c:{y:{_:1}},l:{_:1,l:{y:{_:1}}},r:{y:{_:1}},t:{e:{_:1},u:{r:{e:{_:1}}}}},s:{_:1}}},h:{i:{u:{m:{_:1}}}},i:{g:{a:{t:{i:{o:{n:{_:1}}}}},i:{o:{u:{s:{_:1}}}}}},t:{e:{r:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}}},n:{_:1}},l:{e:{_:1,s:{t:{_:1}}}}},w:{i:{c:{k:{_:1}}}},l:{e:{o:{_:1}}}},v:{e:{_:1,d:{_:1},l:{i:{h:{o:{o:{d:{_:1}}}}},y:{_:1}},n:{_:1},r:{_:1,s:{_:1}},s:{_:1,t:{o:{c:{k:{_:1}}}}}},i:{d:{_:1},n:{g:{_:1}}}},z:{a:{r:{d:{_:1,s:{_:1}}}}}},l:{a:{m:{a:{_:1}}}},o:{_:1,a:{d:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}},f:{_:1,e:{r:{s:{_:1}}}},n:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}},t:{h:{_:1,e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}}},b:{_:1,b:{y:{_:1,i:{n:{g:{_:1}},s:{t:{_:1}}}}},e:{_:1,s:{_:1}},o:{t:{o:{m:{y:{_:1}}}}},s:{t:{e:{r:{_:1,s:{_:1}}}}}},c:{a:{_:1,l:{_:1,e:{_:1},i:{z:{e:{d:{_:1}}}},l:{y:{_:1}},s:{_:1}},t:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1,s:{_:1}}}},o:{r:{_:1}}}},h:{_:1},k:{_:1,d:{o:{w:{n:{_:1}}}},e:{d:{_:1},r:{_:1,s:{_:1}},t:{_:1}},i:{n:{g:{_:1}}},s:{_:1,m:{i:{t:{h:{_:1}}}}},u:{p:{_:1}}},o:{_:1,m:{o:{t:{i:{v:{e:{_:1}}}}}}},u:{s:{t:{_:1,s:{_:1}}}}},d:{e:{_:1},g:{e:{_:1,d:{_:1}},i:{n:{g:{_:1,s:{_:1}}}}}},f:{t:{_:1,y:{_:1}}},g:{_:1,a:{n:{_:1}},g:{e:{d:{_:1},r:{_:1}}},i:{c:{_:1,a:{l:{_:1,l:{y:{_:1}}}}},s:{t:{i:{c:{s:{_:1}}}}}},o:{_:1},s:{_:1}},i:{n:{_:1,s:{_:1}},t:{e:{r:{i:{n:{g:{_:1}}}}}}},l:{l:{i:{p:{o:{p:{_:1,s:{_:1}}}}},y:{_:1}}},n:{e:{_:1,l:{i:{e:{r:{_:1},s:{t:{_:1}}},n:{e:{s:{s:{_:1}}}}},y:{_:1}},r:{_:1,s:{_:1}},s:{o:{m:{e:{_:1}}}}},g:{_:1,e:{r:{_:1},s:{t:{_:1}},v:{i:{t:{y:{_:1}}}}},i:{n:{g:{_:1}},t:{u:{d:{e:{_:1}}}}},s:{_:1},t:{i:{m:{e:{_:1}}}}}},o:{_:1,f:{a:{h:{_:1}}},k:{_:1,e:{d:{_:1},r:{_:1}},i:{n:{g:{_:1}}},o:{u:{t:{_:1,s:{_:1}}}},s:{_:1}},m:{_:1,i:{n:{g:{_:1}}}},n:{_:1,e:{y:{_:1}},s:{_:1},y:{_:1}},p:{_:1,e:{d:{_:1}},h:{o:{l:{e:{_:1,s:{_:1}}}}},s:{_:1}},s:{_:1,e:{_:1,l:{y:{_:1}},n:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}}},r:{_:1}},i:{n:{g:{_:1}}}},t:{_:1,i:{n:{g:{_:1}}}}},p:{_:1,p:{e:{d:{_:1},r:{_:1}}},s:{i:{d:{e:{d:{_:1}}}}},u:{n:{n:{y:{_:1}}}}},r:{a:{n:{_:1}},d:{_:1,i:{n:{g:{_:1}}},s:{_:1,h:{i:{p:{_:1}}}}},e:{_:1},r:{y:{_:1}}},s:{e:{_:1,r:{_:1,s:{_:1}},s:{_:1}},i:{n:{g:{_:1}}},s:{_:1,e:{s:{_:1}}},t:{_:1}},t:{_:1,h:{a:{r:{i:{o:{_:1}}}}},i:{o:{n:{_:1}}},s:{_:1},t:{e:{_:1,r:{y:{_:1}}},o:{_:1}},a:{d:{_:1}}},u:{d:{_:1,e:{n:{_:1},r:{_:1},s:{t:{_:1}}},l:{y:{_:1}},r:{e:{d:{_:1}}}},i:{e:{_:1},s:{_:1}},n:{g:{e:{_:1},i:{n:{g:{_:1}}}}},s:{e:{_:1},y:{_:1}},t:{_:1},v:{r:{e:{_:1}}}},v:{a:{b:{l:{e:{_:1}}}},e:{_:1,a:{b:{l:{e:{_:1}}}},b:{i:{r:{d:{s:{_:1}}}}},d:{_:1},l:{e:{s:{s:{_:1}}},i:{e:{r:{_:1},s:{_:1,t:{_:1}}}},o:{r:{n:{_:1}}},y:{_:1}},m:{a:{k:{i:{n:{g:{_:1}}}}}},r:{_:1,s:{_:1}},s:{_:1,i:{c:{k:{_:1}}}}},i:{n:{g:{_:1,l:{y:{_:1}}}}}},w:{_:1,d:{o:{w:{n:{_:1}}}},e:{_:1,r:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1},y:{_:1}},s:{t:{_:1}}},l:{i:{f:{e:{_:1,s:{_:1}}}},y:{_:1}},s:{_:1}},x:{_:1},y:{a:{l:{_:1,t:{i:{e:{s:{_:1}}},y:{_:1}}}}},z:{e:{n:{g:{e:{s:{_:1}}}}}},m:{b:{r:{e:{_:1}}}}},u:{a:{u:{_:1}},b:{e:{_:1},r:{i:{c:{a:{n:{t:{_:1,s:{_:1}}},t:{i:{o:{n:{_:1}}}}}}}}},c:{e:{_:1},i:{d:{_:1},f:{e:{r:{_:1}}}},k:{_:1,e:{d:{_:1}},i:{e:{r:{_:1},s:{t:{_:1}}},l:{y:{_:1}}},y:{_:1}},r:{a:{t:{i:{v:{e:{_:1}}}}}},a:{r:{i:{o:{_:1}}}}},d:{i:{c:{r:{o:{u:{s:{_:1}}}},o:{l:{o:{_:1}}}}}},g:{_:1,e:{_:1},g:{a:{g:{e:{_:1}}}},i:{a:{_:1}}},k:{e:{w:{a:{r:{m:{_:1}}}}}},l:{l:{_:1,a:{b:{y:{_:1}}}},u:{_:1}},m:{_:1,b:{a:{r:{_:1}},e:{r:{_:1,i:{n:{g:{_:1}}},j:{a:{c:{k:{_:1}}}}}}},i:{n:{o:{u:{s:{_:1}}},e:{o:{n:{_:1}}}}},p:{_:1,e:{c:{t:{o:{m:{y:{_:1}}}}}},s:{_:1},y:{_:1}}},n:{a:{_:1,c:{y:{_:1}},r:{_:1},t:{i:{c:{_:1,s:{_:1}}},o:{n:{e:{_:1}}}},l:{a:{_:1}}},c:{h:{_:1,e:{o:{n:{_:1}},s:{_:1}},i:{n:{g:{_:1}}},r:{o:{o:{m:{_:1}}}},t:{i:{m:{e:{_:1}}}}}},g:{_:1,e:{_:1,d:{_:1}},s:{_:1}}},p:{u:{s:{_:1}}},r:{c:{h:{_:1}},e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}},k:{_:1,i:{n:{g:{_:1}}},s:{_:1}},a:{n:{t:{i:{s:{_:1}}}}}},s:{c:{i:{o:{u:{s:{_:1}}}}},h:{_:1},t:{_:1,e:{r:{_:1}},i:{n:{g:{_:1}}},s:{_:1}},a:{m:{i:{n:{e:{_:1}}}}}},t:{z:{_:1}},v:{_:1,d:{i:{s:{c:{_:1}}}}},x:{_:1,u:{r:{i:{e:{s:{_:1}}},y:{_:1}}},i:{o:{_:1}},r:{a:{y:{_:1}}}}},y:{e:{_:1},i:{n:{g:{_:1}}},m:{p:{h:{_:1,o:{m:{a:{_:1}}}}}},n:{c:{h:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}}}},x:{_:1}},r:{i:{c:{a:{l:{_:1}},s:{_:1}}}},s:{a:{n:{d:{r:{e:{_:1}}}}}},c:{a:{n:{r:{o:{c:{_:1}}}}}}}};