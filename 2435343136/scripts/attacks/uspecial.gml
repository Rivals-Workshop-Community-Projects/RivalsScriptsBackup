set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
//set_attack_value(AT_USPECIAL, AG_SPRITE, asset_get("sword_uspecial_spr"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
//set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, asset_get("sword_uspecial_air_spr"));
//set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, asset_get("sword_uspecial_hurt"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 25);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, -7);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED, 5);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_clairen_uspecial_rise"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 2);



set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -7);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_clairen_uspecial_rise"));
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX_FRAME, 0);


set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_WHIFFLAG, 4);

set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, .5);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, .4);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_clairen_uspecial_swing"));
set_window_value(AT_USPECIAL, 4, AG_WINDOW_SFX_FRAME, 8);


set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 2);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, .5);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, .4);


set_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 25);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);



var temp_attack = AT_USPECIAL;
var temp_num = 1;

set_num_hitboxes(temp_attack, 8);
set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 68);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -6);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 102);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 126);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 1);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 1);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 70);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 3);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 123);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, -26);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_clairen_hit_weak"));
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);

temp_num += 1;


set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 68);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -6);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_GROUP, 1);

temp_num += 1;

set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 3);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 50);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -23);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 128);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 214);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 1);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 1);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 70);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 3);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 128);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 6);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, -35);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_clairen_hit_weak"));
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_GROUP, 2);

temp_num += 1;

set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 3);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 50);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -23);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_GROUP, 3);

temp_num += 1;

set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 5);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 17);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -81);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 122);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 110);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 1);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 1);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 70);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 3);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 123);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, -12);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_clairen_hit_weak"));
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_GROUP, 4);

temp_num += 1;

set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 5);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 17);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -81);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_GROUP, 5);

temp_num += 1;

set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 7);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 5);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 5);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 41);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -67);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 210);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 154);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 6);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 6);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 361);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 123);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 40);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, -46);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_GROUP, 6);

temp_num += 1;

set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 8);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 5);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 5);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 55);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -91);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 232);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 184);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 3);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 9);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 361);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(temp_attack, temp_num, HG_EFFECT, 11);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 125);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 42);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, -64);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_clairen_tip_med"));
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_GROUP, 6);
