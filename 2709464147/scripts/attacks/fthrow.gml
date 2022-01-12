set_attack_value(AT_FTHROW, AG_CATEGORY, 2);
set_attack_value(AT_FTHROW, AG_SPRITE, sprite_get("fthrow"));
set_attack_value(AT_FTHROW, AG_AIR_SPRITE, sprite_get("fthrow_air"));
set_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE, sprite_get("fthrow_hurt"));
set_attack_value(AT_FTHROW, AG_HURTBOX_AIR_SPRITE, sprite_get("fthrow_air_hurt"));
set_attack_value(AT_FTHROW, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FTHROW, AG_LANDING_LAG, 8);
set_attack_value(AT_FTHROW, AG_USES_CUSTOM_GRAVITY, 1);

set_attack_value(AT_FTHROW, AG_NUM_WINDOWS, 4);
set_window_value(AT_FTHROW, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTHROW, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.2);
set_window_value(AT_FTHROW, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.4);
set_window_value(AT_FTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_FTHROW, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FTHROW, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.2);
set_window_value(AT_FTHROW, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.4);

set_window_value(AT_FTHROW, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FTHROW, 4, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FTHROW, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FTHROW, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.3);


set_num_hitboxes(AT_FTHROW, 1);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTHROW, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_X, 54);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_FTHROW, 1, HG_WIDTH, 86);
set_hitbox_value(AT_FTHROW, 1, HG_HEIGHT, 74);
set_hitbox_value(AT_FTHROW, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FTHROW, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FTHROW, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_FTHROW, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_KNOCKBACK, 6.6);
set_hitbox_value(AT_FTHROW, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FTHROW, 1, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_FTHROW, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FTHROW, 1, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_FTHROW, 1, HG_IGNORES_PROJECTILES, 1);

