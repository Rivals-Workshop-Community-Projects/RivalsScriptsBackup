set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

set_window_value(AT_BAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, sound_get("throw"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 11);

set_window_value(AT_BAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_BAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_SFX, sound_get("throw"));
set_window_value(AT_BAIR, 3, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_BAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_BAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAME_START, 5);

set_num_hitboxes(AT_BAIR, 2);

set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 7);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, 4);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -18);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 24);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 24);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 120);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, sound_get("splat3"));
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_BAIR, 1, HG_PROJECTILE_SPRITE, sprite_get("pea"));
set_hitbox_value(AT_BAIR, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_BAIR, 1, HG_PROJECTILE_HSPEED, 20);
set_hitbox_value(AT_BAIR, 1, HG_PROJECTILE_VSPEED, 4);
set_hitbox_value(AT_BAIR, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_BAIR, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_BAIR, 1, HG_HITSTUN_MULTIPLIER, 0.6);

set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 7);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, 4);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 24);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 24);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 120);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, sound_get("splat2"));
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_SPRITE, sprite_get("pea"));
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_HSPEED, 20);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_VSPEED, 4);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_BAIR, 2, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_BAIR, 2, HG_HITSTUN_MULTIPLIER, 0.6);