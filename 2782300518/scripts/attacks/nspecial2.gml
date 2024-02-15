set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial2"));
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("nspecial2_hurt"));
set_attack_value(AT_NSPECIAL_2, AG_MUNO_ATTACK_NAME, "NSpecial2 (Bike Fu Wild Kick)");
set_attack_value(AT_NSPECIAL_2, AG_MUNO_ATTACK_MISC, "Lasts for as long as the pop up meter is active as long as Special is held down. Can be jump cancelled on hit.");

set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 13);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX, sound_get("wild_kick"));
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 24);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NSPECIAL_2, 2);

set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_Y, -52);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_X, 62);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 38);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT, hit_small);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITSTUN_MULTIPLIER, 1.5);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_SFX, sound_get("hit_light"));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_IGNORES_PROJECTILES, 1);

set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_TYPE, 1);
//set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 2);
//set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_Y, -52);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_X, 62);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_WIDTH, 38);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITPAUSE_SCALING, .65);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_VISUAL_EFFECT, hit_large);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HIT_SFX, sound_get("hit_heavy"));
set_hitbox_value(AT_NSPECIAL_2, 2, HG_IGNORES_PROJECTILES, 1);

if has_rune ("O")
{
    set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_KNOCKBACK, 12);
    set_hitbox_value(AT_NSPECIAL_2, 2, HG_KNOCKBACK_SCALING, 1);
}