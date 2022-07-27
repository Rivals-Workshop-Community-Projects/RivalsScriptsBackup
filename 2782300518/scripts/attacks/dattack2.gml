set_attack_value(3, AG_SPRITE, sprite_get("dattack2"));
set_attack_value(3, AG_NUM_WINDOWS, 3);
set_attack_value(3, AG_OFF_LEDGE, 1);
set_attack_value(3, AG_AIR_SPRITE, sprite_get("dattack2"));
set_attack_value(3, AG_HURTBOX_SPRITE, sprite_get("dattack2_hurt"));

set_window_value(3, 1, AG_WINDOW_LENGTH, 7);
set_window_value(3, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(3, 1, AG_WINDOW_HSPEED_TYPE, 1)
set_window_value(3, 1, AG_WINDOW_HSPEED, 8);
set_window_value(3, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(3, 1, AG_WINDOW_SFX, sound_get("rolling"));

set_window_value(3, 2, AG_WINDOW_LENGTH, 11);
set_window_value(3, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(3, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(3, 2, AG_WINDOW_HSPEED_TYPE, 1)
set_window_value(3, 2, AG_WINDOW_HSPEED, 8);

set_window_value(3, 3, AG_WINDOW_LENGTH, 9);
set_window_value(3, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(3, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(3, 3, AG_WINDOW_HSPEED_TYPE, 1)
set_window_value(3, 3, AG_WINDOW_HSPEED, 8);
set_window_value(3, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(3, 1);

set_hitbox_value(3, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(3, 1, HG_WINDOW, 2);
set_hitbox_value(3, 1, HG_LIFETIME, 11);
set_hitbox_value(3, 1, HG_HITBOX_X, 14);
set_hitbox_value(3, 1, HG_HITBOX_Y, -38);
set_hitbox_value(3, 1, HG_WIDTH, 84);
set_hitbox_value(3, 1, HG_HEIGHT, 84);
set_hitbox_value(3, 1, HG_PRIORITY, 2);
set_hitbox_value(3, 1, HG_DAMAGE, 9);
set_hitbox_value(3, 1, HG_HIT_LOCKOUT, 5);
set_hitbox_value(3, 1, HG_ANGLE, 60);
set_hitbox_value(3, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(3, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(3, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(3, 1, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(3, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(3, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(3, 1, HG_HITSTUN_MULTIPLIER, .55);
set_hitbox_value(3, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

if has_rune ("F")
{
    set_window_value(3, 1, AG_WINDOW_HSPEED, 9);
    set_window_value(3, 2, AG_WINDOW_HSPEED, 9);
    set_window_value(3, 3, AG_WINDOW_HSPEED, 9);
}

if has_rune ("O")
{
    set_hitbox_value(3, 1, HG_BASE_KNOCKBACK, 12);
    set_hitbox_value(3, 1, HG_KNOCKBACK_SCALING, 1)
}