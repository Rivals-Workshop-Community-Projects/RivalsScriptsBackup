set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 4);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));
set_attack_value(AT_JAB, AG_CATEGORY, 0);
set_attack_value(AT_JAB, AG_NO_PARRY_STUN, 1);

//Startup
set_window_value(AT_JAB, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, round(6 / (has_rune("G") + 1)));
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAME_START, 1);
//set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_JAB, 1, AG_WINDOW_SFX, sound_get("pistolstart2"));
//set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 0);

//Charge
set_window_value(AT_JAB, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 33);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 11);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 7);

//Postcharge
set_window_value(AT_JAB, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, round(15 / (has_rune("G") + 1)));
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 18);

//Small Endlag
set_window_value(AT_JAB, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 24);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_WHIFFLAG, 0);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_JAB, 4, AG_WINDOW_SFX_FRAME, 2);

//Big Postcharge
set_window_value(AT_JAB, 5, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, round(18 / (has_rune("G") + 1)));
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 18);



set_num_hitboxes(AT_JAB, 3);

//Melee
set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW_CREATION_FRAME, round(4 / (has_rune("G") + 1)));
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, round(2 / (has_rune("G") + 1)));
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 46);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 60);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 35);
set_hitbox_value(AT_JAB, 1, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 30);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 1, HG_HITPAUSE_SCALING, 0.25);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));
set_hitbox_value(AT_JAB, 1, HG_EXTRA_CAMERA_SHAKE, -1);

//Small Bullet
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 3);
set_hitbox_value(AT_JAB, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 25);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 65);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -33);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 20);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 20);
set_hitbox_value(AT_JAB, 2, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 6.123);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 55);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_JAB, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_JAB, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_SPRITE, sprite_get("cheeseBullet"));
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("cheeseBullet"));
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_DESTROY_EFFECT, cheeseBulletEnd);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_HSPEED, 10);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_UNBASHABLE, 0);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_IS_TRANSCENDENT, 0);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_PLASMA_SAFE, 0);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, cheeseBulletEnd);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

//Big Bullet
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 3);
set_hitbox_value(AT_JAB, 3, HG_WINDOW_CREATION_FRAME, -1 + has_rune("L"));
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 48);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 75);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -33);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 30);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 30);
set_hitbox_value(AT_JAB, 3, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 7.123);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 50);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_JAB, 3, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_JAB, 3, HG_HITPAUSE_SCALING, 0.25);
set_hitbox_value(AT_JAB, 3, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_SPRITE, sprite_get("cheeseBulletBig"));
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("cheeseBulletBig"));
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_DESTROY_EFFECT, cheeseBulletEnd);
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_ANIM_SPEED, 0.25);
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_HSPEED, 2.5);
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_UNBASHABLE, 0);
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_IS_TRANSCENDENT, 0);
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_PLASMA_SAFE, 0);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT, cheeseBulletEnd);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

//Bullet death
set_hitbox_value(AT_JAB, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_JAB, 4, HG_WINDOW, 0);
set_hitbox_value(AT_JAB, 4, HG_WINDOW_CREATION_FRAME, -1);
set_hitbox_value(AT_JAB, 4, HG_LIFETIME, 60);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_Y, 0);
set_hitbox_value(AT_JAB, 4, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 4, HG_PRIORITY, 0);
set_hitbox_value(AT_JAB, 4, HG_DAMAGE, 0);
set_hitbox_value(AT_JAB, 4, HG_ANGLE, 50);
set_hitbox_value(AT_JAB, 4, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_JAB, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_JAB, 4, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_JAB, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_JAB, 4, HG_HITSTUN_MULTIPLIER, 0.1);
set_hitbox_value(AT_JAB, 4, HG_PROJECTILE_SPRITE, sprite_get("cheeseBulletBigDead"));
set_hitbox_value(AT_JAB, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_JAB, 4, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("cheeseBulletBigDead"));
set_hitbox_value(AT_JAB, 4, HG_PROJECTILE_DESTROY_EFFECT, cheeseBulletEnd);
set_hitbox_value(AT_JAB, 4, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_JAB, 4, HG_PROJECTILE_VSPEED, -5);
set_hitbox_value(AT_JAB, 4, HG_PROJECTILE_GRAVITY, 0.5);
set_hitbox_value(AT_JAB, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_JAB, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_JAB, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_JAB, 4, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_JAB, 4, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_JAB, 4, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_JAB, 4, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_JAB, 4, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_JAB, 4, HG_VISUAL_EFFECT, cheeseBulletEnd);