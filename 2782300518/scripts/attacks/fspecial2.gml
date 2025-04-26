set_attack_value(AT_FSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_2, AG_OFF_LEDGE, 0);
set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecial2"));
set_attack_value(AT_FSPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("fspecial2_hurt"));
set_attack_value(AT_FSPECIAL_2, AG_MUNO_ATTACK_NAME, "FSpecial2 (Nitro Boost)");
set_attack_value(AT_FSPECIAL_2, AG_MUNO_ATTACK_MISC, "Can attack, jump, shield and strong cancel on hit or after 24 active frames.");

set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX, sound_get("motorbike_start"));
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 14);

set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 11);

set_num_hitboxes(AT_FSPECIAL_2, 1);

set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_LIFETIME, 14);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_X, 16);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WIDTH, 60);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_FINAL_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0.95);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT, hit_large);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_SFX, sound_get("hit_heavy"));

if has_rune ("O")
{
    set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 12);
    set_hitbox_value(AT_FSPECIAL_2, 1, HG_FINAL_BASE_KNOCKBACK, 10);
    set_hitbox_value(AT_FSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 1);
}
