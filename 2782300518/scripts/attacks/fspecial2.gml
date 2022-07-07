set_attack_value(AT_FSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecial2"));
set_attack_value(AT_FSPECIAL_2, AG_AIR_SPRITE, sprite_get("fspecial2"));
set_attack_value(AT_FSPECIAL_2, AG_NUM_WINDOWS, 2);
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("fspecial2_hurt"));
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_AIR_SPRITE, sprite_get("fspecial2_hurt"));

set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_TYPE, 2);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX, sound_get("motorbike_wheelie"));

set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_TYPE, 7);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH, 27);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);


set_num_hitboxes(AT_FSPECIAL_2, 1);

set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_LIFETIME, 27);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WIDTH, 60);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE, 60);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_LOCKOUT, 15);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITSTUN_MULTIPLIER, .55);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

if has_rune ("O")
{
    set_hitbox_value(39, 1, HG_BASE_KNOCKBACK, 12);
    set_hitbox_value(39, 1, HG_KNOCKBACK_SCALING, 1);
}
