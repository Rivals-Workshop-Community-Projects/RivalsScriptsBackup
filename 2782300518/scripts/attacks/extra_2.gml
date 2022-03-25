set_attack_value(AT_EXTRA_2, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("pounce"));
set_attack_value(AT_EXTRA_2, AG_AIR_SPRITE, sprite_get("pounce"));
set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 2);
set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, sprite_get("pounce_hurt"));
set_attack_value(AT_EXTRA_2, AG_HURTBOX_AIR_SPRITE, sprite_get("pounce_hurt"));

set_window_value(AT_EXTRA_2, 1, AG_WINDOW_TYPE, 2);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX, sound_get("pounce"));

set_window_value(AT_EXTRA_2, 2, AG_WINDOW_TYPE, 2);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH, 25);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_HSPEED, 6);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_VSPEED, -4);


set_num_hitboxes(AT_EXTRA_2, 1);

set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_2, 1, HG_SHAPE, 2);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_LIFETIME, 25);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_Y, -21);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_EXTRA_2, 1, HG_WIDTH, 61);
set_hitbox_value(AT_EXTRA_2, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_EXTRA_2, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_EXTRA_2, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_EXTRA_2, 1, HG_ANGLE, 361);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_EXTRA_2, 1, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_EXTRA_2, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_EXTRA_2, 1, HG_EFFECT, 303);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITSTUN_MULTIPLIER, .55);
set_hitbox_value(AT_EXTRA_2, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_EXTRA_2, 1, HG_IGNORES_PROJECTILES, 1);

if has_rune ("O")
{
    set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_KNOCKBACK, 12);
    set_hitbox_value(AT_EXTRA_2, 1, HG_KNOCKBACK_SCALING, 1)
}


