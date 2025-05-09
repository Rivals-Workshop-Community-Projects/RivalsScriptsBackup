set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_CATEGORY, 2);
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_window_value(AT_FTILT, 1, AG_WINDOW_TYPE, 1); //Start up
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_FTILT, 2, AG_WINDOW_TYPE, 1); //Going in for elbow
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED, 4);
set_window_value(AT_FTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX, sound_get("Ftilt_startup"));
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 3);
set_window_value(AT_FTILT, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 2);

set_window_value(AT_FTILT, 3, AG_WINDOW_TYPE, 1); //Hold hard elbow
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 20);

set_window_value(AT_FTILT, 4, AG_WINDOW_TYPE, 1); //Endlag miss
set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FTILT, 4, AG_WINDOW_GOTO, 6);

set_window_value(AT_FTILT, 5, AG_WINDOW_TYPE, 1); //Turn around and kick, with endlag
set_window_value(AT_FTILT, 5, AG_WINDOW_LENGTH, 30);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FTILT, 5, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_FTILT, 5, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FTILT, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FTILT, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 2);
set_window_value(AT_FTILT, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 5, AG_WINDOW_SFX, sound_get("Ftilt_Turnaround"));
set_window_value(AT_FTILT, 5, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_FTILT, 5, AG_WINDOW_GOTO, 6);

set_num_hitboxes(AT_FTILT, 3);

set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1); //one
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 5)
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 31);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -49);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 60);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 20);
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 80);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FTILT, 1, HG_HITSTUN_MULTIPLIER, 1.1);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 306);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, sound_get("Ftilt_elbow"));

set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1); //two
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 5);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW_CREATION_FRAME, 13);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 25);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -42);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 90);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 90);
set_hitbox_value(AT_FTILT, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 40);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FTILT, 2, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_FTILT, 2, HG_DRIFT_MULTIPLIER, 0.001);
set_hitbox_value(AT_FTILT, 2, HG_SDI_MULTIPLIER, 0.001);
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT_X_OFFSET, 19);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_ori_ustrong_launch"));
set_hitbox_value(AT_FTILT, 2, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_GROUP, -1);