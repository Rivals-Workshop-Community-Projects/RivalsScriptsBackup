set_attack_value(AT_FAIR, AG_CATEGORY, 1);
//set_attack_value(AT_FAIR, AG_SPRITE, asset_get("goat_fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_OFF_LEDGE, 0);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 4);
//set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, asset_get("goat_fair_hurt"));
set_attack_value(AT_FAIR, 18, 4);


set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FAIR, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_FAIR, 1, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_FAIR, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_FAIR, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 6);


set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_FAIR, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_FAIR, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);


set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 5);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 13);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_FAIR, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_FAIR, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 7);



var temp_attack = AT_FAIR;
var temp_num = 1;

set_num_hitboxes(temp_attack, 2);




set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 67);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -31);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 6);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 6);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 8);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 12);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 361);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 12);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 197);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));

global.zethit[temp_attack,temp_num+25] = 4;
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(temp_attack, temp_num, HG_HITSTUN_MULTIPLIER, .9);



temp_num += 1;

set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 3);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 45);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -32);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 70);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 50);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 2);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 6);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 361);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 5);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 5);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(temp_attack, temp_num, HG_ANGLE_FLIPPER, 6);

global.zethit[temp_attack,temp_num+25] = 0;
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(temp_attack, temp_num, HG_HITSTUN_MULTIPLIER, .85);


