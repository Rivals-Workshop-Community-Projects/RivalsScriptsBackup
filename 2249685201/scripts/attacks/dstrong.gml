set_attack_value(AT_DSTRONG, AG_CATEGORY, 0);
//set_attack_value(AT_DSTRONG, AG_SPRITE, asset_get("goat_dsmash2"));


set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DSTRONG, AG_OFF_LEDGE, 0);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
//set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, asset_get("goat_dsmash_hurt"));


set_window_value(AT_DSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .15);


set_window_value(AT_DSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, 3);


set_window_value(AT_DSTRONG, 3, AG_WINDOW_TYPE, 2);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 21);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HITPAUSE_FRAME, 0);
set_window_value(AT_DSTRONG, 3, 33, 0);


set_window_value(AT_DSTRONG, 4, AG_WINDOW_TYPE, 5);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 7);


var temp_attack = AT_DSTRONG;
var temp_num = 1;


set_num_hitboxes(temp_attack, 5);
set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 3);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, -30);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -15);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 80);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 30);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 2);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 2);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 0);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 20);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));


set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(temp_attack, temp_num, HG_TECHABLE, 1);

temp_num += 1;

set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 3);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 30);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -15);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 80);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 30);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 2);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 2);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 180);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 20);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_blow_weak2"));


set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(temp_attack, temp_num, HG_TECHABLE, 1);

temp_num += 1;

set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 3);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, -30);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -15);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_GROUP, 2);

temp_num += 1;

set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 3);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 30);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -15);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_GROUP, 3);

temp_num += 1;

set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 5);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 3);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 17);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 4);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 0);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -20);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 130);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 40);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 8);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 5);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 35);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 20);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_absa_harderhit"));
set_hitbox_value(temp_attack, temp_num, HG_ANGLE_FLIPPER, 6);


set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_GROUP, 4);
