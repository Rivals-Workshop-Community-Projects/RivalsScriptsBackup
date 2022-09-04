set_attack_value(42, AG_CATEGORY, 1);
set_attack_value(42, AG_SPRITE, sprite_get("uair2"));
set_attack_value(42, AG_NUM_WINDOWS, 3);
set_attack_value(42, AG_HAS_LANDING_LAG, 1);
set_attack_value(42, AG_LANDING_LAG, 4);
set_attack_value(42, AG_HURTBOX_SPRITE, sprite_get("uair2_hurt"));

set_window_value(42, 1, AG_WINDOW_LENGTH, 6);
set_window_value(42, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(42, 2, AG_WINDOW_LENGTH, 6);
set_window_value(42, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(42, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(42, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(42, 2, AG_WINDOW_SFX, sound_get("wild_claw"));

set_window_value(42, 3, AG_WINDOW_LENGTH, 17);
set_window_value(42, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(42, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(42, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(42, 1);

set_hitbox_value(42, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(42, 1, HG_WINDOW, 2);
set_hitbox_value(42, 1, HG_LIFETIME, 6);
set_hitbox_value(42, 1, HG_HITBOX_X, 0);
set_hitbox_value(42, 1, HG_HITBOX_Y, -130);
set_hitbox_value(42, 1, HG_WIDTH, 68);
set_hitbox_value(42, 1, HG_HEIGHT, 68);
set_hitbox_value(42, 1, HG_PRIORITY, 2);
set_hitbox_value(42, 1, HG_DAMAGE, 4);
set_hitbox_value(42, 1, HG_ANGLE, 100);
set_hitbox_value(42, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(42, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(42, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(42, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(42, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(42, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

if has_rune ("O")
{
    set_hitbox_value(42, 1, HG_BASE_KNOCKBACK, 12);
    set_hitbox_value(42, 1, HG_KNOCKBACK_SCALING, 1);
}