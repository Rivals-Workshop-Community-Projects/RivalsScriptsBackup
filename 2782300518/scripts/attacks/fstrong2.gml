set_attack_value(AT_FSTRONG_2, AG_SPRITE, sprite_get("fstrong2"));
set_attack_value(AT_FSTRONG_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSTRONG_2, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("fstrong2_hurt"));

set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_SFX, sound_get("motorbike_extra"));

set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSTRONG_2, 1);

set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG_2, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_X, 42);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_Y, -55);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WIDTH, 80);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HEIGHT, 86);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_FSTRONG_2, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_FSTRONG_2, 1, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_FSTRONG_2, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

if has_rune ("O")
{
    set_hitbox_value(39, 1, HG_BASE_KNOCKBACK, 16);
    set_hitbox_value(39, 1, HG_KNOCKBACK_SCALING, 1);
}