set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial2"));
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("nspecial2_hurt"));

set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX, sound_get("wild_kick"));
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 80);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 16);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NSPECIAL_2, 16);

set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT, hit_small);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_IGNORES_PROJECTILES, 1);

set_hitbox_value(AT_NSPECIAL_2, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_X, 40);

set_hitbox_value(AT_NSPECIAL_2, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_WINDOW_CREATION_FRAME, 11);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_HITBOX_Y, -55);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_HITBOX_X, 40);

set_hitbox_value(AT_NSPECIAL_2, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_HITBOX_Y, -38);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_HITBOX_X, 20);

set_hitbox_value(AT_NSPECIAL_2, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_WINDOW_CREATION_FRAME, 21);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_HITBOX_Y, -28);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_HITBOX_X, 28);

set_hitbox_value(AT_NSPECIAL_2, 6, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL_2, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 6, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_2, 6, HG_WINDOW_CREATION_FRAME, 26);
set_hitbox_value(AT_NSPECIAL_2, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL_2, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL_2, 6, HG_HITBOX_Y, -52);
set_hitbox_value(AT_NSPECIAL_2, 6, HG_HITBOX_X, 20);

set_hitbox_value(AT_NSPECIAL_2, 7, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL_2, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 7, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_2, 7, HG_WINDOW_CREATION_FRAME, 31);
set_hitbox_value(AT_NSPECIAL_2, 7, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL_2, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL_2, 7, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NSPECIAL_2, 7, HG_HITBOX_X, 20);

set_hitbox_value(AT_NSPECIAL_2, 8, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL_2, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 8, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_2, 8, HG_WINDOW_CREATION_FRAME, 36);
set_hitbox_value(AT_NSPECIAL_2, 8, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL_2, 8, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL_2, 8, HG_HITBOX_Y, -38);
set_hitbox_value(AT_NSPECIAL_2, 8, HG_HITBOX_X, 40);

set_hitbox_value(AT_NSPECIAL_2, 9, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL_2, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 9, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_2, 9, HG_WINDOW_CREATION_FRAME, 41);
set_hitbox_value(AT_NSPECIAL_2, 9, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL_2, 9, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL_2, 9, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NSPECIAL_2, 9, HG_HITBOX_X, 20);

set_hitbox_value(AT_NSPECIAL_2, 10, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL_2, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 10, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_2, 10, HG_WINDOW_CREATION_FRAME, 46);
set_hitbox_value(AT_NSPECIAL_2, 10, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL_2, 10, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL_2, 10, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL_2, 10, HG_HITBOX_X, 40);

set_hitbox_value(AT_NSPECIAL_2, 11, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL_2, 11, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 11, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_2, 11, HG_WINDOW_CREATION_FRAME, 51);
set_hitbox_value(AT_NSPECIAL_2, 11, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL_2, 11, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL_2, 11, HG_HITBOX_Y, -55);
set_hitbox_value(AT_NSPECIAL_2, 11, HG_HITBOX_X, 40);

set_hitbox_value(AT_NSPECIAL_2, 12, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL_2, 12, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 12, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_2, 12, HG_WINDOW_CREATION_FRAME, 56);
set_hitbox_value(AT_NSPECIAL_2, 12, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL_2, 12, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL_2, 12, HG_HITBOX_Y, -38);
set_hitbox_value(AT_NSPECIAL_2, 12, HG_HITBOX_X, 20);

set_hitbox_value(AT_NSPECIAL_2, 13, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL_2, 13, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 13, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_2, 13, HG_WINDOW_CREATION_FRAME, 61);
set_hitbox_value(AT_NSPECIAL_2, 13, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL_2, 13, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL_2, 13, HG_HITBOX_Y, -28);
set_hitbox_value(AT_NSPECIAL_2, 13, HG_HITBOX_X, 28);

set_hitbox_value(AT_NSPECIAL_2, 14, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL_2, 14, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 14, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_2, 14, HG_WINDOW_CREATION_FRAME, 66);
set_hitbox_value(AT_NSPECIAL_2, 14, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL_2, 14, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL_2, 14, HG_HITBOX_Y, -52);
set_hitbox_value(AT_NSPECIAL_2, 14, HG_HITBOX_X, 20);

set_hitbox_value(AT_NSPECIAL_2, 15, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL_2, 15, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 15, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_2, 15, HG_WINDOW_CREATION_FRAME, 71);
set_hitbox_value(AT_NSPECIAL_2, 15, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL_2, 15, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL_2, 15, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NSPECIAL_2, 15, HG_HITBOX_X, 20);

set_hitbox_value(AT_NSPECIAL_2, 16, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 16, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_2, 16, HG_WINDOW_CREATION_FRAME, 76);
set_hitbox_value(AT_NSPECIAL_2, 16, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 16, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL_2, 16, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL_2, 16, HG_HITBOX_Y, -38);
set_hitbox_value(AT_NSPECIAL_2, 16, HG_HITBOX_X, 40);
set_hitbox_value(AT_NSPECIAL_2, 16, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL_2, 16, HG_HEIGHT, 30);
set_hitbox_value(AT_NSPECIAL_2, 16, HG_PRIORITY, 5);
set_hitbox_value(AT_NSPECIAL_2, 16, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL_2, 16, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL_2, 16, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL_2, 16, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_NSPECIAL_2, 16, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL_2, 16, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_NSPECIAL_2, 16, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_NSPECIAL_2, 16, HG_VISUAL_EFFECT, hit_large);
set_hitbox_value(AT_NSPECIAL_2, 16, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_NSPECIAL_2, 16, HG_IGNORES_PROJECTILES, 1);

if has_rune ("O")
{
    set_hitbox_value(AT_NSPECIAL_2, 16, HG_BASE_KNOCKBACK, 12);
    set_hitbox_value(AT_NSPECIAL_2, 16, HG_KNOCKBACK_SCALING, 1);
}