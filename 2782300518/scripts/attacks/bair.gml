set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 7);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_SFX, sound_get("jab2"));

set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_BAIR, 1);

set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 7);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -20);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -27);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 130);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, .25)
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, .8)
set_hitbox_value(AT_BAIR, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

if has_rune ("O")
{
    set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 12);
    set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, 1);
}