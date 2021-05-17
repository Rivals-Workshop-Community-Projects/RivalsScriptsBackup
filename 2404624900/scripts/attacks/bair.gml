set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 5);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

set_window_value(AT_BAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, sound_get("bair1"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_BAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_BAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_BAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_BAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 4, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_BAIR, 4, AG_WINDOW_SFX, sound_get("bair2"));

set_window_value(AT_BAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_BAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_BAIR, 2);

set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -30);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -18);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 42);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, sound_get("bair1_hit"));
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_BAIR, 1, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -30);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -18);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 60);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 55);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 130);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, sound_get("bair2_hit"));
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_BAIR, 2, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_BAIR, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_X, -30);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y, -18);
set_hitbox_value(AT_BAIR, 3, HG_WIDTH, 42);
set_hitbox_value(AT_BAIR, 3, HG_HEIGHT, 48);
set_hitbox_value(AT_BAIR, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE, 90);
set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_BAIR, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_BAIR, 3, HG_HIT_SFX, sound_get("clone_kick_hit"));
set_hitbox_value(AT_BAIR, 3, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_BAIR, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_BAIR, 4, HG_WINDOW, 4);
set_hitbox_value(AT_BAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_X, -30);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_Y, -18);
set_hitbox_value(AT_BAIR, 4, HG_WIDTH, 60);
set_hitbox_value(AT_BAIR, 4, HG_HEIGHT, 55);
set_hitbox_value(AT_BAIR, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_BAIR, 4, HG_ANGLE, 130);
set_hitbox_value(AT_BAIR, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_BAIR, 4, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_BAIR, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_BAIR, 4, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_BAIR, 4, HG_HIT_SFX, sound_get("clone_kick_hit"));
set_hitbox_value(AT_BAIR, 4, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT, clone_hit);

set_hitbox_value(AT_BAIR, 4, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_BAIR, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_BAIR, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_BAIR, 4, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_BAIR, 4, HG_VISUAL_EFFECT, clone_hit);

set_hitbox_value(AT_BAIR, 3, HG_EFFECT, 0);
set_hitbox_value(AT_BAIR, 4, HG_EFFECT, 0);

set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_BAIR, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_BAIR, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);

set_hitbox_value(AT_BAIR, 3, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_BAIR, 4, HG_EXTENDED_PARRY_STUN, 1);
