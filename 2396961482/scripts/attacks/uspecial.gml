set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);

set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 3);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_clairen_sword_deactivate"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 1);


set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -10);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
//set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_clairen_uspecial_swing"));

set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED, -2);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, -5);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_clairen_uspecial_swing"));



set_num_hitboxes(AT_USPECIAL, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 19);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -65);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 50);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 75);
set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, lanternfx);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_infinidagger"));
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_LOCKOUT, 10);


set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 8);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 19);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -65);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 60);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 75);
set_hitbox_value(AT_USPECIAL, 2, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 10);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 12);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, 1.5);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_EXTRA_CAMERA_SHAKE, 1.1);
set_hitbox_value(AT_USPECIAL, 2, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, lanternfx);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_infinidagger"));
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_LOCKOUT, 10);





