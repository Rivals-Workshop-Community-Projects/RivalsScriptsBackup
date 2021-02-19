set_attack_value(6, AG_SPRITE, sprite_get("utilt"));
set_attack_value(6, AG_AIR_SPRITE, sprite_get(""));
set_attack_value(6, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));
set_attack_value(6, AG_HURTBOX_AIR_SPRITE, sprite_get(""));

set_attack_value(6, AG_NUM_WINDOWS, 3);
set_window_value(6, 1, AG_WINDOW_LENGTH, 9);
set_window_value(6, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(6, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(6, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(6, 1, AG_WINDOW_SFX_FRAME, 1);
set_window_value(6, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(6, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(6, 1, AG_WINDOW_CANCEL_TYPE, 69);
set_window_value(6, 1, AG_WINDOW_CANCEL_FRAME, 4);

set_window_value(6, 2, AG_WINDOW_LENGTH, 9);
set_window_value(6, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(6, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(6, 3, AG_WINDOW_LENGTH, 9);
set_window_value(6, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(6, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(6, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(6, 3, AG_WINDOW_CANCEL_TYPE, 69);
set_window_value(6, 3, AG_WINDOW_CANCEL_FRAME, 4);

set_num_hitboxes(6, 3);
set_hitbox_value(6, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(6, 1, HG_WINDOW, 2);
set_hitbox_value(6, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(6, 1, HG_LIFETIME, 3);
set_hitbox_value(6, 1, HG_HITBOX_X, 32);
set_hitbox_value(6, 1, HG_HITBOX_Y, -48);
set_hitbox_value(6, 1, HG_WIDTH, 53);
set_hitbox_value(6, 1, HG_HEIGHT, 61);
set_hitbox_value(6, 1, HG_PRIORITY, 1);
set_hitbox_value(6, 1, HG_DAMAGE, 7);
set_hitbox_value(6, 1, HG_ANGLE, 75);
set_hitbox_value(6, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(6, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(6, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(6, 1, HG_HITPAUSE_SCALING, 0.25);
set_hitbox_value(6, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(6, 1, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(6, 1, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(6, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(6, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"))
set_hitbox_value(6, 1, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(6, 1, HG_PROJECTILE_UNBASHABLE, 1);

set_hitbox_value(6, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(6, 2, HG_WINDOW, 2);
set_hitbox_value(6, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(6, 2, HG_LIFETIME, 3);
set_hitbox_value(6, 2, HG_HITBOX_X, 12);
set_hitbox_value(6, 2, HG_HITBOX_Y, -68);
set_hitbox_value(6, 2, HG_WIDTH, 65);
set_hitbox_value(6, 2, HG_HEIGHT, 76);
set_hitbox_value(6, 2, HG_PRIORITY, 1);
set_hitbox_value(6, 2, HG_DAMAGE, 6);
set_hitbox_value(6, 2, HG_ANGLE, 90);
set_hitbox_value(6, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(6, 2, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(6, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(6, 2, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(6, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(6, 2, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(6, 2, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(6, 2, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(6, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"))
set_hitbox_value(6, 2, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(6, 2, HG_PROJECTILE_UNBASHABLE, 1);

set_hitbox_value(6, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(6, 3, HG_WINDOW, 2);
set_hitbox_value(6, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(6, 3, HG_LIFETIME, 3);
set_hitbox_value(6, 3, HG_HITBOX_X, -30);
set_hitbox_value(6, 3, HG_HITBOX_Y, -66);
set_hitbox_value(6, 3, HG_WIDTH, 70);
set_hitbox_value(6, 3, HG_HEIGHT, 68);
set_hitbox_value(6, 3, HG_PRIORITY, 1);
set_hitbox_value(6, 3, HG_DAMAGE, 8);
set_hitbox_value(6, 3, HG_ANGLE, 105);
set_hitbox_value(6, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(6, 3, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(6, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(6, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(6, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(6, 3, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(6, 3, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(6, 3, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(6, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"))
set_hitbox_value(6, 3, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(6, 3, HG_PROJECTILE_UNBASHABLE, 1);

