set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("get_on_bike"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 2);
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, asset_get("get_on_bike_hurt"));

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX, sound_get("motorbike_start"));

set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 8);

set_num_hitboxes(AT_EXTRA_1, 1)

set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 3);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, 14);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 60);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 60);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 0.5);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_LOCKOUT, 15);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

if has_rune ("O")
{
    set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 12);
    set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, 1)
}