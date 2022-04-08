set_attack_value(AT_DSTRONG_2, AG_SPRITE, sprite_get("dstrong2"));
set_attack_value(AT_DSTRONG_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSTRONG_2, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("dstrong2_hurt"));

set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_LENGTH, 22);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 11);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_SFX, sound_get("motorbike_spin"));

set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 12);

set_num_hitboxes(AT_DSTRONG_2, 1);

set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_LIFETIME, 22);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_Y, -14);
set_hitbox_value(AT_DSTRONG_2, 1, HG_WIDTH, 96);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_DSTRONG_2, 1, HG_PRIORITY, 7);
set_hitbox_value(AT_DSTRONG_2, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG_2, 1, HG_ANGLE, 50);
set_hitbox_value(AT_DSTRONG_2, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSTRONG_2, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DSTRONG_2, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_DSTRONG_2, 1, HG_VISUAL_EFFECT, 11);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG_2, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_ANGLE_FLIPPER, 3);

if has_rune ("O")
{
    set_hitbox_value(AT_DSTRONG_2, 1, HG_BASE_KNOCKBACK, 16);
    set_hitbox_value(AT_DSTRONG_2, 1, HG_KNOCKBACK_SCALING, 1)
}