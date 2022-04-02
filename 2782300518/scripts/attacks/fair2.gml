set_attack_value(43, AG_CATEGORY, 1);
set_attack_value(43, AG_SPRITE, sprite_get("fair2"));
set_attack_value(43, AG_NUM_WINDOWS, 3);
set_attack_value(43, AG_HAS_LANDING_LAG, 1);
set_attack_value(43, AG_LANDING_LAG, 4);
set_attack_value(43, AG_HURTBOX_SPRITE, sprite_get("fair2_hurt"));

set_window_value(43, 1, AG_WINDOW_LENGTH, 6);
set_window_value(43, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(43, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(43, 1, AG_WINDOW_HSPEED, 0);

set_window_value(43, 2, AG_WINDOW_LENGTH, 30);
set_window_value(43, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(43, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(43, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(43, 2, AG_WINDOW_HSPEED, 0);
set_window_value(43, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(43, 2, AG_WINDOW_SFX, sound_get("motorbike_spin"));

set_window_value(43, 3, AG_WINDOW_LENGTH, 14)
set_window_value(43, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(43, 3, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(43, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(43, 3, AG_WINDOW_HSPEED, 0);

set_num_hitboxes(43, 1);

set_hitbox_value(43, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(43, 1, HG_WINDOW, 2);
set_hitbox_value(43, 1, HG_SHAPE, 0);
set_hitbox_value(43, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(43, 1, HG_LIFETIME, 30);
set_hitbox_value(43, 1, HG_HITBOX_X, 100);
set_hitbox_value(43, 1, HG_HITBOX_Y, -55);
set_hitbox_value(43, 1, HG_PRIORITY, 9);
set_hitbox_value(43, 1, HG_DAMAGE, 2);
set_hitbox_value(43, 1, HG_TECHABLE, 2);
set_hitbox_value(43, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(43, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(43, 1, HG_KNOCKBACK_SCALING, .25);
set_hitbox_value(43, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(43, 1, HG_ANGLE, 361);
set_hitbox_value(43, 1, HG_IGNORES_PROJECTILES, true);
set_hitbox_value(43, 1, HG_PROJECTILE_SPRITE, sprite_get("fair2_proj"));
set_hitbox_value(43, 1, HG_PROJECTILE_MASK, sprite_get("fair2_proj"));
set_hitbox_value(43, 1, HG_PROJECTILE_ANIM_SPEED, 1);
set_hitbox_value(43, 1, HG_PROJECTILE_HSPEED, 10);
set_hitbox_value(43, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(43, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(43, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);


if has_rune ("O")
{
    set_hitbox_value(43, 1, HG_BASE_KNOCKBACK, 12);
    set_hitbox_value(43, 1, HG_KNOCKBACK_SCALING, 1);
}