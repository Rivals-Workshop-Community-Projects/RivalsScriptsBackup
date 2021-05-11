set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 5);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, sound_get("swing_medium"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 14);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UAIR, 14);

set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 27);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 68);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 40);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, sound_get("kick_heavy"));
set_hitbox_value(AT_UAIR, 1, HG_HIT_LOCKOUT, 17);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 36);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -57);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 81);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 48);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 10);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 60);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, sound_get("kick_heavy"));
set_hitbox_value(AT_UAIR, 2, HG_HIT_LOCKOUT, 9);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, 28);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -80);
set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 70);
set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 69);
set_hitbox_value(AT_UAIR, 3, HG_PRIORITY, 10);
set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 9);
set_hitbox_value(AT_UAIR, 3, HG_ANGLE, 80);
set_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_UAIR, 3, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UAIR, 3, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, sound_get("kick_heavy"));
set_hitbox_value(AT_UAIR, 3, HG_HIT_LOCKOUT, 7);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_UAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_UAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_X, -1);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_Y, -85);
set_hitbox_value(AT_UAIR, 4, HG_WIDTH, 59);
set_hitbox_value(AT_UAIR, 4, HG_HEIGHT, 91);
set_hitbox_value(AT_UAIR, 4, HG_PRIORITY, 9);
set_hitbox_value(AT_UAIR, 4, HG_DAMAGE, 8);
set_hitbox_value(AT_UAIR, 4, HG_ANGLE, 110);
set_hitbox_value(AT_UAIR, 4, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_UAIR, 4, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_UAIR, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 4, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_UAIR, 4, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_UAIR, 4, HG_HIT_SFX, sound_get("kick_medium"));
set_hitbox_value(AT_UAIR, 4, HG_HIT_LOCKOUT, 7);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_UAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 5, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_UAIR, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_X, -26);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_Y, -76);
set_hitbox_value(AT_UAIR, 5, HG_WIDTH, 61);
set_hitbox_value(AT_UAIR, 5, HG_HEIGHT, 84);
set_hitbox_value(AT_UAIR, 5, HG_PRIORITY, 9);
set_hitbox_value(AT_UAIR, 5, HG_DAMAGE, 8);
set_hitbox_value(AT_UAIR, 5, HG_ANGLE, 140);
set_hitbox_value(AT_UAIR, 5, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_UAIR, 5, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_UAIR, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 5, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_UAIR, 5, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_UAIR, 5, HG_HIT_SFX, sound_get("kick_medium"));
set_hitbox_value(AT_UAIR, 5, HG_HIT_LOCKOUT, 5);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_UAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 6, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_UAIR, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_X, -34);
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_Y, -72);
set_hitbox_value(AT_UAIR, 6, HG_WIDTH, 80);
set_hitbox_value(AT_UAIR, 6, HG_HEIGHT, 70);
set_hitbox_value(AT_UAIR, 6, HG_PRIORITY, 8);
set_hitbox_value(AT_UAIR, 6, HG_DAMAGE, 7);
set_hitbox_value(AT_UAIR, 6, HG_ANGLE, 150);
set_hitbox_value(AT_UAIR, 6, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_UAIR, 6, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_UAIR, 6, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 6, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_UAIR, 6, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_UAIR, 6, HG_HIT_SFX, sound_get("kick_weak"));
set_hitbox_value(AT_UAIR, 6, HG_HIT_LOCKOUT, 5);
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_UAIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 7, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 7, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_UAIR, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 7, HG_HITBOX_X, -46);
set_hitbox_value(AT_UAIR, 7, HG_HITBOX_Y, -44);
set_hitbox_value(AT_UAIR, 7, HG_WIDTH, 92);
set_hitbox_value(AT_UAIR, 7, HG_HEIGHT, 47);
set_hitbox_value(AT_UAIR, 7, HG_PRIORITY, 8);
set_hitbox_value(AT_UAIR, 7, HG_DAMAGE, 6);
set_hitbox_value(AT_UAIR, 7, HG_ANGLE, 160);
set_hitbox_value(AT_UAIR, 7, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_UAIR, 7, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_UAIR, 7, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 7, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_UAIR, 7, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_UAIR, 7, HG_HIT_SFX, sound_get("kick_weak"));
set_hitbox_value(AT_UAIR, 7, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_UAIR, 8, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UAIR, 8, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 8, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 8, HG_HITBOX_X, 27);
set_hitbox_value(AT_UAIR, 8, HG_HITBOX_Y, -35);
set_hitbox_value(AT_UAIR, 8, HG_WIDTH, 68);
set_hitbox_value(AT_UAIR, 8, HG_HEIGHT, 60);
set_hitbox_value(AT_UAIR, 8, HG_PRIORITY, 5);
set_hitbox_value(AT_UAIR, 8, HG_DAMAGE, 0);
set_hitbox_value(AT_UAIR, 8, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 8, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_UAIR, 8, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_UAIR, 8, HG_BASE_HITPAUSE, 9);
//set_hitbox_value(AT_UAIR, 8, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_UAIR, 8, HG_VISUAL_EFFECT, 128);
set_hitbox_value(AT_UAIR, 8, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
set_hitbox_value(AT_UAIR, 8, HG_HIT_LOCKOUT, 16);
set_hitbox_value(AT_UAIR, 8, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_UAIR, 8, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_UAIR, 8, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_UAIR, 8, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_UAIR, 8, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_UAIR, 8, HG_PROJECTILE_DESTROY_EFFECT, 1);

set_hitbox_value(AT_UAIR, 9, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UAIR, 9, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 9, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UAIR, 9, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 9, HG_HITBOX_X, 36);
set_hitbox_value(AT_UAIR, 9, HG_HITBOX_Y, -57);
set_hitbox_value(AT_UAIR, 9, HG_WIDTH, 81);
set_hitbox_value(AT_UAIR, 9, HG_HEIGHT, 48);
set_hitbox_value(AT_UAIR, 9, HG_PRIORITY, 5);
set_hitbox_value(AT_UAIR, 9, HG_DAMAGE, 0);
set_hitbox_value(AT_UAIR, 9, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 9, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_UAIR, 9, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_UAIR, 9, HG_BASE_HITPAUSE, 9);
//set_hitbox_value(AT_UAIR, 9, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_UAIR, 9, HG_VISUAL_EFFECT, 128);
set_hitbox_value(AT_UAIR, 9, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
set_hitbox_value(AT_UAIR, 9, HG_HIT_LOCKOUT, 8);
set_hitbox_value(AT_UAIR, 9, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_UAIR, 9, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_UAIR, 9, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_UAIR, 9, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_UAIR, 9, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_UAIR, 9, HG_PROJECTILE_DESTROY_EFFECT, 1);

set_hitbox_value(AT_UAIR, 10, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UAIR, 10, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 10, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UAIR, 10, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 10, HG_HITBOX_X, 28);
set_hitbox_value(AT_UAIR, 10, HG_HITBOX_Y, -80);
set_hitbox_value(AT_UAIR, 10, HG_WIDTH, 70);
set_hitbox_value(AT_UAIR, 10, HG_HEIGHT, 69);
set_hitbox_value(AT_UAIR, 10, HG_PRIORITY, 5);
set_hitbox_value(AT_UAIR, 10, HG_DAMAGE, 0);
set_hitbox_value(AT_UAIR, 10, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 10, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_UAIR, 10, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_UAIR, 10, HG_BASE_HITPAUSE, 9);
//set_hitbox_value(AT_UAIR, 10, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_UAIR, 10, HG_VISUAL_EFFECT, 128);
set_hitbox_value(AT_UAIR, 10, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
set_hitbox_value(AT_UAIR, 10, HG_HIT_LOCKOUT, 7);
set_hitbox_value(AT_UAIR, 10, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_UAIR, 10, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_UAIR, 10, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_UAIR, 10, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_UAIR, 10, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_UAIR, 10, HG_PROJECTILE_DESTROY_EFFECT, 1);

set_hitbox_value(AT_UAIR, 11, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UAIR, 11, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 11, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_UAIR, 11, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 11, HG_HITBOX_X, -1);
set_hitbox_value(AT_UAIR, 11, HG_HITBOX_Y, -85);
set_hitbox_value(AT_UAIR, 11, HG_WIDTH, 59);
set_hitbox_value(AT_UAIR, 11, HG_HEIGHT, 91);
set_hitbox_value(AT_UAIR, 11, HG_PRIORITY, 4);
set_hitbox_value(AT_UAIR, 11, HG_DAMAGE, 0);
set_hitbox_value(AT_UAIR, 11, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 11, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_UAIR, 11, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_UAIR, 11, HG_BASE_HITPAUSE, 6);
//set_hitbox_value(AT_UAIR, 11, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_UAIR, 11, HG_VISUAL_EFFECT, 128);
set_hitbox_value(AT_UAIR, 11, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
set_hitbox_value(AT_UAIR, 11, HG_HIT_LOCKOUT, 7);
set_hitbox_value(AT_UAIR, 11, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_UAIR, 11, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_UAIR, 11, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_UAIR, 11, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_UAIR, 11, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_UAIR, 11, HG_PROJECTILE_DESTROY_EFFECT, 1);

set_hitbox_value(AT_UAIR, 12, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UAIR, 12, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 12, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_UAIR, 12, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 12, HG_HITBOX_X, -26);
set_hitbox_value(AT_UAIR, 12, HG_HITBOX_Y, -76);
set_hitbox_value(AT_UAIR, 12, HG_WIDTH, 61);
set_hitbox_value(AT_UAIR, 12, HG_HEIGHT, 84);
set_hitbox_value(AT_UAIR, 12, HG_PRIORITY, 4);
set_hitbox_value(AT_UAIR, 12, HG_DAMAGE, 0);
set_hitbox_value(AT_UAIR, 12, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 12, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_UAIR, 12, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_UAIR, 12, HG_BASE_HITPAUSE, 6);
//set_hitbox_value(AT_UAIR, 12, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_UAIR, 12, HG_VISUAL_EFFECT, 128);
set_hitbox_value(AT_UAIR, 12, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
set_hitbox_value(AT_UAIR, 12, HG_HIT_LOCKOUT, 5);
set_hitbox_value(AT_UAIR, 12, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_UAIR, 12, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_UAIR, 12, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_UAIR, 12, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_UAIR, 12, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_UAIR, 12, HG_PROJECTILE_DESTROY_EFFECT, 1);

set_hitbox_value(AT_UAIR, 13, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UAIR, 13, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 13, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_UAIR, 13, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 13, HG_HITBOX_X, -34);
set_hitbox_value(AT_UAIR, 13, HG_HITBOX_Y, -72);
set_hitbox_value(AT_UAIR, 13, HG_WIDTH, 80);
set_hitbox_value(AT_UAIR, 13, HG_HEIGHT, 70);
set_hitbox_value(AT_UAIR, 13, HG_PRIORITY, 4);
set_hitbox_value(AT_UAIR, 13, HG_DAMAGE, 0);
set_hitbox_value(AT_UAIR, 13, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 13, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_UAIR, 13, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_UAIR, 13, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 13, HG_VISUAL_EFFECT, 128);
set_hitbox_value(AT_UAIR, 13, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
set_hitbox_value(AT_UAIR, 13, HG_HIT_LOCKOUT, 5);
set_hitbox_value(AT_UAIR, 13, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_UAIR, 13, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_UAIR, 13, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_UAIR, 13, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_UAIR, 13, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_UAIR, 13, HG_PROJECTILE_DESTROY_EFFECT, 1);

set_hitbox_value(AT_UAIR, 14, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UAIR, 14, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 14, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_UAIR, 14, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 14, HG_HITBOX_X, -46);
set_hitbox_value(AT_UAIR, 14, HG_HITBOX_Y, -44);
set_hitbox_value(AT_UAIR, 14, HG_WIDTH, 92);
set_hitbox_value(AT_UAIR, 14, HG_HEIGHT, 47);
set_hitbox_value(AT_UAIR, 14, HG_PRIORITY, 4);
set_hitbox_value(AT_UAIR, 14, HG_DAMAGE, 0);
set_hitbox_value(AT_UAIR, 14, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 14, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_UAIR, 14, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_UAIR, 14, HG_BASE_HITPAUSE, 6);
//set_hitbox_value(AT_UAIR, 14, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_UAIR, 14, HG_VISUAL_EFFECT, 128);
set_hitbox_value(AT_UAIR, 14, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
set_hitbox_value(AT_UAIR, 14, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_UAIR, 14, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_UAIR, 14, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_UAIR, 14, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_UAIR, 14, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_UAIR, 14, HG_PROJECTILE_DESTROY_EFFECT, 1);