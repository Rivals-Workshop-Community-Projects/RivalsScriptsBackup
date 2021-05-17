set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_window_value(AT_UAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_UAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_SFX, sound_get("jab1"));

set_window_value(AT_UAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 7);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UAIR, 2);

set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, -15);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -54);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 47);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 71);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 80);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, sound_get("blade_hit5"));
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_UAIR, 1, HG_HIT_LOCKOUT, 2);

set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 3);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -85);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 43);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 80);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, sound_get("blade_hit5"));
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_UAIR, 2, HG_HIT_LOCKOUT, 2);

set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, -15);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -54);
set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 47);
set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 71);
set_hitbox_value(AT_UAIR, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_UAIR, 3, HG_ANGLE, 80);
set_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UAIR, 3, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UAIR, 3, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, sound_get("clone_sword_hit"));
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UAIR, 3, HG_HIT_LOCKOUT, 2);

set_hitbox_value(AT_UAIR, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_X, 3);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_Y, -85);
set_hitbox_value(AT_UAIR, 4, HG_WIDTH, 43);
set_hitbox_value(AT_UAIR, 4, HG_HEIGHT, 60);
set_hitbox_value(AT_UAIR, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_UAIR, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_UAIR, 4, HG_ANGLE, 80);
set_hitbox_value(AT_UAIR, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UAIR, 4, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(AT_UAIR, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UAIR, 4, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_UAIR, 4, HG_HIT_SFX, sound_get("clone_sword_hit"));
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UAIR, 4, HG_HIT_LOCKOUT, 2);

set_hitbox_value(AT_UAIR, 3, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_UAIR, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_UAIR, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_UAIR, 3, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, clone_hit);

set_hitbox_value(AT_UAIR, 4, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_UAIR, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_UAIR, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_UAIR, 4, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_UAIR, 4, HG_VISUAL_EFFECT, clone_hit);

set_hitbox_value(AT_UAIR, 3, HG_EFFECT, 0);
set_hitbox_value(AT_UAIR, 4, HG_EFFECT, 0);

set_hitbox_value(AT_UAIR, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_UAIR, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_UAIR, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_UAIR, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_UAIR, 3, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_UAIR, 4, HG_EXTENDED_PARRY_STUN, 1);
