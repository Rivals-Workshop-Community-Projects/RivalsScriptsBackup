set_attack_value(AT_UTHROW, AG_CATEGORY, 2);
set_attack_value(AT_UTHROW, AG_SPRITE, sprite_get("Nfspecial"));
set_attack_value(AT_UTHROW, AG_HURTBOX_SPRITE, sprite_get("Nfspecial_hurt"));
set_attack_value(AT_UTHROW, AG_OFF_LEDGE, 1);

set_attack_value(AT_UTHROW, AG_NUM_WINDOWS, 3);

set_window_value(AT_UTHROW, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_UTHROW, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_UTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_UTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_UTHROW, 1, AG_WINDOW_SFX_FRAME, 2);

//charge/hold
set_window_value(AT_UTHROW, 2, AG_WINDOW_LENGTH, 10000);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UTHROW, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_SFX, asset_get("sfx_ell_utilt_retract"));
set_window_value(AT_UTHROW, 2, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_UTHROW, 3, AG_WINDOW_LENGTH, 24);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_UTHROW, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTHROW, 3, AG_WINDOW_SFX, sound_get("gun_shoot"));
set_window_value(AT_UTHROW, 3, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_UTHROW, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_UTHROW, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.8);
set_window_value(AT_UTHROW, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.1);

set_num_hitboxes(AT_UTHROW, 1);

set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UTHROW, 1, HG_WINDOW, 3);
set_hitbox_value(AT_UTHROW, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UTHROW, 1, HG_LIFETIME, 60);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_UTHROW, 1, HG_WIDTH, 30);
set_hitbox_value(AT_UTHROW, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_UTHROW, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_UTHROW, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_UTHROW, 1, HG_ANGLE, 60);
set_hitbox_value(AT_UTHROW, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_UTHROW, 1, HG_SHAPE, 0);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTHROW, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_UTHROW, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_UTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_UTHROW, 1, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_SPRITE, sprite_get("Nfspecial_proj"));
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_ANIM_SPEED, 0.4);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_HSPEED, 12);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_IS_TRANSCENDENT, 0);
set_hitbox_value(AT_UTHROW, 1, HG_PROJECTILE_DESTROY_EFFECT, 0);