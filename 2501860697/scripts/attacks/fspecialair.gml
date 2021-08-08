set_attack_value(AT_FSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_AIR, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL_AIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSPECIAL_AIR, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSPECIAL_AIR, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL_AIR, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX, asset_get("sfx_absa_concentrate"));
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 3 );

set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 26);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.05);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_SFX, asset_get("sfx_absa_new_whip1"));
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_GOTO, 5);


set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_SFX, asset_get("sfx_absa_harderhit"));
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 26);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.05);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_SFX, asset_get("sfx_absa_harderhit"));
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_GOTO, 5);


set_num_hitboxes(AT_FSPECIAL_AIR, 4);

//babyprojectile
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_LIFETIME, 20);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_X, 56);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_ANGLE, 55);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 20);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_SPRITE, sprite_get("fspecial_proj1"));
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_MASK, sprite_get("fspecial_proj1"));
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_DESTROY_EFFECT, 21);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_HSPEED, 12);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));

//mid projectile
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_LIFETIME, 25);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_X, 56);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WIDTH, 42);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HEIGHT, 42);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_ANGLE, 55);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_VISUAL_EFFECT, 21);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PROJECTILE_SPRITE, sprite_get("fspecial_proj2"));
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PROJECTILE_HSPEED, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1); //go through
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));

//explosion (1, 2)
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_X, 56);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_WIDTH, 42);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HEIGHT, 42);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_ANGLE, 55);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_VISUAL_EFFECT, fspecial_fx1);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_VISUAL_EFFECT_X_OFFSET, -30);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_PROJECTILE_SPRITE, sprite_get("fspecial_proj2"));
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_PROJECTILE_HSPEED, 0);

//explosion (3rd)
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HITBOX_X, 56);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_WIDTH, 42);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HEIGHT, 42);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_DAMAGE, 7);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_ANGLE, 55);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_VISUAL_EFFECT, 21);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_PROJECTILE_SPRITE, sprite_get("fspecial_proj2"));
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_PROJECTILE_HSPEED, 0)
