set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 5);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

set_window_value(AT_UTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_UTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_light2"));
set_window_value(AT_UTILT, 2, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_UTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UTILT, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_CANCEL_FRAME, 1);

set_window_value(AT_UTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_UTILT, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_med2"));

set_window_value(AT_UTILT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_UTILT, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UTILT,6);

//first hit
set_hitbox_value(AT_UTILT, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -17);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 0);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 0);
set_hitbox_value(AT_UTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 20);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_light2"));
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 1, HG_HIT_LOCKOUT, 6);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 3);
//left
set_hitbox_value(AT_UTILT, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -18);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, -35);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 50);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_UTILT, 2, HG_SHAPE, 2);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 60);
//set_hitbox_value(AT_UTILT, 2, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 6);
//set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_shovel_hit_light2"));
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UTILT, 2, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 2);
//right
set_hitbox_value(AT_UTILT, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -18);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, 30);
set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 50);
set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_UTILT, 3, HG_SHAPE, 2);
set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 120);
//set_hitbox_value(AT_UTILT, 3, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 6);
//set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, asset_get("sfx_shovel_hit_light2"));
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UTILT, 3, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 2);



set_hitbox_value(AT_UTILT, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW, 4);
set_hitbox_value(AT_UTILT, 4, HG_LIFETIME, 5);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_Y, -55);
set_hitbox_value(AT_UTILT, 4, HG_WIDTH, 60);
set_hitbox_value(AT_UTILT, 4, HG_HEIGHT, 60);
set_hitbox_value(AT_UTILT, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_UTILT, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_UTILT, 4, HG_ANGLE, 95);
set_hitbox_value(AT_UTILT, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UTILT, 4, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_UTILT, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 4, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_UTILT, 4, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UTILT, 4, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy2"));
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_GROUP, 1);

//leftBIG
set_hitbox_value(AT_UTILT, 5, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 5, HG_WINDOW, 4);
//set_hitbox_value(AT_UTILT, 6, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_UTILT, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_Y, -40);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_X, -35);
set_hitbox_value(AT_UTILT, 5, HG_WIDTH, 40);
set_hitbox_value(AT_UTILT, 5, HG_HEIGHT, 60);
set_hitbox_value(AT_UTILT, 5, HG_SHAPE, 2);
set_hitbox_value(AT_UTILT, 5, HG_PRIORITY, 5);
set_hitbox_value(AT_UTILT, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_UTILT, 5, HG_ANGLE, 40);
//set_hitbox_value(AT_UTILT, 3, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_UTILT, 5, HG_BASE_KNOCKBACK, 7);
//set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_UTILT, 5, HG_BASE_HITPAUSE, 4);
//set_hitbox_value(AT_UTILT, 6, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_UTILT, 5, HG_HIT_SFX, asset_get("sfx_shovel_hit_light2"));
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_UTILT, 5, HG_HIT_LOCKOUT, 3);

//rightBIG
set_hitbox_value(AT_UTILT, 6, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 6, HG_WINDOW, 4);
//set_hitbox_value(AT_UTILT, 6, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_UTILT, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_Y, -40);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_X, 35);
set_hitbox_value(AT_UTILT, 6, HG_WIDTH, 40);
set_hitbox_value(AT_UTILT, 6, HG_HEIGHT, 60);
set_hitbox_value(AT_UTILT, 6, HG_SHAPE, 2);
set_hitbox_value(AT_UTILT, 6, HG_PRIORITY, 5);
set_hitbox_value(AT_UTILT, 6, HG_DAMAGE, 3);
set_hitbox_value(AT_UTILT, 6, HG_ANGLE, 140);
//set_hitbox_value(AT_UTILT, 3, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_UTILT, 6, HG_BASE_KNOCKBACK, 7);
//set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_UTILT, 6, HG_BASE_HITPAUSE, 4);
//set_hitbox_value(AT_UTILT, 6, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_UTILT, 6, HG_HIT_SFX, asset_get("sfx_shovel_hit_light2"));
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_UTILT, 6, HG_HIT_LOCKOUT, 3);