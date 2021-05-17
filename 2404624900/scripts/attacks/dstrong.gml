set_attack_value(AT_DSTRONG, AG_CATEGORY, 2);
set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

set_window_value(AT_DSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_DSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, sound_get("dstrong1"));

set_window_value(AT_DSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_VSPEED, -8.3);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_DSTRONG, 4, AG_WINDOW_TYPE, 8);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_VSPEED, 30);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_DSTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 24);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_SFX, sound_get("dstrong2"));
set_window_value(AT_DSTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSTRONG, 2);

set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 32);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 44);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 1, HG_TECHABLE, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, sound_get("blade_hit3"));
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_LOCKOUT, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 196);

set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 5);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -11);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 80);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 28);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 60);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, sound_get("dair2_hit"));
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_LOCKOUT, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 193);

set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 32);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 44);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 9);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 90);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_EFFECT, 11);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 17);
set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, sound_get("clone_sword_hit"));
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_LOCKOUT, 1);

set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW, 5);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, 4);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, -11);
set_hitbox_value(AT_DSTRONG, 4, HG_WIDTH, 80);
set_hitbox_value(AT_DSTRONG, 4, HG_HEIGHT, 28);
set_hitbox_value(AT_DSTRONG, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_DAMAGE, 7);
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE, 90);
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_EFFECT, 11);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSTRONG, 4, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_DSTRONG, 4, HG_HIT_SFX, sound_get("clone_kick_hit"));
set_hitbox_value(AT_DSTRONG, 4, HG_HIT_LOCKOUT, 1);

set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, clone_hit);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);

set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSTRONG, 4, HG_VISUAL_EFFECT, clone_hit);

set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);

set_hitbox_value(AT_DSTRONG, 3, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_EXTENDED_PARRY_STUN, 1);