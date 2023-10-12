set_attack_value(AT_EXTRA_1, AG_CATEGORY, 1);
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("dair2"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 5);
set_attack_value(AT_EXTRA_1, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_EXTRA_1, AG_LANDING_LAG, 9);
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("dair2_hurt"));
//set_attack_value(AT_EXTRA_1, AG_MUNO_ATTACK_NAME, "DAir2");

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX_FRAME, 11);

set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_EXTRA_1, 1);

set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, -6);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 40);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 88);
set_hitbox_value(AT_EXTRA_1, 1, HG_SHAPE, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 270);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, .6)
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT, hit_large);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, sound_get("hit_heavy"));


if has_rune ("O")
{
    set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 12);
    set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, 1)
}