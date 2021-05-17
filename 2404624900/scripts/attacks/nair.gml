set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 2);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 8);


set_num_hitboxes(AT_NAIR, 2);

set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 1);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 8);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 65);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 65);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, sound_get("blade_hit8"));

set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 8);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 1);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -25);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 65);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 65);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, sound_get("blade_hit8"));

set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 8);
set_hitbox_value(AT_NAIR, 3, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_NAIR, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, 1);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -25);
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 65);
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 65);
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT, clone_hit);
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, sound_get("clone_sword_hit"));
set_hitbox_value(AT_NAIR, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NAIR, 3, HG_EFFECT, 0);
set_hitbox_value(AT_NAIR, 3, HG_PROJECTILE_PARRY_STUN, true);

set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT, clone_hit);

set_hitbox_value(AT_NAIR, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NAIR, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NAIR, 3, HG_EXTENDED_PARRY_STUN, 1);