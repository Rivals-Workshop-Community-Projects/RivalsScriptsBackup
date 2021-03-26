set_attack_value(AT_NAIR, AG_CATEGORY, 1);
//set_attack_value(AT_NAIR, AG_SPRITE, asset_get("sword_nair_spr"));


set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_OFF_LEDGE, 0);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 6);
//set_attack_value(AT_NAIR, AG_AIR_SPRITE, 0);
//set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, asset_get("sword_nair_hurt"));
set_attack_value(AT_NAIR, 18, 8);
set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_NAIR, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_NAIR, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_clairen_spin"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 0);


set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 2);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NAIR, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_NAIR, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_NAIR, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);


set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 2);
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_NAIR, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_NAIR, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);



set_window_value(AT_NAIR, 4, AG_WINDOW_TYPE, 3);
set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 7);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_NAIR, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_NAIR, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_NAIR, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_NAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 4);



var temp_attack = AT_NAIR;
var temp_num = 1;

set_num_hitboxes(temp_attack, 12);
set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 6);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -53);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 98);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 98);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 6);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 1);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 45);//90);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 4);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 123);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_clairen_hit_weak"));
set_hitbox_value(temp_attack, temp_num, HG_ANGLE_FLIPPER, 6);//2);
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);

temp_num += 1;

set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 7);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -38);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_GROUP, 1);

temp_num += 1;

set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, -2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -33);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_GROUP, 2);

temp_num += 1;

set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 0);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -47);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_GROUP, 3);

temp_num += 1;

set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 6);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -53);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_GROUP, 4);

temp_num += 1; //600

set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, temp_num/100);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 3);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 4);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 9);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -33);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 78);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 78);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 6);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 3);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 60);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 128);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 28);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
set_hitbox_value(temp_attack, temp_num, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_GROUP, 5);




temp_num += 1;

set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, temp_num/100);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 9);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -69);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 118);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 90);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 3);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 7);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 361);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(temp_attack, temp_num, HG_EFFECT, 11);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 125);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, -26);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_clairen_tip_weak"));
set_hitbox_value(temp_attack, temp_num, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(temp_attack, temp_num, HG_HIT_LOCKOUT, 10);

temp_num += 1;



set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, temp_num/100);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 20);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -35);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 118);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 110);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 3);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 7);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 361);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(temp_attack, temp_num, HG_EFFECT, 11);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 125);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 25);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_clairen_tip_weak"));
set_hitbox_value(temp_attack, temp_num, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(temp_attack, temp_num, HG_HIT_LOCKOUT, 10);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_GROUP, 1);

temp_num += 1;



set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, temp_num/100);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, -5);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -18);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 110);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 92);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 3);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 7);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 361);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(temp_attack, temp_num, HG_EFFECT, 11);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 125);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, -25);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 13);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_clairen_tip_weak"));
set_hitbox_value(temp_attack, temp_num, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(temp_attack, temp_num, HG_HIT_LOCKOUT, 10);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_GROUP, 2);

temp_num += 1;



set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, temp_num/100);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, -12);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -54);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 116);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 90);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 3);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 7);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 361);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(temp_attack, temp_num, HG_EFFECT, 11);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 125);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, -26);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, -22);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_clairen_tip_weak"));
set_hitbox_value(temp_attack, temp_num, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(temp_attack, temp_num, HG_HIT_LOCKOUT, 10);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_GROUP, 3);

temp_num += 1;



set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, temp_num/100);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 9);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -69);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 118);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 90);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 3);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 7);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 361);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(temp_attack, temp_num, HG_EFFECT, 11);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 125);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, -26);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_clairen_tip_med"));
set_hitbox_value(temp_attack, temp_num, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(temp_attack, temp_num, HG_HIT_LOCKOUT, 10);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_GROUP, 4);

temp_num += 1;



set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, temp_num/100);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 3);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 4);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 17);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -20);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 115);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 102);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 3);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 8);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 45);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(temp_attack, temp_num, HG_EFFECT, 11);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 12);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .65);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 126);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 7);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 27);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_clairen_tip_med"));
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_GROUP, 5);
