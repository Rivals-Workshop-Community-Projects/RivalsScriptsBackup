set_attack_value(AT_FSTRONG, AG_CATEGORY, 0);
//set_attack_value(AT_FSTRONG, AG_SPRITE, asset_get("goat_fsmash"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 6);
set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FSTRONG, AG_OFF_LEDGE, 0);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_LANDING_LAG, 35);
//set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, asset_get("goat_fsmash_hurt"));


set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);


set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_absa_whip2"));
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME, 0);


set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_TYPE, 2);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_HAS_WHIFFLAG, 8);



var temp_attack = AT_FSTRONG;
var temp_num = 1;

set_num_hitboxes(temp_attack, 5);
set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 3);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 50);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -40);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 60);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 60);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 1);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 2);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 361);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 20);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
set_hitbox_value(temp_attack, temp_num, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(temp_attack, temp_num, HG_SDI_MULTIPLIER, -1);
set_hitbox_value(temp_attack, temp_num, HG_TECHABLE, 1);


temp_num += 1;

set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 3);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 50);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -40);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_GROUP, 1);


temp_num += 1;

set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 4);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 50);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -40);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_GROUP, 2);

temp_num += 1;

set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 4);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 50);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -40);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_GROUP, 3);


temp_num += 1;

set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 5);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 5);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 3);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 64);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -39);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 100);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 80);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 1);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 8);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 361);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 21);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_absa_harderhit"));
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_GROUP, 4);
