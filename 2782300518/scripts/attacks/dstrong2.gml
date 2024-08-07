set_attack_value(AT_DSTRONG_2, AG_SPRITE, sprite_get("dstrong2"));
set_attack_value(AT_DSTRONG_2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DSTRONG_2, AG_STRONG_CHARGE_WINDOW, 2);
set_attack_value(AT_DSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("dstrong2_hurt"));
set_attack_value(AT_DSTRONG_2, AG_MUNO_ATTACK_NAME, "DStrong2 (Bike Spin)");

set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_SFX, sound_get("motorbike_spin"));
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_LENGTH, 24);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 12);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_DSTRONG_2, 5, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSTRONG_2, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG_2, 5, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_DSTRONG_2, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSTRONG_2, 2);

set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_LIFETIME, 12);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_Y, -14);
set_hitbox_value(AT_DSTRONG_2, 1, HG_WIDTH, 108);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HEIGHT, 36);
set_hitbox_value(AT_DSTRONG_2, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_DSTRONG_2, 1, HG_ANGLE, 50);
set_hitbox_value(AT_DSTRONG_2, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSTRONG_2, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DSTRONG_2, 1, HG_VISUAL_EFFECT, hit_medium);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HIT_SFX, sound_get("hit"));
set_hitbox_value(AT_DSTRONG_2, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_ANGLE_FLIPPER, 9);

set_hitbox_value(AT_DSTRONG_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG_2, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG_2, 2, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSTRONG_2, 2, HG_LIFETIME, 12);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITBOX_Y, -14);
set_hitbox_value(AT_DSTRONG_2, 2, HG_WIDTH, 108);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HEIGHT, 36);
set_hitbox_value(AT_DSTRONG_2, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG_2, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG_2, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_DSTRONG_2, 2, HG_ANGLE, 50);
set_hitbox_value(AT_DSTRONG_2, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG_2, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSTRONG_2, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_DSTRONG_2, 2, HG_VISUAL_EFFECT, hit_large);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HIT_SFX, sound_get("hit_heavy"));
set_hitbox_value(AT_DSTRONG_2, 2, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_DSTRONG_2, 2, HG_ANGLE_FLIPPER, 3);

if has_rune ("O")
{
    set_hitbox_value(AT_DSTRONG_2, 1, HG_BASE_KNOCKBACK, 16);
    set_hitbox_value(AT_DSTRONG_2, 1, HG_KNOCKBACK_SCALING, 1)
}