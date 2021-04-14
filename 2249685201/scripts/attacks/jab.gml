set_attack_value(AT_JAB, AG_CATEGORY, 0);
//set_attack_value(AT_JAB, AG_SPRITE, asset_get("goat_jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 4);
set_attack_value(AT_JAB, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_JAB, AG_OFF_LEDGE, 0);
//set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, asset_get("goat_jab_hurt"));


set_window_value(AT_JAB, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_JAB, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_JAB, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_absa_jab1"));
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 2);


set_window_value(AT_JAB, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_JAB, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_JAB, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);



set_window_value(AT_JAB, 3, AG_WINDOW_TYPE, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_JAB, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_JAB, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_JAB, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 0);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 0);
set_window_value(AT_JAB, 3, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_JAB, 3, AG_WINDOW_SFX, asset_get("sfx_absa_jab2"));
set_window_value(AT_JAB, 3, AG_WINDOW_SFX_FRAME, 3);


set_window_value(AT_JAB, 4, AG_WINDOW_TYPE, 3);
set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_JAB, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_JAB, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);



var temp_attack = AT_JAB;
var temp_num = 1;

set_num_hitboxes(temp_attack, 2);
set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 3);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 35);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -35);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 55);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 50);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 2);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 3);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 70);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 4);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 22);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 6);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_absa_singlezap2"));
set_hitbox_value(temp_attack, temp_num, HG_ANGLE_FLIPPER, 6);


set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_GROUP, -1);

temp_num += 1;

set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 3);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 3);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 35);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -35);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 55);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 50);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 1);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 4);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 361);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 5);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 22);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 6);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_absa_singlezap2"));
set_hitbox_value(temp_attack, temp_num, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_GROUP, -1);
