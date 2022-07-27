set_attack_value(44, AG_CATEGORY, 1);
set_attack_value(44, AG_SPRITE, sprite_get("nair2"));
set_attack_value(44, AG_NUM_WINDOWS, 3);
set_attack_value(44, AG_HAS_LANDING_LAG, 1);
set_attack_value(44, AG_LANDING_LAG, 4);
set_attack_value(44, AG_HURTBOX_SPRITE, sprite_get("nair2_hurt"));

set_window_value(44, 1, AG_WINDOW_LENGTH, 12);
set_window_value(44, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(44, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(44, 1, AG_WINDOW_SFX, sound_get("motorbike_uppercut"));
set_window_value(44, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(44, 2, AG_WINDOW_LENGTH, 10);
set_window_value(44, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(44, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(44, 3, AG_WINDOW_LENGTH, 10);
set_window_value(44, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(44, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(44, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(44, 1);

set_hitbox_value(44, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(44, 1, HG_WINDOW, 2);
set_hitbox_value(44, 1, HG_LIFETIME, 10);
set_hitbox_value(44, 1, HG_HITBOX_X, 0);
set_hitbox_value(44, 1, HG_HITBOX_Y, -59);
set_hitbox_value(44, 1, HG_WIDTH, 118);
set_hitbox_value(44, 1, HG_HEIGHT, 118);
set_hitbox_value(44, 1, HG_PRIORITY, 1);
set_hitbox_value(44, 1, HG_DAMAGE, 5);
set_hitbox_value(44, 1, HG_ANGLE, 80);
set_hitbox_value(44, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(44, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(44, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(44, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(44, 1, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(44, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(44, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(44, 1, HG_ANGLE_FLIPPER, 6);

if has_rune ("O")
{
    set_hitbox_value(44, 1, HG_BASE_KNOCKBACK, 12);
    set_hitbox_value(44, 1, HG_KNOCKBACK_SCALING, 1);
}