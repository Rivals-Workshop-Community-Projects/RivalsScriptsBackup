set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_AIR_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
set_attack_value(AT_USTRONG, AG_HURTBOX_AIR_SPRITE, sprite_get("ustrong_hurt"));
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);

set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 3);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 3);


set_num_hitboxes(AT_USTRONG, 1);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -75);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 50);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USTRONG, 1, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_USTRONG, 1, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, lanternfx);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_infinidagger"));
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -30);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, -30);

