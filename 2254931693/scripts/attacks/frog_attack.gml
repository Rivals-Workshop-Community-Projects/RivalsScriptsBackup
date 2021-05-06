set_attack_value(39, AG_CATEGORY, 2);
set_attack_value(39, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(39, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

set_num_hitboxes(39, 3);

set_hitbox_value(39, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(39, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(39, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(39, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(39, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(39, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(39, 1, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(39, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(39, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(39, 1, HG_SHAPE, 2);
set_hitbox_value(39, 1, HG_LIFETIME, 5);
set_hitbox_value(39, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(39, 1, HG_WIDTH, 190);
set_hitbox_value(39, 1, HG_HEIGHT, 190);
set_hitbox_value(39, 1, HG_PRIORITY, 9);
set_hitbox_value(39, 1, HG_DAMAGE, 2);
set_hitbox_value(39, 1, HG_ANGLE, 0);
set_hitbox_value(39, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(39, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(39, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(39, 1, HG_VISUAL_EFFECT, 9);
set_hitbox_value(39, 1, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(39, 1, HG_HIT_SFX, sound_get("bonby_frog_tonguegrab"));