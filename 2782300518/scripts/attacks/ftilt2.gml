set_attack_value(AT_FTHROW, AG_SPRITE, sprite_get("ftilt2"));
set_attack_value(AT_FTHROW, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE, sprite_get("ftilt2_hurt"));
set_attack_value(AT_FTHROW, AG_MUNO_ATTACK_NAME, "FTilt2 (Claw Swipe)");

set_window_value(AT_FTHROW, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX, sound_get("claw2"));
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_FTHROW, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FTHROW, 2, AG_WINDOW_HSPEED, 6);

set_window_value(AT_FTHROW, 3, AG_WINDOW_LENGTH, 11);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FTHROW, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FTHROW, 1);

set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTHROW, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_Y, -42);
set_hitbox_value(AT_FTHROW, 1, HG_WIDTH, 70);
set_hitbox_value(AT_FTHROW, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_FTHROW, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FTHROW, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FTHROW, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FTHROW, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTHROW, 1, HG_KNOCKBACK_SCALING, .65)
set_hitbox_value(AT_FTHROW, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FTHROW, 1, HG_HITPAUSE_SCALING, .65);
set_hitbox_value(AT_FTHROW, 1, HG_VISUAL_EFFECT, hit_medium);
set_hitbox_value(AT_FTHROW, 1, HG_HIT_SFX, sound_get("hit"));


if has_rune ("O")
{
    set_hitbox_value(AT_FTHROW, 1, HG_BASE_KNOCKBACK, 12);
    set_hitbox_value(AT_FTHROW, 1, HG_KNOCKBACK_SCALING, 1);
}