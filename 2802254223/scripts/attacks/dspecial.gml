set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 2);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_oly_nspecial_shoot"));

set_num_hitboxes(AT_DSPECIAL, 0);

set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 108);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 108);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_ell_dspecial_explosion_1"));

set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 150);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 150);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, -7);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("mfx_hp_spawn"));

//DSpecial Club
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 160);
set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 160);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 12);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, 55);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSPECIAL, 3, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_LOCKOUT, 5);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_zetter_fireball_fire"));

set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL, 4, HG_WIDTH, 108);
set_hitbox_value(AT_DSPECIAL, 4, HG_HEIGHT, 108);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 4, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITPAUSE_SCALING, .4);
//set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_LOCKOUT, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_zetter_fireball_fire"));

//NSpecial Heart Hitbox
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL, 5, HG_WIDTH, 100);
set_hitbox_value(AT_DSPECIAL, 5, HG_HEIGHT, 100);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_KNOCKBACK, 8);
//set_hitbox_value(AT_DSPECIAL, 5, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_HITPAUSE, 10);
//set_hitbox_value(AT_DSPECIAL, 5, HG_HITPAUSE_SCALING, .4);
//set_hitbox_value(AT_DSPECIAL, 5, HG_HIT_LOCKOUT, 2);
set_hitbox_value(AT_DSPECIAL, 5, HG_VISUAL_EFFECT, heartHit);
set_hitbox_value(AT_DSPECIAL, 5, HG_HIT_SFX, asset_get("mfx_hp_spawn"));

//NSpecial Club
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 6, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL, 6, HG_WIDTH, 160);
set_hitbox_value(AT_DSPECIAL, 6, HG_HEIGHT, 160);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 6, HG_DAMAGE, 12);
set_hitbox_value(AT_DSPECIAL, 6, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL, 6, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DSPECIAL, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 6, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_DSPECIAL, 6, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_HIT_LOCKOUT, 2);
set_hitbox_value(AT_DSPECIAL, 6, HG_HIT_SFX, asset_get("sfx_zetter_fireball_fire"));