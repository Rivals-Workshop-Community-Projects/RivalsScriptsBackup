set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG, AG_CATEGORY, 2);
set_attack_value(AT_USTRONG, AG_OFF_LEDGE, 1);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HSPEED, 3.5);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sound_get("ustrong"));

set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USTRONG, 3, AG_WINDOW_VSPEED, -7);
set_window_value(AT_USTRONG, 3, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 13);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_VSPEED, 4.5);
set_window_value(AT_USTRONG, 4, AG_WINDOW_VSPEED_TYPE, 0);

set_num_hitboxes(AT_USTRONG, 5);

set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 3);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -11);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 43);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 80);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, sound_get("blade_hit4"));
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 196);

set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 22);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -39);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 30);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 52);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 80);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, sound_get("blade_hit4"));
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 196);

set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 36);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -63);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 22);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 58);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 9);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 80);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, sound_get("blade_hit4"));
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 196);

set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, 10);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -84);
set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 33);
set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 32);
set_hitbox_value(AT_USTRONG, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 7);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 4, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USTRONG, 4, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, sound_get("blade_hit6"));
set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT, 194);

set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USTRONG, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_X, 34);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_Y, -66);
set_hitbox_value(AT_USTRONG, 5, HG_WIDTH, 29);
set_hitbox_value(AT_USTRONG, 5, HG_HEIGHT, 34);
set_hitbox_value(AT_USTRONG, 5, HG_PRIORITY, 5);
set_hitbox_value(AT_USTRONG, 5, HG_DAMAGE, 7);
set_hitbox_value(AT_USTRONG, 5, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 5, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USTRONG, 5, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 5, HG_HIT_SFX, sound_get("blade_hit6"));
set_hitbox_value(AT_USTRONG, 5, HG_VISUAL_EFFECT, 194);

set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG, 6, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_X, 3);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_Y, -11);
set_hitbox_value(AT_USTRONG, 6, HG_WIDTH, 43);
set_hitbox_value(AT_USTRONG, 6, HG_HEIGHT, 30);
set_hitbox_value(AT_USTRONG, 6, HG_PRIORITY, 4);
set_hitbox_value(AT_USTRONG, 6, HG_DAMAGE, 8);
set_hitbox_value(AT_USTRONG, 6, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 6, HG_BASE_KNOCKBACK, 13);
set_hitbox_value(AT_USTRONG, 6, HG_EFFECT, 11);
set_hitbox_value(AT_USTRONG, 6, HG_BASE_HITPAUSE, 13);
set_hitbox_value(AT_USTRONG, 6, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 6, HG_HIT_SFX, sound_get("clone_sword_hit"));

set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG, 7, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 7, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_X, 22);
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_Y, -39);
set_hitbox_value(AT_USTRONG, 7, HG_WIDTH, 30);
set_hitbox_value(AT_USTRONG, 7, HG_HEIGHT, 52);
set_hitbox_value(AT_USTRONG, 7, HG_PRIORITY, 4);
set_hitbox_value(AT_USTRONG, 7, HG_DAMAGE, 8);
set_hitbox_value(AT_USTRONG, 7, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 7, HG_BASE_KNOCKBACK, 13);
set_hitbox_value(AT_USTRONG, 7, HG_EFFECT, 11);
set_hitbox_value(AT_USTRONG, 7, HG_BASE_HITPAUSE, 13);
set_hitbox_value(AT_USTRONG, 7, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 7, HG_HIT_SFX, sound_get("clone_sword_hit"));

set_hitbox_value(AT_USTRONG, 8, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG, 8, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 8, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 8, HG_HITBOX_X, 36);
set_hitbox_value(AT_USTRONG, 8, HG_HITBOX_Y, -63);
set_hitbox_value(AT_USTRONG, 8, HG_WIDTH, 22);
set_hitbox_value(AT_USTRONG, 8, HG_HEIGHT, 58);
set_hitbox_value(AT_USTRONG, 8, HG_PRIORITY, 4);
set_hitbox_value(AT_USTRONG, 8, HG_DAMAGE, 8);
set_hitbox_value(AT_USTRONG, 8, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 8, HG_BASE_KNOCKBACK, 13);
set_hitbox_value(AT_USTRONG, 8, HG_EFFECT, 11);
set_hitbox_value(AT_USTRONG, 8, HG_BASE_HITPAUSE, 13);
set_hitbox_value(AT_USTRONG, 8, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_USTRONG, 8, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 8, HG_HIT_SFX, sound_get("clone_sword_hit"));

set_hitbox_value(AT_USTRONG, 9, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG, 9, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 9, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USTRONG, 9, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 9, HG_HITBOX_X, 10);
set_hitbox_value(AT_USTRONG, 9, HG_HITBOX_Y, -84);
set_hitbox_value(AT_USTRONG, 9, HG_WIDTH, 33);
set_hitbox_value(AT_USTRONG, 9, HG_HEIGHT, 32);
set_hitbox_value(AT_USTRONG, 9, HG_PRIORITY, 4);
set_hitbox_value(AT_USTRONG, 9, HG_DAMAGE, 7);
set_hitbox_value(AT_USTRONG, 9, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 9, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USTRONG, 9, HG_EFFECT, 11);
set_hitbox_value(AT_USTRONG, 9, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_USTRONG, 9, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_USTRONG, 9, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 9, HG_HIT_SFX, sound_get("clone_sword_hit"));

set_hitbox_value(AT_USTRONG, 10, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG, 10, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 10, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USTRONG, 10, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 10, HG_HITBOX_X, 34);
set_hitbox_value(AT_USTRONG, 10, HG_HITBOX_Y, -66);
set_hitbox_value(AT_USTRONG, 10, HG_WIDTH, 29);
set_hitbox_value(AT_USTRONG, 10, HG_HEIGHT, 34);
set_hitbox_value(AT_USTRONG, 10, HG_PRIORITY, 4);
set_hitbox_value(AT_USTRONG, 10, HG_DAMAGE, 7);
set_hitbox_value(AT_USTRONG, 10, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 10, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USTRONG, 10, HG_EFFECT, 11);
set_hitbox_value(AT_USTRONG, 10, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_USTRONG, 10, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_USTRONG, 10, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 10, HG_HIT_SFX, sound_get("clone_sword_hit"));

set_hitbox_value(AT_USTRONG, 6, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_USTRONG, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USTRONG, 6, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USTRONG, 6, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_USTRONG, 6, HG_VISUAL_EFFECT, clone_hit);

set_hitbox_value(AT_USTRONG, 7, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_USTRONG, 7, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USTRONG, 7, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USTRONG, 7, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_USTRONG, 7, HG_VISUAL_EFFECT, clone_hit);

set_hitbox_value(AT_USTRONG, 8, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_USTRONG, 8, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USTRONG, 8, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USTRONG, 8, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_USTRONG, 8, HG_VISUAL_EFFECT, clone_hit);

set_hitbox_value(AT_USTRONG, 9, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_USTRONG, 9, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USTRONG, 9, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USTRONG, 9, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_USTRONG, 9, HG_VISUAL_EFFECT, clone_hit);

set_hitbox_value(AT_USTRONG, 10, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_USTRONG, 10, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USTRONG, 10, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USTRONG, 10, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_USTRONG, 10, HG_VISUAL_EFFECT, clone_hit);

set_hitbox_value(AT_USTRONG, 1, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_USTRONG, 4, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_USTRONG, 5, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_USTRONG, 6, HG_HIT_LOCKOUT, 3);
set_hitbox_value(AT_USTRONG, 7, HG_HIT_LOCKOUT, 3);
set_hitbox_value(AT_USTRONG, 8, HG_HIT_LOCKOUT, 3);
set_hitbox_value(AT_USTRONG, 9, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_USTRONG, 10, HG_HIT_LOCKOUT, 1);

set_hitbox_value(AT_USTRONG, 6,  HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 6,  HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 7,  HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 7,  HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 8,  HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 8,  HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 9,  HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 9,  HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 10,  HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 10,  HG_PROJECTILE_GROUND_BEHAVIOR, 1);

set_hitbox_value(AT_USTRONG, 6, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_USTRONG, 7, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_USTRONG, 8, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_USTRONG, 9, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_USTRONG, 10, HG_EXTENDED_PARRY_STUN, 1);