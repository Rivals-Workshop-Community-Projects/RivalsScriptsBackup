set_attack_value(AT_USPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("uspecial2"));
set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("uspecial2_hurt"));
set_attack_value(AT_USPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL_2, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_USPECIAL_2, AG_MUNO_ATTACK_NAME, "USpecial2 (Rising Wild Claw)");
set_attack_value(AT_USPECIAL_2, AG_MUNO_ATTACK_MISC, "Can wall jump cancel after 12 frames.");

set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX, sound_get("wild_claw2"));
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, -7);

set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_CUSTOM_GRAVITY, .5);


set_num_hitboxes(AT_USPECIAL_2, 1);

set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_X, 36);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_Y, -44);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WIDTH, 64);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HEIGHT, 66);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL_2, 1, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT, hit_large);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, sound_get("hit_heavy"));

if has_rune("G")
{
    set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_TYPE, 0);
}

if has_rune ("O")
{
    set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_KNOCKBACK, 12);
    set_hitbox_value(AT_USPECIAL_2, 1, HG_KNOCKBACK_SCALING, 1);
}