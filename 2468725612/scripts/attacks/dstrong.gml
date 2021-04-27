set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX, sound_get("dstrong_swing"));
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX_FRAME, 21);

set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, sound_get("shotgun3"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_GOTO, 5);

set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_SFX, sound_get("shotgun_shoot"));

set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSTRONG, 6);

set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 42);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -45);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 46);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 113);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 13);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, sound_get("shotgun1"));
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_LOCKOUT, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 13);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -86);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 68);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 8);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 60);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_LOCKOUT, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW_CREATION_FRAME, 1);   
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 40);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, 16);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 60);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 82);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 270);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, 110);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, asset_get("sfx_abyss_hazard_hit"));
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_LOCKOUT, 10);

set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, 8);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, 40);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, 40);
set_hitbox_value(AT_DSTRONG, 4, HG_WIDTH, 50);
set_hitbox_value(AT_DSTRONG, 4, HG_HEIGHT, 130);
set_hitbox_value(AT_DSTRONG, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_DSTRONG, 4, HG_DAMAGE, 8);
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE, 270);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 4, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG, 4, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DSTRONG, 4, HG_VISUAL_EFFECT, 109);
set_hitbox_value(AT_DSTRONG, 4, HG_HIT_SFX, asset_get("sfx_abyss_hazard_hit"));
set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_PLASMA_SAFE, 1);

set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DSTRONG, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_X, 42);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_Y, -45);
set_hitbox_value(AT_DSTRONG, 5, HG_WIDTH, 46);
set_hitbox_value(AT_DSTRONG, 5, HG_HEIGHT, 113);
set_hitbox_value(AT_DSTRONG, 5, HG_PRIORITY, 8);
set_hitbox_value(AT_DSTRONG, 5, HG_DAMAGE, 0);
set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE, 270);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSTRONG, 5, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSTRONG, 5, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 5, HG_VISUAL_EFFECT, 123);
set_hitbox_value(AT_DSTRONG, 5, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
set_hitbox_value(AT_DSTRONG, 5, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSTRONG, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSTRONG, 5, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSTRONG, 5, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSTRONG, 5, HG_PROJECTILE_PLASMA_SAFE, 1);

set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSTRONG, 6, HG_WINDOW, 2);
set_hitbox_value(AT_DSTRONG, 6, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DSTRONG, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_X, 13);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_Y, -86);
set_hitbox_value(AT_DSTRONG, 6, HG_WIDTH, 68);
set_hitbox_value(AT_DSTRONG, 6, HG_HEIGHT, 50);
set_hitbox_value(AT_DSTRONG, 6, HG_PRIORITY, 6);
set_hitbox_value(AT_DSTRONG, 6, HG_DAMAGE, 0);
set_hitbox_value(AT_DSTRONG, 6, HG_ANGLE, 60);
set_hitbox_value(AT_DSTRONG, 6, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSTRONG, 6, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 6, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSTRONG, 6, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 6, HG_VISUAL_EFFECT, 123);
set_hitbox_value(AT_DSTRONG, 6, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
set_hitbox_value(AT_DSTRONG, 6, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSTRONG, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSTRONG, 6, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSTRONG, 6, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSTRONG, 6, HG_PROJECTILE_PLASMA_SAFE, 1);

set_hitbox_value(AT_DSTRONG, 1, HG_EFFECT, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_EFFECT, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_EFFECT, has_rune("A"));
set_hitbox_value(AT_DSTRONG, 4, HG_EFFECT, has_rune("A"));