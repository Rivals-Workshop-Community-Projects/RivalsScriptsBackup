set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 3);

set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, round(6 / (has_rune("G") + 1)));
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, sound_get("pistolshot"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, round(5 / (has_rune("G") + 1)));
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_NAIR, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, ground_friction);

set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NAIR, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_NAIR, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, ground_friction);

set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, round(12 + (has_rune("L") * 6) / (has_rune("G") + 1)));
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 0);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_NAIR, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, ground_friction);


set_num_hitboxes(AT_NAIR, 2);

//Melee
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW_CREATION_FRAME, round(4 / (has_rune("G") + 1)));
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, round(2 / (has_rune("G") + 1)));
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 46);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 35);
set_hitbox_value(AT_NAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, 0.25);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));
set_hitbox_value(AT_NAIR, 1, HG_EXTRA_CAMERA_SHAKE, -1);


//Bullet
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 0 - has_rune("L"));
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 25);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 68);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 20);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 20);
set_hitbox_value(AT_NAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 6.123);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 55);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NAIR, 2, HG_HITSTUN_MULTIPLIER, 0.75);
set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_SPRITE, sprite_get("cheeseBullet"));
set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("cheeseBulletEnd"));
set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_DESTROY_EFFECT, cheeseBulletEnd);
set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_HSPEED, 10);
set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_UNBASHABLE, 0);
set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_IS_TRANSCENDENT, 0);
set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_PLASMA_SAFE, 0);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, cheeseBulletEnd);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

