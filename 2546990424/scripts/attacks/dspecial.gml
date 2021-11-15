set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_bird_sidespecial"));
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_VSPEED, -12);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_chester_jump"));
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_SFX_FRAME, 4);

set_num_hitboxes(AT_DSPECIAL, 10);

set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 9);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 450);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, -1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -44);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 90);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 196);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_birdflap"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_PLASMA_SAFE, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_IGNORES_PROJECTILES, 1);

set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 9);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, -1);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -44);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 90);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 90);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 14);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 156);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_bird_upspecial"));
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_PLASMA_SAFE, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);

set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 9);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_X, -1);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, -44);
set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 90);
set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 90);
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 14);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, 156);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_bird_upspecial"));
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_PLASMA_SAFE, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);

set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW, 9);
set_hitbox_value(AT_DSPECIAL, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_X, -1);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_Y, -44);
set_hitbox_value(AT_DSPECIAL, 4, HG_WIDTH, 90);
set_hitbox_value(AT_DSPECIAL, 4, HG_HEIGHT, 90);
set_hitbox_value(AT_DSPECIAL, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL, 4, HG_DAMAGE, 7);
set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE, 30);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT, 156);
set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_bird_upspecial"));
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_PLASMA_SAFE, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_DESTROY_EFFECT, 1);

set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW, 9);
set_hitbox_value(AT_DSPECIAL, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_X, -1);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_Y, -44);
set_hitbox_value(AT_DSPECIAL, 5, HG_WIDTH, 90);
set_hitbox_value(AT_DSPECIAL, 5, HG_HEIGHT, 90);
set_hitbox_value(AT_DSPECIAL, 5, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL, 5, HG_DAMAGE, 7);
set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE, 340);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_VISUAL_EFFECT, 156);
set_hitbox_value(AT_DSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_bird_upspecial"));
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_PLASMA_SAFE, 0);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_DESTROY_EFFECT, 1);

set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 6, HG_WINDOW, 9);
set_hitbox_value(AT_DSPECIAL, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_X, -1);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_Y, -44);
set_hitbox_value(AT_DSPECIAL, 6, HG_WIDTH, 90);
set_hitbox_value(AT_DSPECIAL, 6, HG_HEIGHT, 90);
set_hitbox_value(AT_DSPECIAL, 6, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL, 6, HG_DAMAGE, 7);
set_hitbox_value(AT_DSPECIAL, 6, HG_ANGLE, 270);
set_hitbox_value(AT_DSPECIAL, 6, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSPECIAL, 6, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_VISUAL_EFFECT, 156);
set_hitbox_value(AT_DSPECIAL, 6, HG_HIT_SFX, asset_get("sfx_bird_upspecial"));
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_PLASMA_SAFE, 0);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_DESTROY_EFFECT, 1);

set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 7, HG_WINDOW, 9);
set_hitbox_value(AT_DSPECIAL, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_X, -1);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_Y, -44);
set_hitbox_value(AT_DSPECIAL, 7, HG_WIDTH, 90);
set_hitbox_value(AT_DSPECIAL, 7, HG_HEIGHT, 90);
set_hitbox_value(AT_DSPECIAL, 7, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL, 7, HG_DAMAGE, 7);
set_hitbox_value(AT_DSPECIAL, 7, HG_ANGLE, 120);
set_hitbox_value(AT_DSPECIAL, 7, HG_BASE_KNOCKBACK, 14);
set_hitbox_value(AT_DSPECIAL, 7, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_VISUAL_EFFECT, 156);
set_hitbox_value(AT_DSPECIAL, 7, HG_HIT_SFX, asset_get("sfx_bird_upspecial"));
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_PLASMA_SAFE, 0);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_DESTROY_EFFECT, 1);

set_hitbox_value(AT_DSPECIAL, 8, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 8, HG_WINDOW, 9);
set_hitbox_value(AT_DSPECIAL, 8, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 8, HG_HITBOX_X, -1);
set_hitbox_value(AT_DSPECIAL, 8, HG_HITBOX_Y, -44);
set_hitbox_value(AT_DSPECIAL, 8, HG_WIDTH, 90);
set_hitbox_value(AT_DSPECIAL, 8, HG_HEIGHT, 90);
set_hitbox_value(AT_DSPECIAL, 8, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL, 8, HG_DAMAGE, 7);
set_hitbox_value(AT_DSPECIAL, 8, HG_ANGLE, 150);
set_hitbox_value(AT_DSPECIAL, 8, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSPECIAL, 8, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DSPECIAL, 8, HG_VISUAL_EFFECT, 156);
set_hitbox_value(AT_DSPECIAL, 8, HG_HIT_SFX, asset_get("sfx_bird_upspecial"));
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_PLASMA_SAFE, 0);
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_DESTROY_EFFECT, 1);

set_hitbox_value(AT_DSPECIAL, 9, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 9, HG_WINDOW, 9);
set_hitbox_value(AT_DSPECIAL, 9, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 9, HG_HITBOX_X, -1);
set_hitbox_value(AT_DSPECIAL, 9, HG_HITBOX_Y, -44);
set_hitbox_value(AT_DSPECIAL, 9, HG_WIDTH, 90);
set_hitbox_value(AT_DSPECIAL, 9, HG_HEIGHT, 90);
set_hitbox_value(AT_DSPECIAL, 9, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL, 9, HG_DAMAGE, 7);
set_hitbox_value(AT_DSPECIAL, 9, HG_ANGLE, 200);
set_hitbox_value(AT_DSPECIAL, 9, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSPECIAL, 9, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DSPECIAL, 9, HG_VISUAL_EFFECT, 156);
set_hitbox_value(AT_DSPECIAL, 9, HG_HIT_SFX, asset_get("sfx_bird_upspecial"));
set_hitbox_value(AT_DSPECIAL, 9, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 9, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 9, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL, 9, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL, 9, HG_PROJECTILE_PLASMA_SAFE, 0);
set_hitbox_value(AT_DSPECIAL, 9, HG_PROJECTILE_DESTROY_EFFECT, 1);

set_hitbox_value(AT_DSPECIAL, 10, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 10, HG_WINDOW, 9);
set_hitbox_value(AT_DSPECIAL, 10, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL, 10, HG_LIFETIME, 450);
set_hitbox_value(AT_DSPECIAL, 10, HG_HITBOX_X, -1);
set_hitbox_value(AT_DSPECIAL, 10, HG_HITBOX_Y, -44);
set_hitbox_value(AT_DSPECIAL, 10, HG_WIDTH, 90);
set_hitbox_value(AT_DSPECIAL, 10, HG_HEIGHT, 90);
set_hitbox_value(AT_DSPECIAL, 10, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL, 10, HG_DAMAGE, 0);
set_hitbox_value(AT_DSPECIAL, 10, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 10, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DSPECIAL, 10, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_DSPECIAL, 10, HG_VISUAL_EFFECT, 196);
set_hitbox_value(AT_DSPECIAL, 10, HG_HIT_SFX, asset_get("sfx_birdflap"));
set_hitbox_value(AT_DSPECIAL, 10, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 10, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 10, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL, 10, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_DSPECIAL, 10, HG_PROJECTILE_PLASMA_SAFE, 0);
set_hitbox_value(AT_DSPECIAL, 10, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 10, HG_IGNORES_PROJECTILES, 1);