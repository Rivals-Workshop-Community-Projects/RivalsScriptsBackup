set_attack_value(AT_USPECIAL_2, AG_CATEGORY, 1);
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("ou_uair"));
set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USPECIAL_2, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_USPECIAL_2, AG_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USPECIAL_2, 1);

set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_Y, -29);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WIDTH, 44);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HEIGHT, 44);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL_2, 1, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_LOCKOUT, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);