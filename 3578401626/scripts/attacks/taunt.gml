set_attack_value(AT_TAUNT, AG_CATEGORY, 2);
set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("pagliaccia_hurtbox"));

set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 25);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 7);

set_num_hitboxes(AT_TAUNT, 0);

set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 25);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, 2);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_TAUNT, 1, HG_HITSTUN_MULTIPLIER, 0.25);
set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, asset_get("sfx_plant_eat"));
set_hitbox_value(AT_TAUNT, 1, HG_IGNORES_PROJECTILES, true);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_MASK, sprite_get("groundteeth"));
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("groundteeth"));
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_GRAVITY, 9);
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT, 303);