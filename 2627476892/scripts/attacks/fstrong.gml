set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

//startup
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 14); 
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);

//attack
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

//endlag
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSTRONG, 1);

set_attack_value(AT_FSTRONG, AG_MUNO_ATTACK_MISC, "When charged for long enough, Fstrong creates an additional explosion.");

set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 24);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 64);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_FSTRONG, 2, HG_MUNO_HITBOX_NAME, "Explosion");
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 12);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 80);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 50);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 148);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_SPRITE, sprite_get("blank_sheet"));
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_MASK, sprite_get("blank_sheet"));
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_ell_dspecial_explosion_3"));
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_ANIM_SPEED, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_PARRY_STUN, 1);

set_hitbox_value(AT_FSTRONG, 4, HG_MUNO_HITBOX_NAME, "Glass VFX");
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW, 0);
set_hitbox_value(AT_FSTRONG, 4, HG_LIFETIME, 30);
set_hitbox_value(AT_FSTRONG, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 4, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 4, HG_WIDTH, 0);
set_hitbox_value(AT_FSTRONG, 4, HG_HEIGHT, 0);
set_hitbox_value(AT_FSTRONG, 4, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_SPRITE, sprite_get("glass_shard1"));
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_MASK, sprite_get("glass_shard1"));
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_GRAVITY, 0.4);
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_UNBASHABLE, 1);

set_hitbox_value(AT_FSTRONG, 5, HG_MUNO_HITBOX_NAME, "Glass VFX");
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, 5, HG_WINDOW, 0);
set_hitbox_value(AT_FSTRONG, 5, HG_LIFETIME, 30);
set_hitbox_value(AT_FSTRONG, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 5, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 5, HG_WIDTH, 0);
set_hitbox_value(AT_FSTRONG, 5, HG_HEIGHT, 0);
set_hitbox_value(AT_FSTRONG, 5, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_PROJECTILE_SPRITE, sprite_get("glass_shard2"));
set_hitbox_value(AT_FSTRONG, 5, HG_PROJECTILE_MASK, sprite_get("glass_shard2"));
set_hitbox_value(AT_FSTRONG, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSTRONG, 5, HG_PROJECTILE_GRAVITY, 0.4);
set_hitbox_value(AT_FSTRONG, 5, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FSTRONG, 5, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSTRONG, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_FSTRONG, 5, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FSTRONG, 5, HG_PROJECTILE_UNBASHABLE, 1);

set_hitbox_value(AT_FSTRONG, 6, HG_MUNO_HITBOX_NAME, "Glass VFX");
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, 6, HG_WINDOW, 0);
set_hitbox_value(AT_FSTRONG, 6, HG_LIFETIME, 30);
set_hitbox_value(AT_FSTRONG, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 6, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 6, HG_WIDTH, 0);
set_hitbox_value(AT_FSTRONG, 6, HG_HEIGHT, 0);
set_hitbox_value(AT_FSTRONG, 6, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSTRONG, 6, HG_PROJECTILE_SPRITE, sprite_get("glass_shard3"));
set_hitbox_value(AT_FSTRONG, 6, HG_PROJECTILE_MASK, sprite_get("glass_shard3"));
set_hitbox_value(AT_FSTRONG, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSTRONG, 6, HG_PROJECTILE_GRAVITY, 0.4);
set_hitbox_value(AT_FSTRONG, 6, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FSTRONG, 6, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSTRONG, 6, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 6, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_FSTRONG, 6, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_FSTRONG, 6, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FSTRONG, 6, HG_PROJECTILE_UNBASHABLE, 1);