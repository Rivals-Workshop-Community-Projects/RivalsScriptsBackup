set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_AIR_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));
set_attack_value(AT_UAIR, AG_HURTBOX_AIR_SPRITE, sprite_get("uair_hurt"));
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 4);

set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 3);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 9);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_UAIR, 1);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 8);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -90);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 100);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 85);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX,  asset_get("sfx_zetter_downb"));
set_hitbox_value(AT_UAIR, 1, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_UAIR, 1, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_UAIR, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_UAIR, 1, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_UAIR, 1, HG_PROJECTILE_UNBASHABLE, 1);
