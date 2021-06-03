set_attack_value(AT_FTHROW, AG_CATEGORY, 2);
set_attack_value(AT_FTHROW, AG_SPRITE, sprite_get("nthrow_lv1"));
set_attack_value(AT_FTHROW, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE, sprite_get("nthrow_hurt"));

set_window_value(AT_FTHROW, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));

set_window_value(AT_FTHROW, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_FTHROW, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_num_hitboxes(AT_FTHROW, 1);

set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FTHROW, 1, HG_WINDOW, 69);
set_hitbox_value(AT_FTHROW, 1, HG_LIFETIME, 99999);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_Y, 5);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_FTHROW, 1, HG_WIDTH, 60);
set_hitbox_value(AT_FTHROW, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_FTHROW, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FTHROW, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_FTHROW, 1, HG_ANGLE, 60);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FTHROW, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FTHROW, 1, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_FTHROW, 1, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_FTHROW, 1, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(AT_FTHROW, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FTHROW, 1, HG_HIT_SFX, asset_get("sfx_waterhit_heavy"));
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_FTHROW, 1, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_FTHROW, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FTHROW, 1, HG_FORCE_FLINCH, 2);