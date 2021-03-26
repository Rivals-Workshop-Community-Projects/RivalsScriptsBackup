set_attack_value(AT_FAIR, AG_CATEGORY, 1);
//set_attack_value(AT_FAIR, AG_SPRITE, asset_get("sword_fair_spr"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_OFF_LEDGE, 0);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 8);
//set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, asset_get("sword_fair_hurt"));
set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_FAIR, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_FAIR, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_weak"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 0);


set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FAIR, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_FAIR, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_FAIR, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);


set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_FAIR, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_FAIR, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_med"));
set_window_value(AT_FAIR, 3, AG_WINDOW_SFX_FRAME, 3);


set_window_value(AT_FAIR, 4, AG_WINDOW_TYPE, 2);
set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FAIR, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_FAIR, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_FAIR, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);


set_window_value(AT_FAIR, 5, AG_WINDOW_TYPE, 5);
set_window_value(AT_FAIR, 5, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FAIR, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_FAIR, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_FAIR, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_FAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 5);



var temp_attack = AT_FAIR;
var temp_num = 1;

set_num_hitboxes(temp_attack, 7);
set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 37);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -25);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 44);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 52);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 6);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 3);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 82);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 5);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 124);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, -2);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_clairen_hit_weak"));

global.zethit[temp_attack,temp_num+25] = 0;
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);


temp_num += 1;


set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 48);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -26);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 60);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 50);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 3);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 7);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 40);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(temp_attack, temp_num, HG_EFFECT, 11);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 125);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 33);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, -5);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_clairen_tip_med"));

global.zethit[temp_attack,temp_num+25] = 0;
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);


temp_num += 1;


set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 3);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 4);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 45);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -45);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 50);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 58);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 6);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 4);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 361);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 5);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 123);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 34);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, -6);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));

global.zethit[temp_attack,temp_num+25] = 0;
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_GROUP, 1);


temp_num += 1;


set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 4);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 4);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 62);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -45);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 60);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 50);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 3);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 7);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 40);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(temp_attack, temp_num, HG_EFFECT, 11);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 125);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 44);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, -4);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_clairen_tip_med"));

global.zethit[temp_attack,temp_num+25] = 0;
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_GROUP, 1);


temp_num += 1;


set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 5);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 12);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, 2);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 34);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 20);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 5);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 3);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 82);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 5);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 124);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, -2);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_clairen_hit_weak"));

global.zethit[temp_attack,temp_num+25] = 0;
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);


temp_num += 1;


set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 6);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 4);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 22);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -76);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 35);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 20);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 5);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 4);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 60);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 5);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 123);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 34);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, -6);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));

global.zethit[temp_attack,temp_num+25] = 0;
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_GROUP, 1);

temp_num += 1;


set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 7);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 4);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 22);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -12);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 35);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 10);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 5);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 4);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 60);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 5);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 123);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 34);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, -6);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));

global.zethit[temp_attack,temp_num+25] = 0;
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_GROUP, 1);
