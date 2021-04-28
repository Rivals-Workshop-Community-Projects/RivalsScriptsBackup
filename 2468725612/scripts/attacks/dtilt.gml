set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, sound_get("swing_heavy2"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DTILT, 2);

set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 25);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 96);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 33);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 8);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, sound_get("kick_heavy"));
set_hitbox_value(AT_DTILT, 1, HG_HIT_LOCKOUT, 3);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 25);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 96);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 33);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 7);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 0);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 8);
//set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, 123);
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
set_hitbox_value(AT_DTILT, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DTILT, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DTILT, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DTILT, 2, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DTILT, 2, HG_PROJECTILE_PLASMA_SAFE, 1);

