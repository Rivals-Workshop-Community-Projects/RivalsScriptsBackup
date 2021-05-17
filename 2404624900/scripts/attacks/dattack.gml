set_attack_value(AT_DATTACK, AG_CATEGORY, 2);
set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DATTACK, AG_OFF_LEDGE, 1);
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

set_window_value(AT_DATTACK, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_DATTACK, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 7);
set_window_value(AT_DATTACK, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DATTACK, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX, sound_get("dattack"));

set_window_value(AT_DATTACK, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED, 4);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DATTACK, 3, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_DATTACK, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DATTACK, 4, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DATTACK, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_DATTACK, 3);

set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 65);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -52);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 60);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 27);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 50);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, sound_get("blade_hit8"));
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_LOCKOUT, 2);

set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 51);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -36);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 54);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 24);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 50);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DATTACK, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, sound_get("blade_hit8"));
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_LOCKOUT, 2);

set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_X, 31);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_Y, -18);
set_hitbox_value(AT_DATTACK, 3, HG_WIDTH, 47);
set_hitbox_value(AT_DATTACK, 3, HG_HEIGHT, 32);
set_hitbox_value(AT_DATTACK, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_DATTACK, 3, HG_ANGLE, 50);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DATTACK, 3, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DATTACK, 3, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_DATTACK, 3, HG_HIT_SFX, sound_get("blade_hit8"));
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DATTACK, 3, HG_HIT_LOCKOUT, 2);

set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DATTACK, 4, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_X, 65);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_Y, -52);
set_hitbox_value(AT_DATTACK, 4, HG_WIDTH, 60);
set_hitbox_value(AT_DATTACK, 4, HG_HEIGHT, 27);
set_hitbox_value(AT_DATTACK, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_DATTACK, 4, HG_ANGLE, 50);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DATTACK, 4, HG_KNOCKBACK_SCALING, .25);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DATTACK, 4, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_DATTACK, 4, HG_HIT_SFX, sound_get("clone_sword_hit"));
set_hitbox_value(AT_DATTACK, 4, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DATTACK, 4, HG_HIT_LOCKOUT, 1);

set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DATTACK, 5, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_X, 51);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_Y, -36);
set_hitbox_value(AT_DATTACK, 5, HG_WIDTH, 54);
set_hitbox_value(AT_DATTACK, 5, HG_HEIGHT, 24);
set_hitbox_value(AT_DATTACK, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_DATTACK, 5, HG_ANGLE, 50);
set_hitbox_value(AT_DATTACK, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DATTACK, 5, HG_KNOCKBACK_SCALING, .25);
set_hitbox_value(AT_DATTACK, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DATTACK, 5, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_DATTACK, 5, HG_HIT_SFX, sound_get("clone_sword_hit"));
set_hitbox_value(AT_DATTACK, 5, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DATTACK, 5, HG_HIT_LOCKOUT, 1);

set_hitbox_value(AT_DATTACK, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DATTACK, 6, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 6, HG_HITBOX_X, 31);
set_hitbox_value(AT_DATTACK, 6, HG_HITBOX_Y, -18);
set_hitbox_value(AT_DATTACK, 6, HG_WIDTH, 47);
set_hitbox_value(AT_DATTACK, 6, HG_HEIGHT, 32);
set_hitbox_value(AT_DATTACK, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 6, HG_DAMAGE, 4);
set_hitbox_value(AT_DATTACK, 6, HG_ANGLE, 50);
set_hitbox_value(AT_DATTACK, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DATTACK, 6, HG_KNOCKBACK_SCALING, .25);
set_hitbox_value(AT_DATTACK, 6, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DATTACK, 6, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_DATTACK, 6, HG_HIT_SFX, sound_get("clone_sword_hit"));
set_hitbox_value(AT_DATTACK, 6, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_DATTACK, 6, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DATTACK, 6, HG_HIT_LOCKOUT, 1);

set_hitbox_value(AT_DATTACK, 4, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_DATTACK, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DATTACK, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DATTACK, 4, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DATTACK, 4, HG_VISUAL_EFFECT, clone_hit);

set_hitbox_value(AT_DATTACK, 5, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_DATTACK, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DATTACK, 5, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DATTACK, 5, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DATTACK, 5, HG_VISUAL_EFFECT, clone_hit);

set_hitbox_value(AT_DATTACK, 6, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_DATTACK, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DATTACK, 6, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DATTACK, 6, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DATTACK, 6, HG_VISUAL_EFFECT, clone_hit);

set_hitbox_value(AT_DATTACK, 4, HG_EFFECT, 0);
set_hitbox_value(AT_DATTACK, 5, HG_EFFECT, 0);
set_hitbox_value(AT_DATTACK, 6, HG_EFFECT, 0);

set_hitbox_value(AT_DATTACK, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DATTACK, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DATTACK, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DATTACK, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DATTACK, 6, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DATTACK, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 1);

set_hitbox_value(AT_DATTACK, 4, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DATTACK, 5, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DATTACK, 6, HG_EXTENDED_PARRY_STUN, 1);