set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("btilt"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 5);
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("btilt_hurt"));

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX, sound_get("throw"));
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_EXTRA_1, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_EXTRA_1, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_SFX, sound_get("throw"));
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_EXTRA_1, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_EXTRA_1, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_LENGTH, 18);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_ANIM_FRAME_START, 5);

set_num_hitboxes(AT_EXTRA_1, 2);

set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 13);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, -30);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, -37);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 28);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 28);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 110);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, sound_get("splat3"));
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_SPRITE, sprite_get("pea"));
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_HSPEED, -12);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITSTUN_MULTIPLIER, 0.6);

set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_WINDOW, 4);
set_hitbox_value(AT_EXTRA_1, 2, HG_LIFETIME, 13);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_X, -28);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_Y, -35);
set_hitbox_value(AT_EXTRA_1, 2, HG_WIDTH, 28);
set_hitbox_value(AT_EXTRA_1, 2, HG_HEIGHT, 28);
set_hitbox_value(AT_EXTRA_1, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_ANGLE, 130);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_EXTRA_1, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_EXTRA_1, 2, HG_HIT_SFX, sound_get("splat2"));
set_hitbox_value(AT_EXTRA_1, 2, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_SPRITE, sprite_get("pea"));
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_HSPEED, -13);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITSTUN_MULTIPLIER, 0.6);