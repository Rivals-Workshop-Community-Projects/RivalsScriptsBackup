set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);

set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 3);

set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSTRONG, 1);

set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 300);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, -20);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -60);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 35);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 35);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 1);

set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("bomb"));
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_HSPEED, 12);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_GRAVITY, 0.9);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_AIR_FRICTION, 0.3);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_IS_TRANSCENDENT, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);

//explosion
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 90);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 90);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, get_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY));
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, get_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE));
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, get_hitbox_value(AT_FSTRONG, 1, HG_ANGLE));
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, get_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK));
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, get_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING));
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, get_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE));
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, get_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING));
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, get_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX));
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, get_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT));
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, get_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP));

set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_ANIM_SPEED, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_IS_TRANSCENDENT, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);