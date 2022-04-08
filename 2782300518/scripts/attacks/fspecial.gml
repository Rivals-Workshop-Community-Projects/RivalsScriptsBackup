set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("fspecial_hurt"));

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 2);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 17);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, .3)
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, sound_get("roll"));

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 30);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, .3)

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 2);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 25);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 2);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 32);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED, 2);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_VSPEED, -6);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX, sound_get("spin_jump"));
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX_FRAME, 1);


set_num_hitboxes(AT_FSPECIAL, 2);

set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 47);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -26);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 9);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_TECHABLE, 2);

set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_IGNORES_PROJECTILES, true);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("fspecial_proj"));
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("fspecial_proj"));
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 16);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_PLASMA_SAFE, 1);


set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 18);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 5);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -28);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 68);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 68);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 60);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.35);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITSTUN_MULTIPLIER, .55);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));



if has_rune ("D")
{
    set_window_value(AT_FSPECIAL, 4, AG_WINDOW_VSPEED, -9);
}

if has_rune ("O")
{
    set_window_value(AT_FSPECIAL, 4, AG_WINDOW_VSPEED, -11);
    set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 12);
    set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 1);
    set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 12);
    set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 1);
}

