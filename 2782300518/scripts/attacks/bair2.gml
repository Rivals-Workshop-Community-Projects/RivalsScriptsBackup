set_attack_value(39, AG_CATEGORY, 1);
set_attack_value(39, AG_SPRITE, sprite_get("bair2"));
set_attack_value(39, AG_NUM_WINDOWS, 3);
set_attack_value(39, AG_HAS_LANDING_LAG, 1);
set_attack_value(39, AG_LANDING_LAG, 4);
set_attack_value(39, AG_HURTBOX_SPRITE, sprite_get("bair2_hurt"));

set_window_value(39, 1, AG_WINDOW_LENGTH, 6);
set_window_value(39, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(39, 2, AG_WINDOW_LENGTH, 7);
set_window_value(39, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(39, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(39, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(39, 2, AG_WINDOW_SFX, sound_get("motorbike_spin"));

set_window_value(39, 3, AG_WINDOW_LENGTH, 17);
set_window_value(39, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(39, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_num_hitboxes(39, 1);

set_hitbox_value(39, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(39, 1, HG_WINDOW, 2);
set_hitbox_value(39, 1, HG_SHAPE, 1);
set_hitbox_value(39, 1, HG_LIFETIME, 6);
set_hitbox_value(39, 1, HG_HITBOX_X, -86);
set_hitbox_value(39, 1, HG_HITBOX_Y, -30);
set_hitbox_value(39, 1, HG_WIDTH, 96);
set_hitbox_value(39, 1, HG_HEIGHT, 90);
set_hitbox_value(39, 1, HG_PRIORITY, 2);
set_hitbox_value(39, 1, HG_DAMAGE, 5);
set_hitbox_value(39, 1, HG_ANGLE, 179);
set_hitbox_value(39, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(39, 1, HG_KNOCKBACK_SCALING, .25)
set_hitbox_value(39, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(39, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

if has_rune ("O")
{
    set_hitbox_value(39, 1, HG_BASE_KNOCKBACK, 12);
    set_hitbox_value(39, 1, HG_KNOCKBACK_SCALING, 1);
}