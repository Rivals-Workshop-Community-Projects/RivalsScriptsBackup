set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DATTACK, AG_AIR_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_OFF_LEDGE, 1);
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED_TYPE, 1)
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 8);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, sound_get("rolling"));

set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 11);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 1)
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 8);

set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED_TYPE, 1)
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED, 8);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_DATTACK, 1);

set_hitbox_value(AT_DATTACK, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 11);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 3);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 68);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 68);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 60);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_LOCKOUT, 5);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, 0.35);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_DATTACK, 1, HG_HITSTUN_MULTIPLIER, .55);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

if has_rune ("F")
{
    set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 9);
    set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 9);
    set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED, 9);
}

if has_rune ("O")
{
    set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 12);
    set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, 1)
}