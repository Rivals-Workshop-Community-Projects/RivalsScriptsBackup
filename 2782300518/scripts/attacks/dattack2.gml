set_attack_value(3, AG_SPRITE, sprite_get("dattack2"));
set_attack_value(3, AG_NUM_WINDOWS, 3);
set_attack_value(3, AG_OFF_LEDGE, 1);
set_attack_value(3, AG_AIR_SPRITE, sprite_get("dattack2"));
set_attack_value(3, AG_HURTBOX_SPRITE, sprite_get("dattack2_hurt"));
set_attack_value(3, AG_MUNO_ATTACK_NAME, "DAttack2 (Bike Roll)");

set_window_value(3, 1, AG_WINDOW_LENGTH, 8);
set_window_value(3, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(3, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(3, 1, AG_WINDOW_SFX, sound_get("rolling"));

set_window_value(3, 2, AG_WINDOW_LENGTH, 8);
set_window_value(3, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(3, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(3, 3, AG_WINDOW_LENGTH, 12);
set_window_value(3, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(3, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(3, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(3, 1);

set_hitbox_value(3, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(3, 1, HG_WINDOW, 2);
set_hitbox_value(3, 1, HG_LIFETIME, 8);
set_hitbox_value(3, 1, HG_HITBOX_X, 14);
set_hitbox_value(3, 1, HG_HITBOX_Y, -38);
set_hitbox_value(3, 1, HG_WIDTH, 84);
set_hitbox_value(3, 1, HG_HEIGHT, 84);
set_hitbox_value(3, 1, HG_PRIORITY, 2);
set_hitbox_value(3, 1, HG_DAMAGE, 6);
set_hitbox_value(3, 1, HG_ANGLE, 60);
set_hitbox_value(3, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(3, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(3, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(3, 1, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(3, 1, HG_VISUAL_EFFECT, hit_large);
set_hitbox_value(3, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(3, 1, HG_HITSTUN_MULTIPLIER, .55);
set_hitbox_value(3, 1, HG_HIT_SFX, sound_get("hit_heavy"));

if has_rune ("O")
{
    set_hitbox_value(3, 1, HG_BASE_KNOCKBACK, 12);
    set_hitbox_value(3, 1, HG_KNOCKBACK_SCALING, 1)
}