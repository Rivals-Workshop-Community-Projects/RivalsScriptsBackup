set_attack_value(AT_DTHROW, AG_CATEGORY, 1);
set_attack_value(AT_DTHROW, AG_SPRITE, sprite_get("ou_dtilt"));
set_attack_value(AT_DTHROW, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DTHROW, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DTHROW, AG_LANDING_LAG, 4);
set_attack_value(AT_DTHROW, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

set_window_value(AT_DTHROW, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTHROW, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 0);

set_window_value(AT_DTHROW, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DTHROW, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTHROW, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_DTHROW, 2, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_DTHROW, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTHROW, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 5);
//set_window_value(AT_DTHROW, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DTHROW, 1);

set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTHROW, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DTHROW, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_X, 27);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_Y, -12);
set_hitbox_value(AT_DTHROW, 1, HG_WIDTH, 60);
set_hitbox_value(AT_DTHROW, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_DTHROW, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DTHROW, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DTHROW, 1, HG_ANGLE, 80);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DTHROW, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_HITPAUSE, .5);
set_hitbox_value(AT_DTHROW, 1, HG_HIT_LOCKOUT, 0);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DTHROW, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_DTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);