set_attack_value(AT_USPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("uspecial2"));
set_attack_value(AT_USPECIAL_2, AG_AIR_SPRITE, sprite_get("uspecial2"));
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("uspecial2_hurt"));
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_AIR_SPRITE, sprite_get("uspecial2_hurt"));
set_attack_value(AT_USPECIAL_2, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_USPECIAL_2, AG_OFF_LEDGE, 1);


set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 3);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
//set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_VSPEED, -5);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_clairen_uspecial_swing"));
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HSPEED, 5);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);


set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 10);
//set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));
//set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_SFX_FRAME, 6);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED, 3);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, -8);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);
//set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HAS_WHIFFLAG, 1);

//set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_VSPEED_TYPE, 1);
//set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_VSPEED, -1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 8);





set_num_hitboxes(AT_USPECIAL_2, 3);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_Y, -15);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WIDTH, 95);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HEIGHT, 85);
set_hitbox_value(AT_USPECIAL_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_USPECIAL_2, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE, 45);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_KNOCKBACK, 4);
//set_hitbox_value(AT_USPECIAL_2, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_EXTRA_CAMERA_SHAKE, 1.1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT, lanternfx);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
//set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_LOCKOUT, 10);


set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_Y, -15);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WIDTH, 95);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HEIGHT, 85);
set_hitbox_value(AT_USPECIAL_2, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL_2, 2, HG_PRIORITY, 10);
set_hitbox_value(AT_USPECIAL_2, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_ANGLE, 45);
set_hitbox_value(AT_USPECIAL_2, 2, HG_BASE_KNOCKBACK, 4);
//set_hitbox_value(AT_USPECIAL_2, 2, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_EXTRA_CAMERA_SHAKE, 1.1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_VISUAL_EFFECT, lanternfx);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
//set_hitbox_value(AT_USPECIAL_2, 2, HG_HIT_LOCKOUT, 10);


set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USPECIAL_2, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_Y, -15);
set_hitbox_value(AT_USPECIAL_2, 3, HG_WIDTH, 95);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HEIGHT, 85);
set_hitbox_value(AT_USPECIAL_2, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL_2, 3, HG_PRIORITY, 10);
set_hitbox_value(AT_USPECIAL_2, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_USPECIAL_2, 3, HG_ANGLE, 45);
set_hitbox_value(AT_USPECIAL_2, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USPECIAL_2, 3, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_EXTRA_CAMERA_SHAKE, 1.1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_VISUAL_EFFECT, lanternfx);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HIT_SFX, asset_get("sfx_clairen_fspecial_slash"));
set_hitbox_value(AT_USPECIAL_2, 3, HG_HIT_LOCKOUT, 10);
