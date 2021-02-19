// McDonald's french fries are fun!

set_attack_value(AT_USTRONG_2, AG_SPRITE, sprite_get("fries"));
set_attack_value(AT_USTRONG_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USTRONG_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG_2, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG_2, AG_HURTBOX_SPRITE, sprite_get("fries_hurt"));

set_window_value(AT_USTRONG_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_USTRONG_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_SFX, sound_get("voicefries"));

set_window_value(AT_USTRONG_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_LENGTH, 24);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_SFX, sound_get("fries"));

set_num_hitboxes(AT_USTRONG_2,0);

// Fry projectile hitbox
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG_2, 1, HG_WIDTH, 50);
set_hitbox_value(AT_USTRONG_2, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_USTRONG_2, 1, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG_2, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USTRONG_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG_2, 1, HG_VISUAL_EFFECT, hitsparkprojectile);
set_hitbox_value(AT_USTRONG_2, 1, HG_HIT_SFX, sound_get("projectilehit"));
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);

// FSTRONG projectile fries hitbox
set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG_2, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG_2, 2, HG_WIDTH, 50);
set_hitbox_value(AT_USTRONG_2, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_USTRONG_2, 2, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG_2, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG_2, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG_2, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USTRONG_2, 2, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_USTRONG_2, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USTRONG_2, 2, HG_ANGLE, 30);
set_hitbox_value(AT_USTRONG_2, 2, HG_VISUAL_EFFECT, hitsparkprojectile);
set_hitbox_value(AT_USTRONG_2, 2, HG_HIT_SFX, sound_get("projectilehit"));
set_hitbox_value(AT_USTRONG_2, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USTRONG_2, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USTRONG_2, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG_2, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG_2, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_USTRONG_2, 2, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_USTRONG_2, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_USTRONG_2, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);