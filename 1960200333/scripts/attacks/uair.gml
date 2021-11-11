set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_UAIR, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_window_value(AT_UAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 11);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_UAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED, -2);
set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_UAIR, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.35);
set_window_value(AT_UAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));

set_window_value(AT_UAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UAIR, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.5);

set_window_value(AT_UAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 14);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_UAIR, 4, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UAIR, 5);

set_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 26);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -58);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 46);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 96);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 1, HG_SDI_MULTIPLIER, 1.15); //was 1.25
set_hitbox_value(AT_UAIR, 1, HG_DRIFT_MULTIPLIER, 1.5);
//set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 7); //horizontal knockback sends towards you to link into second hit
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 8);
//set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));

set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -80);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 56);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 56);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 2, HG_SDI_MULTIPLIER, 1.15); //was 1.25
set_hitbox_value(AT_UAIR, 2, HG_DRIFT_MULTIPLIER, 1.5);
//set_hitbox_value(AT_UAIR, 2, HG_ANGLE_FLIPPER, 7); 
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 6); //was 8
//set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_shovel_hit_med2"));

set_hitbox_value(AT_UAIR, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, 12);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -66);
set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 70);
set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 76);
set_hitbox_value(AT_UAIR, 3, HG_PRIORITY, 0.5);
set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_UAIR, 3, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 3, HG_SDI_MULTIPLIER, 1.15); //was 1.25
set_hitbox_value(AT_UAIR, 3, HG_DRIFT_MULTIPLIER, 1.5);
//set_hitbox_value(AT_UAIR, 3, HG_ANGLE_FLIPPER, 7); 
set_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK, 6); //was 8
//set_hitbox_value(AT_UAIR, 3, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UAIR, 3, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));

set_hitbox_value(AT_UAIR, 4, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_Y, -80);
set_hitbox_value(AT_UAIR, 4, HG_WIDTH, 56);
set_hitbox_value(AT_UAIR, 4, HG_HEIGHT, 56);
set_hitbox_value(AT_UAIR, 4, HG_PRIORITY, 0.5);
set_hitbox_value(AT_UAIR, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 4, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 4, HG_SDI_MULTIPLIER, 1.15); //was 1.25
set_hitbox_value(AT_UAIR, 4, HG_DRIFT_MULTIPLIER, 1.5);
//set_hitbox_value(AT_UAIR, 4, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_UAIR, 4, HG_BASE_KNOCKBACK, 6); //was 8
//set_hitbox_value(AT_UAIR, 4, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_UAIR, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UAIR, 4, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_UAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 4, HG_HIT_SFX, asset_get("sfx_shovel_hit_med2"));

set_hitbox_value(AT_UAIR, 5, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 5, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_UAIR, 5, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_Y, -80);
set_hitbox_value(AT_UAIR, 5, HG_WIDTH, 56);
set_hitbox_value(AT_UAIR, 5, HG_HEIGHT, 56);
set_hitbox_value(AT_UAIR, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_UAIR, 5, HG_ANGLE, 70); //was 60
set_hitbox_value(AT_UAIR, 5, HG_BASE_KNOCKBACK, 7.5);
set_hitbox_value(AT_UAIR, 5, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_UAIR, 5, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UAIR, 5, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_UAIR, 5, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 5, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy1"));
set_hitbox_value(AT_UAIR, 5, HG_DRIFT_MULTIPLIER, 1);

/*
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_GROUP, 3); //arm hitbox for 3rd hit
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 6, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 6, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_X, 6);
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_Y, -50);
set_hitbox_value(AT_UAIR, 6, HG_WIDTH, 30);
set_hitbox_value(AT_UAIR, 6, HG_HEIGHT, 60);
set_hitbox_value(AT_UAIR, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 6, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 6, HG_ANGLE, 85);
set_hitbox_value(AT_UAIR, 6, HG_ANGLE_FLIPPER, 7); 
set_hitbox_value(AT_UAIR, 6, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_UAIR, 6, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UAIR, 6, HG_BASE_HITPAUSE, 3.5);
set_hitbox_value(AT_UAIR, 6, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_UAIR, 6, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 6, HG_HIT_SFX, asset_get("sfx_shovel_hit_med2"));
*/