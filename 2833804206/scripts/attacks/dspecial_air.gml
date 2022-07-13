set_attack_value(AT_DSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_AIR, AG_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("dspecial_air_hurt"));
set_attack_value(AT_DSPECIAL_AIR, AG_USES_CUSTOM_GRAVITY, 1);

set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 3);

set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX, asset_get("sfx_ell_utilt_retract"));
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.6);

set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 24);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.5);

set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.8);

set_num_hitboxes(AT_DSPECIAL_AIR, 5);

set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_Y, 20);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WIDTH, 50);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_VISUAL_EFFECT, vfx_oil_small);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_waterhit_weak"));
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_Y, 20);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_Y, 20);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HITBOX_Y, 20);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_WIDTH, 60);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_ANGLE, -90);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HITBOX_GROUP, 4);

//invisible hitboxes for ground oil coverage
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_WINDOW, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_LIFETIME, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_WIDTH, 35);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_HEIGHT, 35);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_PRIORITY, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_DAMAGE, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_ANGLE, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_VISUAL_EFFECT, 1);

set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_PROJECTILE_SPRITE, sprite_get("invis_sprite"));
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_PROJECTILE_VSPEED, 12);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_PROJECTILE_DESTROY_EFFECT, 1);