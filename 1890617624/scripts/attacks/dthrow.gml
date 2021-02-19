// Clap

set_attack_value(AT_DTHROW, AG_SPRITE, sprite_get("clap"));
set_attack_value(AT_DTHROW, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DTHROW, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DTHROW, AG_OFF_LEDGE, 1);
set_attack_value(AT_DTHROW, AG_CATEGORY, 2);
set_attack_value(AT_DTHROW, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_DTHROW, AG_HURTBOX_SPRITE, sprite_get("idle_hitbox"));

set_window_value(AT_DTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTHROW, 1, AG_WINDOW_ANIM_FRAMES, 0);
set_window_value(AT_DTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 0);

set_window_value(AT_DTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DTHROW, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTHROW, 2, AG_WINDOW_SFX, sound_get("clap"));
set_window_value(AT_DTHROW, 2, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_DTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTHROW, 3, AG_WINDOW_ANIM_FRAMES, 0);
set_window_value(AT_DTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_DTHROW, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTHROW, 4, AG_WINDOW_ANIM_FRAMES, -2);
set_window_value(AT_DTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DTHROW, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTHROW, 5, AG_WINDOW_ANIM_FRAMES, 0);
set_window_value(AT_DTHROW, 5, AG_WINDOW_ANIM_FRAME_START, 0);

set_num_hitboxes(AT_DTHROW, 0);

// Willowisp Hit
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DTHROW, 1, HG_LIFETIME, 8);
set_hitbox_value(AT_DTHROW, 1, HG_WIDTH, 80);
set_hitbox_value(AT_DTHROW, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_DTHROW, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DTHROW, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_DTHROW, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DTHROW, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DTHROW, 1, HG_HIT_SFX, sound_get("willowisphit"));
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);

// Soul siphon Hit
set_hitbox_value(AT_DTHROW, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DTHROW, 2, HG_LIFETIME, 12);
set_hitbox_value(AT_DTHROW, 2, HG_WIDTH, 100);
set_hitbox_value(AT_DTHROW, 2, HG_HEIGHT, 100);
set_hitbox_value(AT_DTHROW, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DTHROW, 2, HG_PRIORITY, 6);
set_hitbox_value(AT_DTHROW, 2, HG_DAMAGE, 15);
set_hitbox_value(AT_DTHROW, 2, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_DTHROW, 2, HG_BASE_HITPAUSE, 22);
set_hitbox_value(AT_DTHROW, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DTHROW, 2, HG_HIT_SFX, sound_get("soulsiphonhit"));
set_hitbox_value(AT_DTHROW, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DTHROW, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DTHROW, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DTHROW, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DTHROW, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_DTHROW, 2, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_DTHROW, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_DTHROW, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);

// Ronald Girl Hit
set_hitbox_value(AT_DTHROW, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DTHROW, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_DTHROW, 3, HG_WIDTH, 100);
set_hitbox_value(AT_DTHROW, 3, HG_HEIGHT, 100);
set_hitbox_value(AT_DTHROW, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DTHROW, 3, HG_PRIORITY, 6);
set_hitbox_value(AT_DTHROW, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_DTHROW, 3, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_DTHROW, 3, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_DTHROW, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DTHROW, 3, HG_ANGLE, 300);
set_hitbox_value(AT_DTHROW, 3, HG_HIT_SFX, sound_get("smash"));
set_hitbox_value(AT_DTHROW, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DTHROW, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DTHROW, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DTHROW, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DTHROW, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_DTHROW, 3, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_DTHROW, 3, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_DTHROW, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DTHROW, 3, HG_VISUAL_EFFECT, hitsparkheavy);