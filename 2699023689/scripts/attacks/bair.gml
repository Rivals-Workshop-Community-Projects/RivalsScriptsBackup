set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, asset_get("bear_bair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_OFF_LEDGE, 0);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, asset_get("bear_bair_hurt"));
set_attack_value(AT_BAIR, 18, 6);
set_window_value(AT_BAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_BAIR, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_BAIR, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_ice_back_air"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 8);


set_window_value(AT_BAIR, 2, AG_WINDOW_TYPE, 2);
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_BAIR, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_BAIR, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_BAIR, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
/*
set_window_value(AT_BAIR, 2, AG_WINDOW_INVINCIBILITY, -1);
set_window_value(AT_BAIR, 2, 14, .6);
set_window_value(AT_BAIR, 2, 15, -6);
set_window_value(AT_BAIR, 2, 16, .6);
*/
set_window_value(AT_BAIR, 2, AG_WINDOW_INVINCIBILITY, 6);
set_window_value(AT_BAIR, 2, 14, 110);
set_window_value(AT_BAIR, 2, 15, .5);
set_window_value(AT_BAIR, 2, 16, 92);


set_window_value(AT_BAIR, 2, 17, 15);
set_window_value(AT_BAIR, 2, 18, 1.0);
set_window_value(AT_BAIR, 2, 19, 6);
set_window_value(AT_BAIR, 2, 20, .5);
set_window_value(AT_BAIR, 2, 21, 20);
set_window_value(AT_BAIR, 2, 22, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_HITPAUSE_FRAME, 0);
set_window_value(AT_BAIR, 2, 30, 1);
set_window_value(AT_BAIR, 2, 33, 4);
set_window_value(AT_BAIR, 2, 34, -32);
set_window_value(AT_BAIR, 2, 35, 0);
set_window_value(AT_BAIR, 2, 55, 0);
set_window_value(AT_BAIR, 2, 56, asset_get("sfx_burnapplied"));
set_window_value(AT_BAIR, 3, AG_WINDOW_TYPE, 5);
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_BAIR, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_BAIR, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 6);



var temp_attack = AT_BAIR;
var temp_num = 1;

set_num_hitboxes(temp_attack, 1);
set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 3);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, -30);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -35);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 120);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 60);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 2);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 9);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 140);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 9);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 26);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, -18);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_icehit_medium2"));
set_hitbox_value(temp_attack, temp_num, HG_ANGLE_FLIPPER, 6);

global.zethit[temp_attack,temp_num+25] = 2;
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);
