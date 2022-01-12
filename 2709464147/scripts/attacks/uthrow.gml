set_attack_value(AT_UTHROW, AG_CATEGORY, 2);
set_attack_value(AT_UTHROW, AG_SPRITE, sprite_get("uthrow"));
set_attack_value(AT_UTHROW, AG_AIR_SPRITE, sprite_get("uthrow_air"));
set_attack_value(AT_UTHROW, AG_HURTBOX_SPRITE, sprite_get("uthrow_hurt"));
set_attack_value(AT_UTHROW, AG_HURTBOX_AIR_SPRITE, sprite_get("uthrow_hurt"));
set_attack_value(AT_UTHROW, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UTHROW, AG_LANDING_LAG, 8);
set_attack_value(AT_UTHROW, AG_USES_CUSTOM_GRAVITY, 1);

set_attack_value(AT_UTHROW, AG_NUM_WINDOWS, 6);
set_window_value(AT_UTHROW, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_UTHROW, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTHROW, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.2);
set_window_value(AT_UTHROW, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.4);

set_window_value(AT_UTHROW, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UTHROW, 2, AG_WINDOW_VSPEED, -11);
set_window_value(AT_UTHROW, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_SFX, asset_get("sfx_kragg_roll_start"));
set_window_value(AT_UTHROW, 2, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.2);
set_window_value(AT_UTHROW, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.4);
set_window_value(AT_UTHROW, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.3);

set_window_value(AT_UTHROW, 3, AG_WINDOW_LENGTH, 120);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UTHROW, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_UTHROW, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.2);
set_window_value(AT_UTHROW, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.4);
set_window_value(AT_UTHROW, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.67);
set_window_value(AT_UTHROW, 3, AG_WINDOW_GOTO, 9);

set_window_value(AT_UTHROW, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTHROW, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UTHROW, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.6);

set_window_value(AT_UTHROW, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UTHROW, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTHROW, 5, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_UTHROW, 6, AG_WINDOW_LENGTH, 5);
set_window_value(AT_UTHROW, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTHROW, 6, AG_WINDOW_ANIM_FRAME_START, 6);


set_num_hitboxes(AT_UTHROW, 2);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTHROW, 1, HG_WINDOW, 4);
set_hitbox_value(AT_UTHROW, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_Y, -78);
set_hitbox_value(AT_UTHROW, 1, HG_WIDTH, 60);
set_hitbox_value(AT_UTHROW, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_UTHROW, 1, HG_SHAPE, 2);
set_hitbox_value(AT_UTHROW, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_UTHROW, 1, HG_DAMAGE, 36);
set_hitbox_value(AT_UTHROW, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_UTHROW, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_UTHROW, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_UTHROW, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_UTHROW, 1, HG_IGNORES_PROJECTILES, 1);

set_hitbox_value(AT_UTHROW, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTHROW, 2, HG_WINDOW, 4);
set_hitbox_value(AT_UTHROW, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_UTHROW, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTHROW, 2, HG_HITBOX_Y, -24);
set_hitbox_value(AT_UTHROW, 2, HG_WIDTH, 110);
set_hitbox_value(AT_UTHROW, 2, HG_HEIGHT, 48);
set_hitbox_value(AT_UTHROW, 2, HG_SHAPE, 2);
set_hitbox_value(AT_UTHROW, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_UTHROW, 2, HG_DAMAGE, 12);
set_hitbox_value(AT_UTHROW, 2, HG_ANGLE, 45);
set_hitbox_value(AT_UTHROW, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_UTHROW, 2, HG_BASE_KNOCKBACK, 6.6);
set_hitbox_value(AT_UTHROW, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_UTHROW, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_UTHROW, 2, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_UTHROW, 2, HG_VISUAL_EFFECT, 155 );

