set_attack_value(AT_FTILT, AG_CATEGORY, 0);
//set_attack_value(AT_FTILT, AG_SPRITE, asset_get("sword_ftilt_spr"));


set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FTILT, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_FTILT, AG_OFF_LEDGE, 0);
set_attack_value(AT_FTILT, AG_LANDING_LAG, 0);
//set_attack_value(AT_FTILT, AG_AIR_SPRITE, 0);
//set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, asset_get("sword_ftilt_hurt"));
set_window_value(AT_FTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_FTILT, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_FTILT, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_FTILT, 1, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_med"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 6);


set_window_value(AT_FTILT, 2, AG_WINDOW_TYPE, 2);
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FTILT, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_FTILT, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_FTILT, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);


set_window_value(AT_FTILT, 3, AG_WINDOW_TYPE, 3);
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_FTILT, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_FTILT, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 5);
set_window_value(AT_FTILT, 3, AG_WINDOW_CUSTOM_GRAVITY, 0);



var temp_attack = AT_FTILT;
var temp_num = 1;

set_num_hitboxes(temp_attack, 2);
set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 4);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 58);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -33);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 92);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 72);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 6);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 7);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 361);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 123);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
set_hitbox_value(temp_attack, temp_num, HG_EXTRA_CAMERA_SHAKE, 2);
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);


temp_num += 1;


set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 4);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 75);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -35);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 104);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 74);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 3);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 9);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 40);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(temp_attack, temp_num, HG_EFFECT, 11);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 125);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 45);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_clairen_tip_med"));
set_hitbox_value(temp_attack, temp_num, HG_EXTRA_CAMERA_SHAKE, 2);
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);
