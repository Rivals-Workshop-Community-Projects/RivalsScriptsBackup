set_attack_value(AT_FTILT_2, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT_2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FTILT_2, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

//Whip Ftilt
set_window_value(AT_FTILT_2, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTILT_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT_2, 1, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_FTILT_2, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FTILT_2, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT_2, 2, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FTILT_2, 2, AG_WINDOW_HSPEED, 4);
set_window_value(AT_FTILT_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT_2, 2, AG_WINDOW_SFX, sound_get("sprj_nokonata_noko3"));
set_window_value(AT_FTILT_2, 2, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_FTILT_2, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTILT_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT_2, 3, AG_WINDOW_ANIM_FRAME_START, 12);
//set_window_value(AT_FTILT_2, 3, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_FTILT_2, 3, AG_WINDOW_SFX, asset_get("sfx_shovel_hit_med1"));
//set_window_value(AT_FTILT_2, 3, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_FTILT_2, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTILT_2, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT_2, 4, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_FTILT_2, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_FTILT_2, 5, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FTILT_2, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT_2, 5, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_FTILT_2, 5, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FTILT_2, 5, AG_WINDOW_HSPEED, -3);

set_num_hitboxes(AT_FTILT_2, 3);

//Whip Hit 1
set_hitbox_value(AT_FTILT_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FTILT_2, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FTILT_2, 1, HG_HITBOX_X, 85);
set_hitbox_value(AT_FTILT_2, 1, HG_HITBOX_Y, -37);
set_hitbox_value(AT_FTILT_2, 1, HG_WIDTH, 134);
set_hitbox_value(AT_FTILT_2, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_FTILT_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT_2, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FTILT_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_FTILT_2, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTILT_2, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FTILT_2, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FTILT_2, 1, HG_HITPAUSE_SCALING, .0);
set_hitbox_value(AT_FTILT_2, 1, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_FTILT_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FTILT_2, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FTILT_2, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FTILT_2, 1, HG_TECHABLE, 1);

//Whip Hit 2
set_hitbox_value(AT_FTILT_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT_2, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FTILT_2, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FTILT_2, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FTILT_2, 2, HG_HITBOX_X, 85);
set_hitbox_value(AT_FTILT_2, 2, HG_HITBOX_Y, -45);
set_hitbox_value(AT_FTILT_2, 2, HG_WIDTH, 134);
set_hitbox_value(AT_FTILT_2, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_FTILT_2, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT_2, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT_2, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_FTILT_2, 2, HG_ANGLE, 361);
set_hitbox_value(AT_FTILT_2, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTILT_2, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FTILT_2, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FTILT_2, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FTILT_2, 2, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_FTILT_2, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_FTILT_2, 2, HG_EXTRA_CAMERA_SHAKE, 2);

//Whip Hit 2 (Sweetspot)
set_hitbox_value(AT_FTILT_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT_2, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FTILT_2, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FTILT_2, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FTILT_2, 3, HG_HITBOX_X, 128);
set_hitbox_value(AT_FTILT_2, 3, HG_HITBOX_Y, -45);
set_hitbox_value(AT_FTILT_2, 3, HG_WIDTH, 45);
set_hitbox_value(AT_FTILT_2, 3, HG_HEIGHT, 45);
set_hitbox_value(AT_FTILT_2, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT_2, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT_2, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_FTILT_2, 3, HG_ANGLE, 110);
set_hitbox_value(AT_FTILT_2, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTILT_2, 3, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_FTILT_2, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FTILT_2, 3, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FTILT_2, 3, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_FTILT_2, 3, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_FTILT_2, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_FTILT_2, 3, HG_EXTRA_CAMERA_SHAKE, 2);