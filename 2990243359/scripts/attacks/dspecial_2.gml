set_attack_value(AT_DSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get("dspecial2"));
set_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("dspecial2_hurt"));
set_attack_value(AT_DSPECIAL_2, AG_USES_CUSTOM_GRAVITY, 1);

//Startup
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
//set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_absa_boltcloud"));
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);

//Raise Trident (Summons Cloud)
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_CUSTOM_GRAVITY, 1);

//Brings Lightning
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_LENGTH, 25);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_GOTO, 5);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.4);

//Lightning Strike
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_SFX, asset_get("sfx_absa_uair"));
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_CUSTOM_GRAVITY, 1);

//Endlag
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_num_hitboxes(AT_DSPECIAL_2, 2);

//Trident Strike
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_X, 13);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_Y, -135);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WIDTH, 70);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT, 197);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));

//Body Strike
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_X, -4);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_Y, -45);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WIDTH, 100);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HEIGHT, 90);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PRIORITY, 7);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_VISUAL_EFFECT, 21);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_absa_orb_hit"));

//Remote Trident Strike
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_WINDOW, 0);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_X, 13);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_Y, -145);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_WIDTH, 70);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HEIGHT, 70);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PRIORITY, 10);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_VISUAL_EFFECT, 197);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);

//Remote Trident Strike (Ground)
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_WINDOW, 0);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITBOX_X, 13);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITBOX_Y, -145);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_WIDTH, 100);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HEIGHT, 70);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PRIORITY, 7);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_DAMAGE, 8);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_VISUAL_EFFECT, 21);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HIT_SFX, asset_get("sfx_absa_orb_hit"));
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);