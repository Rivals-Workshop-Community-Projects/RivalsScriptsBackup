set_attack_value(AT_UTILT, AG_CATEGORY, 0);
//set_attack_value(AT_UTILT, AG_SPRITE, asset_get("sword_utilt_spr"));


set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UTILT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_UTILT, AG_OFF_LEDGE, 0);
//set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, asset_get("sword_utilt_hurt"));


set_window_value(AT_UTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_UTILT, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_UTILT, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_strong"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 3);



set_window_value(AT_UTILT, 2, AG_WINDOW_TYPE, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UTILT, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_UTILT, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_UTILT, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);


set_window_value(AT_UTILT, 3, AG_WINDOW_TYPE, 3);
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 17);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_UTILT, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_UTILT, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);



var temp_attack = AT_UTILT;
var temp_num = 1;

set_num_hitboxes(temp_attack, 4);
set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 3);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, -30);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -50);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 80);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 104);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 6);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 7);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 105);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 128);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, -16);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
set_hitbox_value(temp_attack, temp_num, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);

temp_num += 1;


set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 3);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, -41);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -58);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 91);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 122);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 3);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 10);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 105);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(temp_attack, temp_num, HG_EFFECT, 11);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 126);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, -30);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, -32);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_clairen_tip_med"));
set_hitbox_value(temp_attack, temp_num, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);

temp_num += 1;

set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 3);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 3);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 5);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -52);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 112);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 108);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 6);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 7);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 75);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 123);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
set_hitbox_value(temp_attack, temp_num, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);

temp_num += 1;


set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 4);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 3);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 13);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -62);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 128);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 128);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 3);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 10);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 75);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(temp_attack, temp_num, HG_EFFECT, 11);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 125);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, -30);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, -32);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_clairen_tip_med"));
set_hitbox_value(temp_attack, temp_num, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);
