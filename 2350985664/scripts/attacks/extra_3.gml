// Grab familiar
set_attack_value(AT_EXTRA_3, AG_CATEGORY, 1);
set_attack_value(AT_EXTRA_3, AG_SPRITE, sprite_get("grab_endlag"));
set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, sprite_get("grab_endlag_hurt"));
set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_EXTRA_3, AG_LANDING_LAG, 15);

set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 1)


// grab
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -15);
set_hitbox_value(AT_EXTRA_3, 1, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 60);
set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 65);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, grab_fx );
set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, sound_get("grab"));
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_DESTROY_EFFECT, effect_nothing);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_LOCKOUT, 20);



