var atk = 25;// Y
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("attack_Y"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("attack_Y_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 3);

set_window_value(atk, 1, AG_WINDOW_LENGTH, 15);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 1, AG_WINDOW_SFX, asset_get("sfx_orcane_dsmash"));
set_window_value(atk, 1, AG_WINDOW_SFX_FRAME, get_window_value(atk, 1, AG_WINDOW_LENGTH) - 1);

set_window_value(atk, 2, AG_WINDOW_LENGTH, unown_y_water_active_time);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, 2, AG_WINDOW_VSPEED, -13);
set_window_value(atk, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(atk, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 2, AG_WINDOW_SFX, asset_get("sfx_orca_soak"));
set_window_value(atk, 2, AG_WINDOW_SFX_FRAME, 1);

set_window_value(atk, 3, AG_WINDOW_TYPE, 7);
set_window_value(atk, 3, AG_WINDOW_LENGTH, 12);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_num_hitboxes(atk, 1);

// cheating: storing position data here 
set_hitbox_value(atk, 0, HG_HITBOX_Y, 32);

set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 1, HG_WINDOW, 2);
set_hitbox_value(atk, 1, HG_LIFETIME, get_window_value(atk, 2, AG_WINDOW_LENGTH));
set_hitbox_value(atk, 1, HG_HITBOX_Y, -40);
set_hitbox_value(atk, 1, HG_WIDTH, 64);
set_hitbox_value(atk, 1, HG_HEIGHT, 30);
set_hitbox_value(atk, 1, HG_PRIORITY, 2);
set_hitbox_value(atk, 1, HG_DAMAGE, 6);
set_hitbox_value(atk, 1, HG_ANGLE, 90);
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, 1, HG_FINAL_BASE_KNOCKBACK, 4);
set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(atk, 1, HG_UNOWN_DAMAGE_BONUS, 6);
set_hitbox_value(atk, 1, HG_UNOWN_KNOCKBACK_BONUS, 4);
set_hitbox_value(atk, 1, HG_UNOWN_SCALING_BONUS, 0.20);
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(atk, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(atk, 1, HG_VISUAL_EFFECT, 149);
set_hitbox_value(atk, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

//handled manually
set_hitbox_value(atk, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 2, HG_LIFETIME, 1);
set_hitbox_value(atk, 2, HG_HITBOX_Y, 4); //dynamic
set_hitbox_value(atk, 2, HG_HEIGHT, 24); //dynamic
set_hitbox_value(atk, 2, HG_WIDTH, 24);
set_hitbox_value(atk, 2, HG_PRIORITY, 2);
set_hitbox_value(atk, 2, HG_SHAPE, 1);
set_hitbox_value(atk, 2, HG_DAMAGE, 6);
set_hitbox_value(atk, 2, HG_ANGLE, 45);
set_hitbox_value(atk, 2, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(atk, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, 2, HG_KNOCKBACK_SCALING, .35);
//not applied yet: need extra condition in set_attack.gml
set_hitbox_value(atk, 2, HG_UNOWN_DAMAGE_BONUS, 4);
set_hitbox_value(atk, 2, HG_UNOWN_KNOCKBACK_BONUS, 2);
set_hitbox_value(atk, 2, HG_UNOWN_SCALING_BONUS, 0.15);
set_hitbox_value(atk, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(atk, 2, HG_EXTRA_HITPAUSE, 7);
set_hitbox_value(atk, 2, HG_VISUAL_EFFECT, 195);
set_hitbox_value(atk, 2, HG_HIT_SFX, asset_get("sfx_waterhit_heavy2"));
set_hitbox_value(atk, 2, HG_HITBOX_GROUP, 2);

//================================================================
//WORD DATA
set_window_value(UNOWN_ATK.Y, 2, AG_UNOWN_WINDOW_ACTIVE, true);
if ("y" not in unown_dictionary) unown_dictionary.y = make_trie_Y();
//================================================================
//contains words starting with Y
#define make_trie_Y()
    return {a:{_:1,c:{h:{e:{_:1},t:{_:1,s:{_:1}}}},h:{_:1,o:{o:{_:1}}},k:{_:1,k:{i:{n:{g:{_:1}}}}},m:{_:1,a:{s:{k:{_:1}}},m:{e:{r:{_:1,i:{n:{g:{_:1}}}}}},p:{e:{r:{_:1}}},s:{_:1}},n:{g:{_:1},k:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}},m:{a:{_:1},e:{g:{a:{_:1}}}}},p:{_:1,p:{i:{n:{g:{_:1}}}}},r:{d:{_:1,s:{_:1,t:{i:{c:{k:{_:1}}}}}},n:{_:1}},w:{_:1,n:{_:1,i:{n:{g:{_:1}}}}},y:{_:1}},e:{_:1,a:{_:1,h:{_:1},r:{_:1,b:{o:{o:{k:{_:1,s:{_:1}}}}},n:{e:{d:{_:1}},i:{n:{g:{_:1,s:{_:1}}}},s:{_:1}},s:{_:1}},s:{t:{_:1}}},c:{h:{_:1}},h:{_:1},l:{l:{_:1,e:{d:{_:1},r:{_:1}},i:{n:{g:{_:1}}},o:{w:{_:1}},s:{_:1}}},n:{_:1},p:{_:1},s:{_:1,t:{e:{r:{d:{a:{y:{_:1,s:{_:1}}}}}}}},t:{_:1,i:{_:1}}},i:{e:{l:{d:{_:1,i:{n:{g:{_:1}}},s:{_:1}}}},k:{e:{s:{_:1}}},n:{_:1},p:{e:{_:1},p:{e:{e:{_:1}},i:{e:{_:1}}}}},o:{_:1,d:{e:{l:{_:1}}},g:{a:{_:1},h:{u:{r:{t:{_:1}}}},i:{_:1},u:{r:{t:{_:1}}}},k:{e:{_:1,l:{_:1,s:{_:1}}}},l:{k:{_:1}},m:{_:1},n:{_:1,k:{e:{r:{s:{_:1}}}}},r:{e:{_:1}},u:{_:1,n:{g:{_:1,e:{r:{_:1},s:{t:{_:1}}},s:{t:{e:{r:{_:1,s:{_:1}}}}}}},r:{_:1,s:{_:1,e:{l:{f:{_:1},v:{e:{s:{_:1}}}}}}},s:{e:{_:1}},t:{h:{_:1,f:{u:{l:{_:1}}},s:{_:1}}}}},u:{a:{n:{_:1}},c:{k:{_:1}},k:{_:1},l:{e:{t:{i:{d:{e:{_:1}}}}}},m:{_:1,m:{y:{_:1}}},n:{g:{o:{o:{s:{_:1}}}}},p:{_:1,p:{i:{e:{_:1,s:{_:1}}}}}},v:{e:{l:{t:{a:{l:{_:1}}}}}}};