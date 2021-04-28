set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair_ground"));
set_attack_value(AT_BAIR, AG_AIR_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 5);
set_attack_value(AT_BAIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 12);

set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_BAIR, 3, AG_WINDOW_GOTO, 5);

set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 10);
//set_window_value(AT_BAIR, 4, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_BAIR, 4, AG_WINDOW_SFX_FRAME, 2);
//set_window_value(AT_BAIR, 4, AG_WINDOW_SFX, sound_get("shotgun_shoot"));
set_window_value(AT_BAIR, 4, AG_WINDOW_HSPEED, 8);
set_window_value(AT_BAIR, 4, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_BAIR, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_BAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_BAIR, 6);

set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -50);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -37);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 115);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 51);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 140);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, sound_get("shotgun3"));
set_hitbox_value(AT_BAIR, 1, HG_HIT_LOCKOUT, 2);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, 27);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -49);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 75);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 34);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 8);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 361);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_BAIR, 2, HG_HIT_LOCKOUT, 2);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_BAIR, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 4);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_X, -110);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y, -53);
set_hitbox_value(AT_BAIR, 3, HG_WIDTH, 82);
set_hitbox_value(AT_BAIR, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_BAIR, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE, 135);
set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_BAIR, 3, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_BAIR, 3, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_BAIR, 3, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT, 110);
set_hitbox_value(AT_BAIR, 3, HG_HIT_SFX, asset_get("sfx_abyss_hazard_hit"));
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_BAIR, 3, HG_HIT_LOCKOUT, 10);

set_hitbox_value(AT_BAIR, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_BAIR, 4, HG_WINDOW, 4);
set_hitbox_value(AT_BAIR, 4, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_BAIR, 4, HG_LIFETIME, 8);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_X, -135);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_Y, -53);
set_hitbox_value(AT_BAIR, 4, HG_WIDTH, 130);
set_hitbox_value(AT_BAIR, 4, HG_HEIGHT, 50);
set_hitbox_value(AT_BAIR, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_BAIR, 4, HG_DAMAGE, 6);
set_hitbox_value(AT_BAIR, 4, HG_ANGLE, 135);
set_hitbox_value(AT_BAIR, 4, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_BAIR, 4, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_BAIR, 4, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_BAIR, 4, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_BAIR, 4, HG_VISUAL_EFFECT, 109);
set_hitbox_value(AT_BAIR, 4, HG_HIT_SFX, asset_get("sfx_abyss_hazard_hit"));
set_hitbox_value(AT_BAIR, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_BAIR, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_BAIR, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_BAIR, 4, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_BAIR, 4, HG_PROJECTILE_PLASMA_SAFE, 1);

set_hitbox_value(AT_BAIR, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_BAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 5, HG_HITBOX_X, -50);
set_hitbox_value(AT_BAIR, 5, HG_HITBOX_Y, -37);
set_hitbox_value(AT_BAIR, 5, HG_WIDTH, 115);
set_hitbox_value(AT_BAIR, 5, HG_HEIGHT, 51);
set_hitbox_value(AT_BAIR, 5, HG_PRIORITY, 8);
set_hitbox_value(AT_BAIR, 5, HG_DAMAGE, 0);
set_hitbox_value(AT_BAIR, 5, HG_ANGLE, 140);
set_hitbox_value(AT_BAIR, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_BAIR, 5, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_BAIR, 5, HG_BASE_HITPAUSE, 6);
//set_hitbox_value(AT_BAIR, 5, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_BAIR, 5, HG_VISUAL_EFFECT, 128);
set_hitbox_value(AT_BAIR, 5, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
set_hitbox_value(AT_BAIR, 5, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_BAIR, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_BAIR, 5, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_BAIR, 5, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_BAIR, 5, HG_PROJECTILE_PLASMA_SAFE, 1);

set_hitbox_value(AT_BAIR, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_BAIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 6, HG_HITBOX_X, 27);
set_hitbox_value(AT_BAIR, 6, HG_HITBOX_Y, -49);
set_hitbox_value(AT_BAIR, 6, HG_WIDTH, 75);
set_hitbox_value(AT_BAIR, 6, HG_HEIGHT, 34);
set_hitbox_value(AT_BAIR, 6, HG_PRIORITY, 5);
set_hitbox_value(AT_BAIR, 6, HG_DAMAGE, 0);
set_hitbox_value(AT_BAIR, 6, HG_ANGLE, 140);
set_hitbox_value(AT_BAIR, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_BAIR, 6, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_BAIR, 6, HG_BASE_HITPAUSE, 6);
//set_hitbox_value(AT_BAIR, 6, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_BAIR, 6, HG_VISUAL_EFFECT, 128);
set_hitbox_value(AT_BAIR, 6, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
set_hitbox_value(AT_BAIR, 6, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_BAIR, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_BAIR, 6, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_BAIR, 6, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_BAIR, 6, HG_PROJECTILE_PLASMA_SAFE, 1);

set_hitbox_value(AT_BAIR, 1, HG_EFFECT, 0);
set_hitbox_value(AT_BAIR, 2, HG_EFFECT, 0);
set_hitbox_value(AT_BAIR, 3, HG_EFFECT, has_rune("A"));
set_hitbox_value(AT_BAIR, 4, HG_EFFECT, has_rune("A"));