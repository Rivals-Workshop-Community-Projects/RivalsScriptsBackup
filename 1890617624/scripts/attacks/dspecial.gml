set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 15);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

// Charging (Ground)

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);

// Apple Bomb (Ground)

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, sound_get("voicedspecialapple"));
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_SFX, sound_get("throwapple"));

set_window_value(AT_DSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 9999);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 7);

// McShake (Ground)

set_window_value(AT_DSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_SFX, sound_get("throwapple"));

set_window_value(AT_DSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_SFX, sound_get("throwshake"));

set_window_value(AT_DSPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_SFX, sound_get("voicedspecialshake"));

set_window_value(AT_DSPECIAL, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_LENGTH, 9999);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 10);

// Charging (Air)

set_window_value(AT_DSPECIAL, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 1);

// Apple Bomb (Air)

set_window_value(AT_DSPECIAL, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_SFX, sound_get("voicedspecialapple"));
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DSPECIAL, 11, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_SFX, sound_get("throwapple"));
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_HSPEED, -3);
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_VSPEED, -9);
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_DSPECIAL, 12, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 12, AG_WINDOW_LENGTH, 9999);
set_window_value(AT_DSPECIAL, 12, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 12, AG_WINDOW_ANIM_FRAME_START, 15);

// McShake (Air)

set_window_value(AT_DSPECIAL, 13, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 13, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSPECIAL, 13, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 13, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_DSPECIAL, 13, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 13, AG_WINDOW_SFX, sound_get("throwapple"));

set_window_value(AT_DSPECIAL, 14, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 14, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSPECIAL, 14, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 14, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_DSPECIAL, 14, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 14, AG_WINDOW_SFX, sound_get("throwshake"));

set_window_value(AT_DSPECIAL, 15, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 15, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL, 15, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 15, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_DSPECIAL, 15, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 15, AG_WINDOW_SFX, sound_get("voicedspecialshake"));

set_num_hitboxes(AT_DSPECIAL, 0);

// Apple Bounce Hitbox
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 32);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, hitsparkheavy);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, sound_get("punchmedium"));
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, -45);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);

// Apple Explosion
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 10);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 170);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 170);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 25);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 18);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, hitsparkheavy);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL, 2, HG_EFFECT, 1);

// Shake Explosion
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 8);
set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 100);
set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 500);
set_hitbox_value(AT_DSPECIAL, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 40);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, -90);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL, 3, HG_EFFECT, 11);
