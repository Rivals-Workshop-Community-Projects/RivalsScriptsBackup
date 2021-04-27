set_attack_value(AT_DSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_AIR, AG_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DSPECIAL_AIR, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL_AIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("dspecial_air_hurt"));

set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX, sound_get("dspecial_start"));
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 15);

set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HSPEED, 2);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_VSPEED, 5);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_GOTO, 4);

set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_HSPEED, -3);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_VSPEED, -5);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_SFX, sound_get("shotgun_shoot"));
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_GOTO, 7);

set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_SFX, sound_get("dspecial_end"));
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_SFX_FRAME, 1);

set_num_hitboxes(AT_DSPECIAL_AIR, 11);

set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_Y, -3);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WIDTH, 43);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PRIORITY, 9);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE, 290);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HIT_SFX, sound_get("shotgun2"));

set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_X, 71);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_Y, 35);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WIDTH, 45);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HEIGHT, 62);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PRIORITY, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_ANGLE, 290);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HIT_SFX, sound_get("shotgun2"));

set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_LIFETIME, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_X, 40);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_Y, -3);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WIDTH, 43);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PRIORITY, 9);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_DAMAGE, 15);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_ANGLE, 290);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_EFFECT, 11);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_VISUAL_EFFECT, 127);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));

set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_LIFETIME, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HITBOX_X, 71);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HITBOX_Y, 35);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_WIDTH, 45);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HEIGHT, 62);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_PRIORITY, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_DAMAGE, 15);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_ANGLE, 290);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_EFFECT, 11);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_VISUAL_EFFECT, 127);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));

set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_HITBOX_X, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_HITBOX_Y, -12);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_WIDTH, 106);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_HEIGHT, 38);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_PRIORITY, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_DAMAGE, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_GROUNDEDNESS, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(AT_DSPECIAL_AIR, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 6, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 6, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 6, HG_HITBOX_X, 115);
set_hitbox_value(AT_DSPECIAL_AIR, 6, HG_HITBOX_Y, 59);
set_hitbox_value(AT_DSPECIAL_AIR, 6, HG_WIDTH, 50);
set_hitbox_value(AT_DSPECIAL_AIR, 6, HG_HEIGHT, 50);
set_hitbox_value(AT_DSPECIAL_AIR, 6, HG_PRIORITY, 9);
set_hitbox_value(AT_DSPECIAL_AIR, 6, HG_DAMAGE, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 6, HG_ANGLE, 290);
set_hitbox_value(AT_DSPECIAL_AIR, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL_AIR, 6, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_DSPECIAL_AIR, 6, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_DSPECIAL_AIR, 6, HG_HITPAUSE_SCALING, 1.3);
set_hitbox_value(AT_DSPECIAL_AIR, 6, HG_VISUAL_EFFECT, 110);
set_hitbox_value(AT_DSPECIAL_AIR, 6, HG_HIT_SFX, asset_get("sfx_abyss_hazard_hit"));
set_hitbox_value(AT_DSPECIAL_AIR, 6, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL_AIR, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_AIR, 6, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL_AIR, 6, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL_AIR, 6, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 6, HG_HIT_LOCKOUT, 10);

set_hitbox_value(AT_DSPECIAL_AIR, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 7, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 7, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 7, HG_LIFETIME, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 7, HG_HITBOX_X, 115);
set_hitbox_value(AT_DSPECIAL_AIR, 7, HG_HITBOX_Y, 59);
set_hitbox_value(AT_DSPECIAL_AIR, 7, HG_WIDTH, 50);
set_hitbox_value(AT_DSPECIAL_AIR, 7, HG_HEIGHT, 50);
set_hitbox_value(AT_DSPECIAL_AIR, 7, HG_PRIORITY, 9);
set_hitbox_value(AT_DSPECIAL_AIR, 7, HG_DAMAGE, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 7, HG_ANGLE, 290);
set_hitbox_value(AT_DSPECIAL_AIR, 7, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL_AIR, 7, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_DSPECIAL_AIR, 7, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_DSPECIAL_AIR, 7, HG_HITPAUSE_SCALING, 1.3);
set_hitbox_value(AT_DSPECIAL_AIR, 7, HG_VISUAL_EFFECT, 110);
set_hitbox_value(AT_DSPECIAL_AIR, 7, HG_HIT_SFX, asset_get("sfx_abyss_hazard_hit"));
set_hitbox_value(AT_DSPECIAL_AIR, 7, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL_AIR, 7, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_AIR, 7, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL_AIR, 7, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL_AIR, 7, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 7, HG_HIT_LOCKOUT, 10);

set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_LIFETIME, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_HITBOX_X, 141);
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_HITBOX_Y, 90);
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_WIDTH, 45);
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_HEIGHT, 45);
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_PRIORITY, 9);
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_DAMAGE, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_ANGLE, 290);
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_HITPAUSE_SCALING, 1.3);
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_VISUAL_EFFECT, 109);
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_HIT_SFX, asset_get("sfx_abyss_hazard_hit"));
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_HIT_LOCKOUT, 10);

set_hitbox_value(AT_DSPECIAL_AIR, 9, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 9, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 9, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 9, HG_LIFETIME, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 9, HG_HITBOX_X, 168);
set_hitbox_value(AT_DSPECIAL_AIR, 9, HG_HITBOX_Y, 115);
set_hitbox_value(AT_DSPECIAL_AIR, 9, HG_WIDTH, 40);
set_hitbox_value(AT_DSPECIAL_AIR, 9, HG_HEIGHT, 40);
set_hitbox_value(AT_DSPECIAL_AIR, 9, HG_PRIORITY, 9);
set_hitbox_value(AT_DSPECIAL_AIR, 9, HG_DAMAGE, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 9, HG_ANGLE, 290);
set_hitbox_value(AT_DSPECIAL_AIR, 9, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 9, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_DSPECIAL_AIR, 9, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_DSPECIAL_AIR, 9, HG_HITPAUSE_SCALING, 1.3);
set_hitbox_value(AT_DSPECIAL_AIR, 9, HG_VISUAL_EFFECT, 109);
set_hitbox_value(AT_DSPECIAL_AIR, 9, HG_HIT_SFX, asset_get("sfx_abyss_hazard_hit"));
set_hitbox_value(AT_DSPECIAL_AIR, 9, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL_AIR, 9, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_AIR, 9, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL_AIR, 9, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL_AIR, 9, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 9, HG_HIT_LOCKOUT, 10);

set_hitbox_value(AT_DSPECIAL_AIR, 10, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 10, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 10, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 10, HG_HITBOX_X, 40);
set_hitbox_value(AT_DSPECIAL_AIR, 10, HG_HITBOX_Y, -3);
set_hitbox_value(AT_DSPECIAL_AIR, 10, HG_WIDTH, 43);
set_hitbox_value(AT_DSPECIAL_AIR, 10, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL_AIR, 10, HG_PRIORITY, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 10, HG_DAMAGE, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 10, HG_ANGLE, 290);
set_hitbox_value(AT_DSPECIAL_AIR, 10, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 10, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_DSPECIAL_AIR, 10, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_DSPECIAL_AIR, 10, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DSPECIAL_AIR, 10, HG_VISUAL_EFFECT, 129);
set_hitbox_value(AT_DSPECIAL_AIR, 10, HG_HIT_SFX, asset_get("sfx_clairen_poke_strong"));
set_hitbox_value(AT_DSPECIAL_AIR, 10, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL_AIR, 10, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_AIR, 10, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL_AIR, 10, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL_AIR, 10, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 10, HG_HIT_LOCKOUT, 10);

set_hitbox_value(AT_DSPECIAL_AIR, 11, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 11, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 11, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 11, HG_HITBOX_X, 71);
set_hitbox_value(AT_DSPECIAL_AIR, 11, HG_HITBOX_Y, 35);
set_hitbox_value(AT_DSPECIAL_AIR, 11, HG_WIDTH, 45);
set_hitbox_value(AT_DSPECIAL_AIR, 11, HG_HEIGHT, 62);
set_hitbox_value(AT_DSPECIAL_AIR, 11, HG_PRIORITY, 7);
set_hitbox_value(AT_DSPECIAL_AIR, 11, HG_DAMAGE, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 11, HG_ANGLE, 290);
set_hitbox_value(AT_DSPECIAL_AIR, 11, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 11, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_DSPECIAL_AIR, 11, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_DSPECIAL_AIR, 11, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DSPECIAL_AIR, 11, HG_VISUAL_EFFECT, 129);
set_hitbox_value(AT_DSPECIAL_AIR, 11, HG_HIT_SFX, asset_get("sfx_clairen_poke_strong"));
set_hitbox_value(AT_DSPECIAL_AIR, 11, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL_AIR, 11, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_AIR, 11, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL_AIR, 11, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL_AIR, 11, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 11, HG_HIT_LOCKOUT, 10);

set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_EFFECT, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_EFFECT, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_EFFECT, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 6, HG_EFFECT, has_rune("A"));
set_hitbox_value(AT_DSPECIAL_AIR, 7, HG_EFFECT, has_rune("A"));
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_EFFECT, has_rune("A"));
set_hitbox_value(AT_DSPECIAL_AIR, 9, HG_EFFECT, has_rune("A"));