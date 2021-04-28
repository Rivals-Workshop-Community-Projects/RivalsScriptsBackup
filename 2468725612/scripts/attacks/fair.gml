set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, sound_get("swing_heavy2"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 12);

set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FAIR, 2);

set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 18);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -61);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 90);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 8);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 11);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, sound_get("punch_heavy"));
set_hitbox_value(AT_FAIR, 1, HG_HIT_LOCKOUT, 2);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 18);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -61);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 90);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 90);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 6);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 0);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 361);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 8);
//set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, 123);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_PLASMA_SAFE, 1);