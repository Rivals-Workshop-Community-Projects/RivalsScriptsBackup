set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, sound_get("swing_heavy1"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FTILT, 2);

set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 42);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -38);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 75);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 36);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 11);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, sound_get("kick_medium"));
set_hitbox_value(AT_FTILT, 1, HG_HIT_LOCKOUT, 3);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 42);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -38);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 75);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 36);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 0);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 361);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 5);
//set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, 123);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_PLASMA_SAFE, 1);