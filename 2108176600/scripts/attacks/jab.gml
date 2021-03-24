set_attack_value(AT_JAB, AG_CATEGORY, 2);
set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 3);
set_attack_value(AT_JAB, AG_LANDING_LAG, 4);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));
set_attack_value(AT_JAB, AG_STRONG_CHARGE_WINDOW, 1);

set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 11);

set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 3);
//set_window_value(AT_JAB, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_JAB, 1);

set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 4);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 120);
set_hitbox_value(AT_JAB, 1, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, 32);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 38);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 78);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 90);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_JAB, 1, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);