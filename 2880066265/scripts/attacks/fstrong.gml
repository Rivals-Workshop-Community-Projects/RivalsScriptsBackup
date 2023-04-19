set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 2);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_FSTRONG, 3, AG_WINDOW_SFX_FRAME, 14);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_FSTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_FSTRONG,4);

//topbox
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -105);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 163);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 73);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 50);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));  //change
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_LOCKOUT, 10);

//sweet spot
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 85);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -51);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 60);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 106);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 12);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 50);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));  //change
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_LOCKOUT, 10);

//bonkbox
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 87);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -8);
set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 53);
set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 18);
set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 7);
set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 16);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 270);
set_hitbox_value(AT_FSTRONG, 3, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));  //change
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_LOCKOUT, 10);

// RUNE I PARTICLE
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, 4, HG_LIFETIME, 180);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_X, 88);	//230 - 124
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_Y, 0);	//142 - 142
set_hitbox_value(AT_FSTRONG, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 4, HG_DAMAGE, 10);
set_hitbox_value(AT_FSTRONG, 4, HG_ANGLE, 80);
set_hitbox_value(AT_FSTRONG, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSTRONG, 4, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_FSTRONG, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSTRONG, 4, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_SPRITE, sprite_get("empty_hurt"));
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_MASK, sprite_get("fstrong_shockfx_hurt"));
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_HSPEED, 12);
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_PROJECTILE_IS_TRANSCENDENT, 1);