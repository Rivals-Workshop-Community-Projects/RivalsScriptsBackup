set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 3);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, sound_get("swing_weak"));
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_JAB, 3, AG_WINDOW_HAS_WHIFFLAG, 1); 

set_num_hitboxes(AT_JAB, 2);

set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -26);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 70);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 38);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 35);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, sound_get("punch_medium"));
set_hitbox_value(AT_JAB, 1, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 30);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -26);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 70);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 38);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 0);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 35);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 6);
//set_hitbox_value(AT_JAB, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, 124);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_weak"));
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_PLASMA_SAFE, 1);