set_attack_value(AT_DTILT, AG_CATEGORY, 0);
//set_attack_value(AT_DTILT, AG_SPRITE, asset_get("sword_dtilt_spr"));


set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DTILT, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_DTILT, AG_OFF_LEDGE, 0);
set_attack_value(AT_DTILT, AG_LANDING_LAG, 0);
//set_attack_value(AT_DTILT, AG_AIR_SPRITE, 0);
//set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, asset_get("sword_dtilt_hurt"));
set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_DTILT, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_DTILT, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_DTILT, 1, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_clairen_poke_med"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 2);


set_window_value(AT_DTILT, 2, AG_WINDOW_TYPE, 2);
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DTILT, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_DTILT, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_DTILT, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);


set_window_value(AT_DTILT, 3, AG_WINDOW_TYPE, 3);
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 11);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_DTILT, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_DTILT, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 4);
set_window_value(AT_DTILT, 3, AG_WINDOW_CUSTOM_GRAVITY, 0);



var temp_attack = AT_DTILT;
var temp_num = 1;

set_num_hitboxes(temp_attack, 2);
set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 63);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -11);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 76);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 26);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 6);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 5);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 361);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 124);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
set_hitbox_value(temp_attack, temp_num, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);


temp_num += 1;


set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 117);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -9);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 34);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 22);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 3);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 9);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 32);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(temp_attack, temp_num, HG_EFFECT, 11);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 125);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 6);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_clairen_tip_med"));
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);
