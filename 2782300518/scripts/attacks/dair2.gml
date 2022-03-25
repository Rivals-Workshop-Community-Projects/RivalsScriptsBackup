set_attack_value(40, AG_CATEGORY, 1);
set_attack_value(40, AG_SPRITE, sprite_get("dair2"));
set_attack_value(40, AG_NUM_WINDOWS, 5);
set_attack_value(40, AG_HAS_LANDING_LAG, 4);
set_attack_value(40, AG_OFF_LEDGE, 1);
set_attack_value(40, AG_HURTBOX_SPRITE, sprite_get("dair2_hurt"));

set_window_value(40, 1, AG_WINDOW_TYPE, 1);
set_window_value(40, 1, AG_WINDOW_LENGTH, 1);
set_window_value(40, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(40, 1, AG_WINDOW_HSPEED, 0);
set_window_value(40, 1, AG_WINDOW_VSPEED, 0);
set_window_value(40, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(40, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(40, 1, AG_WINDOW_HAS_SFX, 1)
set_window_value(40, 1, AG_WINDOW_SFX, sound_get("spin"));

set_window_value(40, 2, AG_WINDOW_TYPE, 1);
set_window_value(40, 2, AG_WINDOW_LENGTH, 4);
set_window_value(40, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(40, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(40, 2, AG_WINDOW_HSPEED, 0);
set_window_value(40, 2, AG_WINDOW_VSPEED, 0);
set_window_value(40, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(40, 2, AG_WINDOW_VSPEED_TYPE, 1);


set_num_hitboxes(40, 1);

set_hitbox_value(40, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(40, 1, HG_WINDOW, 2);
set_hitbox_value(40, 1, HG_SHAPE, 0);
set_hitbox_value(40, 1, HG_LIFETIME, 40);
set_hitbox_value(40, 1, HG_HITBOX_X, 0);
set_hitbox_value(40, 1, HG_HITBOX_Y, 20);
set_hitbox_value(40, 1, HG_PRIORITY, 9);
set_hitbox_value(40, 1, HG_DAMAGE, 7);
set_hitbox_value(40, 1, HG_TECHABLE, 2);
set_hitbox_value(40, 1, HG_EFFECT, 1);
set_hitbox_value(40, 1, HG_VISUAL_EFFECT, 148);

set_hitbox_value(40, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(40, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(40, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(40, 1, HG_ANGLE, 270);
set_hitbox_value(40, 1, HG_HITSTUN_MULTIPLIER, 0);
set_hitbox_value(40, 1, HG_IGNORES_PROJECTILES, true);
set_hitbox_value(40, 1, HG_PROJECTILE_SPRITE, sprite_get("dair2_proj"));
set_hitbox_value(40, 1, HG_PROJECTILE_MASK, sprite_get("dair2_proj"));
//set_hitbox_value(40, 1, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("nitro_boost"));
set_hitbox_value(40, 1, HG_PROJECTILE_ANIM_SPEED, 1);
set_hitbox_value(40, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(40, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(40, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(40, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(40, 1, HG_PROJECTILE_VSPEED, 9);
set_hitbox_value(40, 1, HG_PROJECTILE_IS_TRANSCENDENT, false);
//set_hitbox_value(40, 1, HG_PROJECTILE_DESTROY_EFFECT, nitro_boost);
set_hitbox_value(40, 1, HG_PROJECTILE_DESTROY_EFFECT, 148);

if has_rune ("O")
{
    set_hitbox_value(40, 1, HG_BASE_KNOCKBACK, 12);
    set_hitbox_value(40, 1, HG_KNOCKBACK_SCALING, 1)
}
