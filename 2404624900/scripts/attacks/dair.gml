set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 9);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, sound_get("dair"));

set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED, 13);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_HSPEED, 9);
set_window_value(AT_DAIR, 2, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED, 13);
set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_HSPEED, 9);
set_window_value(AT_DAIR, 3, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_DAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);

set_num_hitboxes(AT_DAIR, 2);

set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 18);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -8);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 27);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 300);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, sound_get("bair2_hit"));
set_hitbox_value(AT_DAIR, 1, HG_HIT_LOCKOUT, 2);

set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 12);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 18);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -8);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 27);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 32);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 50);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, sound_get("dair2_hit"));
set_hitbox_value(AT_DAIR, 2, HG_HIT_LOCKOUT, 2);

set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 16);
set_hitbox_value(AT_DAIR, 3, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_DAIR, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, 18);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, -8);
set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 27);
set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 32);
set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 50);
set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, sound_get("clone_kick_hit"));
set_hitbox_value(AT_DAIR, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DAIR, 3, HG_EFFECT, 0);
set_hitbox_value(AT_DAIR, 3, HG_PROJECTILE_PARRY_STUN, true);

set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT, clone_hit);

set_hitbox_value(AT_DAIR, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DAIR, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DAIR, 3, HG_EXTENDED_PARRY_STUN, 1);