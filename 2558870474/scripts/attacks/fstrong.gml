set_attack_value(AT_FSTRONG, AG_CATEGORY, 0);
set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 36);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 6);

// hitboxes for clone
set_num_hitboxes(AT_FSTRONG,2);
// First Hit
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 5);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 90);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 42);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 52);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_FSTRONG, 1, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_FSTRONG, 1, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP, 1);

// Second Hit
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 5);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 104);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 120);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_icehit_heavy1"));
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_FSTRONG, 2, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_FSTRONG, 2, HG_EXTRA_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, 2);
