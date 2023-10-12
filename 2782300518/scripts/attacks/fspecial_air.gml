set_attack_value(AT_FSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_AIR, AG_SPRITE, sprite_get("fspecial_air"));
set_attack_value(AT_FSPECIAL_AIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FSPECIAL_AIR, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_FSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("fspecial_air_hurt"));

set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_TYPE, 2);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 11);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_CUSTOM_GRAVITY, .3)
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX, sound_get("disc_throw"));
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 10);

set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_TYPE, 2);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 11);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_CUSTOM_GRAVITY, .3)

set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_TYPE, 2);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 27);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_CUSTOM_GRAVITY, .3)

set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_TYPE, 2);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 16);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_TYPE, 2);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_LENGTH, 32);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAMES, 16);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAME_START, 20);
//set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_HSPEED_TYPE, 2);
//set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_HSPEED, 3);
//set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_VSPEED_TYPE, 2);
//set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_VSPEED, -4);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_SFX, sound_get("spin_jump"));
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_SFX_FRAME, 1);

set_num_hitboxes(AT_FSPECIAL_AIR, 2);

set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_LIFETIME, 47);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_Y, -55);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PRIORITY, 9);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_TECHABLE, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_VISUAL_EFFECT, hit_proj);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HIT_SFX, sound_get("hit_deep"));
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HIT_PARTICLE_NUM, 1);

set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, .25);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_IGNORES_PROJECTILES, true);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_SPRITE, sprite_get("fspecial_air_proj"));
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_MASK, sprite_get("fspecial_air_proj"));
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_ANIM_SPEED, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_HSPEED, 16);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_PARRY_STUN, 1);

set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_LIFETIME, 15);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_Y, -28);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WIDTH, 66);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HEIGHT, 66);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_ANGLE, 60);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, 0.35);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_VISUAL_EFFECT, hit_large);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITSTUN_MULTIPLIER, .55);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HIT_SFX, sound_get("hit_heavy"));


if has_rune ("O")
{
    set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 12);
    set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, 1);
}