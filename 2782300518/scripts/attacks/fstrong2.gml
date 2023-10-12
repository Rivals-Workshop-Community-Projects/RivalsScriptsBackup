set_attack_value(AT_FSTRONG_2, AG_SPRITE, sprite_get("fstrong2"));
set_attack_value(AT_FSTRONG_2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FSTRONG_2, AG_STRONG_CHARGE_WINDOW, 2);
set_attack_value(AT_FSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("fstrong2_hurt"));

set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_SFX, sound_get("motorbike_uppercut"));
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_HSPEED, 6);

set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_LENGTH, 21);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSTRONG_2, 2);

set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_Y, -48);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WIDTH, 56);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HEIGHT, 86);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_FSTRONG_2, 1, HG_ANGLE, 40);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG_2, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_FSTRONG_2, 1, HG_VISUAL_EFFECT, hit_large);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HIT_SFX, sound_get("hit_heavy"));

set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG_2, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG_2, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSTRONG_2, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_X, 32);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_Y, -60);
set_hitbox_value(AT_FSTRONG_2, 2, HG_WIDTH, 66);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HEIGHT, 96);
set_hitbox_value(AT_FSTRONG_2, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG_2, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_FSTRONG_2, 2, HG_ANGLE, 55);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG_2, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG_2, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSTRONG_2, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_FSTRONG_2, 2, HG_VISUAL_EFFECT, hit_large);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HIT_SFX, sound_get("hit_heavy"));

if has_rune ("O")
{
    set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_KNOCKBACK, 16);
    set_hitbox_value(AT_FSTRONG_2, 1, HG_KNOCKBACK_SCALING, 1.2);
    set_hitbox_value(AT_FSTRONG_2, 2, HG_BASE_KNOCKBACK, 16);
    set_hitbox_value(AT_FSTRONG_2, 2, HG_KNOCKBACK_SCALING, 1.2);
}