set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, asset_get("orca_nair"));


set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_OFF_LEDGE, 0);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_NAIR, AG_AIR_SPRITE, 0);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, asset_get("orca_nair_hurt"));
set_attack_value(AT_NAIR, 18, 4);
set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_NAIR, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_NAIR, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_NAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 1.0);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swish_medium"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 2);



set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 2);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_NAIR, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_NAIR, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_NAIR, 2, AG_WINDOW_HITPAUSE_FRAME, 0);
set_window_value(AT_NAIR, 2, AG_WINDOW_CUSTOM_GRAVITY, 0);



set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 3);
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 7);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_NAIR, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_NAIR, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 4);
set_window_value(AT_NAIR, 3, AG_WINDOW_CUSTOM_GRAVITY, 0);



var temp_attack = AT_NAIR;
var temp_num = 1;


set_num_hitboxes(temp_attack, 1);
set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 9);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, -4);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -35);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 75);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 75);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 1);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 6);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 361);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 149);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));
set_hitbox_value(temp_attack, temp_num, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(temp_attack, temp_num, HG_HIT_LOCKOUT, 5);
set_hitbox_value(temp_attack, temp_num, HG_FINAL_BASE_KNOCKBACK, 4);
