set_attack_value(AT_USPECIAL_GROUND, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_GROUND, AG_SPRITE, sprite_get("uspecial_ground"));
set_attack_value(AT_USPECIAL_GROUND, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL_GROUND, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_USPECIAL_GROUND, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_USPECIAL_GROUND, AG_LANDING_LAG, 50);

set_attack_value(AT_USPECIAL_GROUND, AG_NUM_WINDOWS, 3);

set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_SFX, sound_get("SPRAYCAN"));
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_SFX, sound_get("SPRAYFIR"));

set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_num_hitboxes(AT_USPECIAL_GROUND, 1);

set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_LIFETIME, 15);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_Y, -38);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_WIDTH, 50);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_SPRITE, sprite_get("fire_effect"));
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_ANIM_SPEED, 0.9);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_HSPEED, 7);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_EFFECT, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_DESTROY_EFFECT, 3);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HIT_SFX, asset_get("sfx_zetter_fireball_fire"));
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_PARRY_STUN, 1);