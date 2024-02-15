set_attack_value(AT_UTHROW, AG_SPRITE, sprite_get("utilt2"));
set_attack_value(AT_UTHROW, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UTHROW, AG_HURTBOX_SPRITE, sprite_get("utilt2_hurt"));
set_attack_value(AT_UTHROW, AG_MUNO_ATTACK_NAME, "UTilt2 (Claw Uppercut)");

set_window_value(AT_UTHROW, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTHROW, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_SFX, sound_get("claw1"));
set_window_value(AT_UTHROW, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_UTHROW, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_UTHROW, 3, AG_WINDOW_LENGTH, 11);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UTHROW, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UTHROW, 1);

set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTHROW, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_Y, -44);
set_hitbox_value(AT_UTHROW, 1, HG_WIDTH, 64);
set_hitbox_value(AT_UTHROW, 1, HG_HEIGHT, 66);
set_hitbox_value(AT_UTHROW, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UTHROW, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_UTHROW, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UTHROW, 1, HG_KNOCKBACK_SCALING, .2)
set_hitbox_value(AT_UTHROW, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UTHROW, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_UTHROW, 1, HG_VISUAL_EFFECT, hit_medium);
set_hitbox_value(AT_UTHROW, 1, HG_HIT_SFX, sound_get("hit"));

if has_rune ("O")
{
    set_hitbox_value(AT_UTHROW, 1, HG_BASE_KNOCKBACK, 12);
    set_hitbox_value(AT_UTHROW, 1, HG_KNOCKBACK_SCALING, 1);
}