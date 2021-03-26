set_attack_value(AT_DAIR, AG_CATEGORY, 1);
//set_attack_value(AT_DAIR, AG_SPRITE, asset_get("sword_dair_spr"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_OFF_LEDGE, 0);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 10);
//set_attack_value(AT_DAIR, AG_AIR_SPRITE, 0);
//set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, asset_get("sword_dair_hurt"));
set_attack_value(AT_DAIR, 18, 12);


set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_DAIR, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_DAIR, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_mega_delayed"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 1);


set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_DAIR, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_DAIR, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);


set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 2);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_DAIR, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_DAIR, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 7);



var temp_attack = AT_DAIR;
var temp_num = 1;

set_num_hitboxes(temp_attack, 4);
set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 3);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, -30);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -25);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 48);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 108);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 6);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 7);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 270);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .45);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 124);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 3);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 32);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));

global.zethit[temp_attack,temp_num+25] = 2;
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);

temp_num += 1;

set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 3);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, -7);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, 19);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 76);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 76);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 3);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 12);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 280);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(temp_attack, temp_num, HG_EFFECT, 11);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 12);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 127);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));

global.zethit[temp_attack,temp_num+25] = 2;
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);


temp_num += 1;


set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 3);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 3);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 30);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, 14);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 60);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 62);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 6);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 5);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 270);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 5);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 128);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_clairen_hit_weak"));

global.zethit[temp_attack,temp_num+25] = 2;
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);

temp_num += 1;

set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 4);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 3);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 40);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, 19);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 78);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 74);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 3);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 12);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 280);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(temp_attack, temp_num, HG_EFFECT, 11);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 12);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 127);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 22);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 13);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));

global.zethit[temp_attack,temp_num+25] = 2;
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);
