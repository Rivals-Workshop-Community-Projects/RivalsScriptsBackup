set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, -0.5);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_absa_whip_charge"));

set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 11);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_ell_big_missile_fire"));

set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);


set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_ell_big_missile_fire"));

set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 6);




set_num_hitboxes(AT_USPECIAL, 9);

set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 99);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -16);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, -26);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 40);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 55);
set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 135);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_USPECIAL, 1, HG_HITSTUN_MULTIPLIER, .7);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_ell_fist_explode"));
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);


set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 99);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, -18);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 50);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_USPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 225);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_USPECIAL, 2, HG_HITSTUN_MULTIPLIER, .65);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_ell_fist_explode"));
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);

set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 99);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, 6);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 55);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_USPECIAL, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 270);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_USPECIAL, 3, HG_HITSTUN_MULTIPLIER, .85);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USPECIAL, 3, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_ell_fist_explode"));
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);

set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 99);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 16);
set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 50);
set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 50);
set_hitbox_value(AT_USPECIAL, 4, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 315);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL, 4, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_USPECIAL, 4, HG_HITSTUN_MULTIPLIER, .65);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USPECIAL, 4, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_USPECIAL, 4, HG_HIT_SFX, asset_get("sfx_ell_fist_explode"));
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, 1);

set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 99);
set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -16);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, 26);
set_hitbox_value(AT_USPECIAL, 5, HG_WIDTH, 40);
set_hitbox_value(AT_USPECIAL, 5, HG_HEIGHT, 55);
set_hitbox_value(AT_USPECIAL, 5, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE, 45);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL, 5, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_USPECIAL, 5, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USPECIAL, 5, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_USPECIAL, 5, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_USPECIAL, 5, HG_HIT_SFX, asset_get("sfx_ell_fist_explode"));
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_IS_TRANSCENDENT, 1);

set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW, 99);
set_hitbox_value(AT_USPECIAL, 6, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_Y, -26);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_X, 12);
set_hitbox_value(AT_USPECIAL, 6, HG_WIDTH, 50);
set_hitbox_value(AT_USPECIAL, 6, HG_HEIGHT, 50);
set_hitbox_value(AT_USPECIAL, 6, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 6, HG_ANGLE, 70);
set_hitbox_value(AT_USPECIAL, 6, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL, 6, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_USPECIAL, 6, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USPECIAL, 6, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_USPECIAL, 6, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_USPECIAL, 6, HG_HIT_SFX, asset_get("sfx_ell_fist_explode"));
set_hitbox_value(AT_USPECIAL, 6, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USPECIAL, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 6, HG_PROJECTILE_IS_TRANSCENDENT, 1);

set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_WINDOW, 99);
set_hitbox_value(AT_USPECIAL, 7, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_Y, -36);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 7, HG_WIDTH, 55);
set_hitbox_value(AT_USPECIAL, 7, HG_HEIGHT, 40);
set_hitbox_value(AT_USPECIAL, 7, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 7, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 7, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 7, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_USPECIAL, 7, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USPECIAL, 7, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_USPECIAL, 7, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_USPECIAL, 7, HG_HIT_SFX, asset_get("sfx_ell_fist_explode"));
set_hitbox_value(AT_USPECIAL, 7, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USPECIAL, 7, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 7, HG_PROJECTILE_IS_TRANSCENDENT, 1);

set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 8, HG_WINDOW, 99);
set_hitbox_value(AT_USPECIAL, 8, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_Y, -26);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_X, -12);
set_hitbox_value(AT_USPECIAL, 8, HG_WIDTH, 50);
set_hitbox_value(AT_USPECIAL, 8, HG_HEIGHT, 50);
set_hitbox_value(AT_USPECIAL, 8, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 8, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 8, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 8, HG_ANGLE, 110);
set_hitbox_value(AT_USPECIAL, 8, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL, 8, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_USPECIAL, 8, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_USPECIAL, 8, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, 8, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_USPECIAL, 8, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_USPECIAL, 8, HG_HIT_SFX, asset_get("sfx_ell_fist_explode"));
set_hitbox_value(AT_USPECIAL, 8, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USPECIAL, 8, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 8, HG_PROJECTILE_IS_TRANSCENDENT, 1);


set_hitbox_value(AT_USPECIAL, 9, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 9, HG_WINDOW, 99);
set_hitbox_value(AT_USPECIAL, 9, HG_LIFETIME, 30);
set_hitbox_value(AT_USPECIAL, 9, HG_HITBOX_Y, -26);
set_hitbox_value(AT_USPECIAL, 9, HG_HITBOX_X, -12);
set_hitbox_value(AT_USPECIAL, 9, HG_WIDTH, 50);
set_hitbox_value(AT_USPECIAL, 9, HG_HEIGHT, 50);
set_hitbox_value(AT_USPECIAL, 9, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 9, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 9, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 9, HG_PRIORITY, 0);
set_hitbox_value(AT_USPECIAL, 9, HG_ANGLE, 110);
set_hitbox_value(AT_USPECIAL, 9, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL, 9, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_USPECIAL, 9, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_USPECIAL, 9, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, 9, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_USPECIAL, 9, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_USPECIAL, 9, HG_HIT_SFX, asset_get("sfx_ell_fist_explode"));
set_hitbox_value(AT_USPECIAL, 9, HG_PROJECTILE_SPRITE, sprite_get("pratfall"));
set_hitbox_value(AT_USPECIAL, 9, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 9, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_USPECIAL, 9, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_USPECIAL, 9, HG_PROJECTILE_ANIM_SPEED, .4);
set_hitbox_value(AT_USPECIAL, 9, HG_PROJECTILE_VSPEED, -6);
set_hitbox_value(AT_USPECIAL, 9, HG_PROJECTILE_GRAVITY, .39);
set_hitbox_value(AT_USPECIAL, 9, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 9, HG_PROJECTILE_GROUND_BEHAVIOR, 1);