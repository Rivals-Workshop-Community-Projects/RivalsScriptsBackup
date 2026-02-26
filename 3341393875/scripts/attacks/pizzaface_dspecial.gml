set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("pizzaface_dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("pizzaface_dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("pizzaface_dspecial_hurt"));

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 24 - (has_rune("J") * 23));
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, sound_get("pizzafacespit"));
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 12 - (has_rune("J") * 12));

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 24);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_num_hitboxes(AT_DSPECIAL, 8);

// fork
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 9);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 30);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.25);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 0.25);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, sound_get("forkstab1"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("empty_spr"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);

// dynamite
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 9);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 90);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 30);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("banditochicken_dynamite"));
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 0.33);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_MASK, sprite_get("banditochicken_dynamite"));
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_HSPEED, -3);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_VSPEED, -7);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_GRAVITY, 0.3);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);

// dynamite explosion
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 9);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 21);
set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 30);
set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 30);
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, 120);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_ell_fist_explode"));
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("dynamite_explosion_grounded"));
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, 0.33);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_MASK, sprite_get("dynamite_explosion_grounded"));
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);

// bite
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW, 9);
set_hitbox_value(AT_DSPECIAL, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_WIDTH, 45);
set_hitbox_value(AT_DSPECIAL, 4, HG_HEIGHT, 50);
set_hitbox_value(AT_DSPECIAL, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_DAMAGE, 7);
set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL, 4, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_crunch"));
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("empty_spr"));
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, 1);

// kick flurry
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW, 9);
set_hitbox_value(AT_DSPECIAL, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 5, HG_WIDTH, 60);
set_hitbox_value(AT_DSPECIAL, 5, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_SPRITE, sprite_get("empty_spr"));
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_IS_TRANSCENDENT, 1);

// uppercut
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 6, HG_WINDOW, 9);
set_hitbox_value(AT_DSPECIAL, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 6, HG_WIDTH, 50);
set_hitbox_value(AT_DSPECIAL, 6, HG_HEIGHT, 40);
set_hitbox_value(AT_DSPECIAL, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_DAMAGE, 9);
set_hitbox_value(AT_DSPECIAL, 6, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL, 6, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSPECIAL, 6, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_DSPECIAL, 6, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_DSPECIAL, 6, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_SPRITE, sprite_get("empty_spr"));
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_IS_TRANSCENDENT, 1);

// spitcheese
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 7, HG_WINDOW, 9);
set_hitbox_value(AT_DSPECIAL, 7, HG_LIFETIME, 180);
set_hitbox_value(AT_DSPECIAL, 7, HG_WIDTH, 30);
set_hitbox_value(AT_DSPECIAL, 7, HG_HEIGHT, 30);
set_hitbox_value(AT_DSPECIAL, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_DAMAGE, 5);
set_hitbox_value(AT_DSPECIAL, 7, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 7, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSPECIAL, 7, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_DSPECIAL, 7, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSPECIAL, 7, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 7, HG_HIT_SFX, asset_get("sfx_waterhit_heavy2"));
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_SPRITE, sprite_get("spitcheese_projectile"));
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_DESTROY_EFFECT, hit_fx_create(sprite_get("spitcheese_projectile_destroyed"), 12));
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_ANIM_SPEED, 0.25);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_MASK, sprite_get("spitcheese_projectile"));
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_HSPEED, 3);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_VSPEED, -6);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_GRAVITY, 0.5);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_GROUND_BEHAVIOR, -1);

// punch
set_hitbox_value(AT_DSPECIAL, 8, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 8, HG_WINDOW, 9);
set_hitbox_value(AT_DSPECIAL, 8, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 8, HG_WIDTH, 50);
set_hitbox_value(AT_DSPECIAL, 8, HG_HEIGHT, 50);
set_hitbox_value(AT_DSPECIAL, 8, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 8, HG_DAMAGE, 9);
set_hitbox_value(AT_DSPECIAL, 8, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL, 8, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSPECIAL, 8, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_DSPECIAL, 8, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSPECIAL, 8, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_DSPECIAL, 8, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_SPRITE, sprite_get("empty_spr"));
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_IS_TRANSCENDENT, 1);