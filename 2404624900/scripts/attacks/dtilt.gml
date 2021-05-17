set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DTILT, AG_OFF_LEDGE, 1);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_DTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED, 10);
set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_SFX, sound_get("dtilt"));

set_window_value(AT_DTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DTILT, 2);

set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 7);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 23);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -4);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 58);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 16);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 55);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, .25);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, sound_get("dtilt_hit"));
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DTILT, 1, HG_HIT_LOCKOUT, 3);

set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 23);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -4);
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 58);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 16);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 55);
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, .25);
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, sound_get("bair1_hit"));
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DTILT, 2, HG_HIT_LOCKOUT, 3);

set_hitbox_value(AT_DTILT, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 3, HG_LIFETIME, 11);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_X, 23);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_Y, -4);
set_hitbox_value(AT_DTILT, 3, HG_WIDTH, 58);
set_hitbox_value(AT_DTILT, 3, HG_HEIGHT, 16);
set_hitbox_value(AT_DTILT, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_DTILT, 3, HG_ANGLE, 55);
set_hitbox_value(AT_DTILT, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DTILT, 3, HG_KNOCKBACK_SCALING, .15);
set_hitbox_value(AT_DTILT, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DTILT, 3, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_DTILT, 3, HG_HIT_SFX, sound_get("clone_kick_hit"));
set_hitbox_value(AT_DTILT, 3, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_DTILT, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DTILT, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DTILT, 3, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DTILT, 3, HG_VISUAL_EFFECT, clone_hit);
set_hitbox_value(AT_DTILT, 3, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_DTILT, 3, HG_EFFECT, 0);

set_hitbox_value(AT_DTILT, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DTILT, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DTILT, 3, HG_EXTENDED_PARRY_STUN, 1);