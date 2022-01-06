set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, asset_get("frog_fair_spr"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_OFF_LEDGE, 0);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, asset_get("frog_fair_hurt"));
set_attack_value(AT_FAIR, 18, 10);


set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FAIR, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_FAIR, 1, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_FAIR, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_FAIR, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 3);


set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FAIR, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_FAIR, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_FAIR, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_FAIR, 2, AG_WINDOW_HITPAUSE_FRAME, 0);


set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 5);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_FAIR, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_FAIR, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 6);



var temp_attack = AT_FAIR;
var temp_num = 1;

set_num_hitboxes(temp_attack, 3);
set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 4);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 28);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -25);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 50);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 88);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 2);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 8);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 30);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 304);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 5);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

global.zethit[temp_attack,temp_num+25] = 0;
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);


temp_num += 1;


set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 4);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 24);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -64);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 20);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 10);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 3);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 7);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 45);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 15);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

global.zethit[temp_attack,temp_num+25] = 0;
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);


temp_num += 1;


set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 3);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, -3);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, 19);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 25);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 25);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 8);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 9);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 280);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 305);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

global.zethit[temp_attack,temp_num+25] = 0;
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);
