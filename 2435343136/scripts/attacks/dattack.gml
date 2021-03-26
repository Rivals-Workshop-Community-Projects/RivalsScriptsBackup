set_attack_value(AT_DATTACK, AG_CATEGORY, 2);
//set_attack_value(AT_DATTACK, AG_SPRITE, asset_get("sword_dattack_spr"));

set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_AIR_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DATTACK, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_DATTACK, AG_OFF_LEDGE, 1);
//set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, asset_get("sword_dattack_hurt"));


set_window_value(AT_DATTACK, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, -22);
set_window_value(AT_DATTACK, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_DATTACK, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .7);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_strong"));
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, 11);


set_window_value(AT_DATTACK, 2, AG_WINDOW_TYPE, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 9);
set_window_value(AT_DATTACK, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_DATTACK, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_strong"));
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX_FRAME, 0);



set_window_value(AT_DATTACK, 3, AG_WINDOW_TYPE, 3);
set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_WHIFFLAG, 4);



var temp_attack = AT_DATTACK;
var temp_num = 1;

set_num_hitboxes(temp_attack, 6);
set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 4);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 42);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -24);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 74);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 46);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 7);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 6);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 361);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 123);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
set_hitbox_value(temp_attack, temp_num, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);


temp_num += 1;


set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 4);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 6);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -45);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 68);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 60);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 6);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 6);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 361);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 123);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
set_hitbox_value(temp_attack, temp_num, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);


temp_num += 1;


set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 3);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 4);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 68);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -25);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 80);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 54);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 4);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 9);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 110);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .25);
set_hitbox_value(temp_attack, temp_num, HG_EFFECT, 11);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 126);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 4);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_clairen_tip_med"));
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);


temp_num += 1;


set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 4);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 4);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 45);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -54);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 70);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 40);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 3);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 9);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 110);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .25);
set_hitbox_value(temp_attack, temp_num, HG_EFFECT, 11);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 126);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, -4);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_clairen_tip_med"));
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);


temp_num += 1;


set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 5);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 4);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 13);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -68);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 70);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 40);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 2);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 9);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 110);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .25);
set_hitbox_value(temp_attack, temp_num, HG_EFFECT, 11);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 126);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, -4);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_clairen_tip_med"));
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);


temp_num += 1;


set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 6);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 4);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, -15);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -79);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 34);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 34);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 1);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 9);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 110);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(temp_attack, temp_num, HG_EFFECT, 11);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 126);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_clairen_tip_med"));
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);
