set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));

//Start-up
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("mfx_star"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 6);

//Aiming
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);

//Jump
set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -12);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_absa_singlezap1"));
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX_FRAME, 4);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, 129);

set_num_hitboxes(AT_USPECIAL, 5);

//Detection hitbox
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 9);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 450);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, -1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -44);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 80);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 21);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_absa_orb_hit"));
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_PLASMA_SAFE, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_IGNORES_PROJECTILES, 1);

//Launch up
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 9);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, -1);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -44);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 90);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 90);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 14);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 197);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_clairen_tip_med"));
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_PLASMA_SAFE, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);

//Launch right
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 9);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, -1);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -44);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 90);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 90);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 30);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USPECIAL, 3, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, 197);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_clairen_tip_med"));
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_PLASMA_SAFE, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);

//Launch down
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 9);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, -1);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -44);
set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 90);
set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 90);
set_hitbox_value(AT_USPECIAL, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 270);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 4, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USPECIAL, 4, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT, 197);
set_hitbox_value(AT_USPECIAL, 4, HG_HIT_SFX, asset_get("sfx_clairen_tip_med"));
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_PLASMA_SAFE, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_DESTROY_EFFECT, 1);

//Launch left
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 9);
set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, -1);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -44);
set_hitbox_value(AT_USPECIAL, 5, HG_WIDTH, 90);
set_hitbox_value(AT_USPECIAL, 5, HG_HEIGHT, 90);
set_hitbox_value(AT_USPECIAL, 5, HG_PRIORITY, 5);
set_hitbox_value(AT_USPECIAL, 5, HG_DAMAGE, 5);
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE, 150);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL, 5, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USPECIAL, 5, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_USPECIAL, 5, HG_VISUAL_EFFECT, 197);
set_hitbox_value(AT_USPECIAL, 5, HG_HIT_SFX, asset_get("sfx_clairen_tip_med"));
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_PLASMA_SAFE, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_DESTROY_EFFECT, 1);