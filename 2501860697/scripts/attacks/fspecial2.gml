set_attack_value(AT_FSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL_2, AG_NUM_WINDOWS, 2);
set_attack_value(AT_FSPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL_2, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_absa_concentrate"));
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 12);

set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH, 45);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_SFX, asset_get("sfx_absa_kickhit"));
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_SFX_FRAME, 10);


set_num_hitboxes(AT_FSPECIAL_2, 6);


set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_LIFETIME, 35);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_X, 56);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PRIORITY, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE, 55);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_SPRITE, sprite_get("fspecial_laser"));
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_MASK, sprite_get("fspecial_laser"));
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_ANIM_SPEED, .325);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));

set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_X, 196);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_Y, -23);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WIDTH, 280);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HEIGHT, 28);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_SHAPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_VISUAL_EFFECT, 21);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_absa_harderhit"));
set_hitbox_value(AT_FSPECIAL_2, 2, HG_ANGLE_FLIPPER, 9);

set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_X, 196);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_Y, -23);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WIDTH, 280);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HEIGHT, 28);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_SHAPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_TECHABLE, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_BASE_KNOCKBACK,5);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_VISUAL_EFFECT, 21);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HIT_SFX, asset_get("sfx_absa_harderhit"));
set_hitbox_value(AT_FSPECIAL_2, 3, HG_ANGLE_FLIPPER, 9);

set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_X, 196);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_Y, -23);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_WIDTH, 280);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HEIGHT, 20);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_SHAPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_TECHABLE, 1);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_BASE_KNOCKBACK,5);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_VISUAL_EFFECT, 21);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HIT_SFX, asset_get("sfx_absa_harderhit"));
set_hitbox_value(AT_FSPECIAL_2, 4, HG_ANGLE_FLIPPER, 9);
 
 
set_hitbox_value(AT_FSPECIAL_2, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_WINDOW_CREATION_FRAME, 11);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_HITBOX_X, 196);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_HITBOX_Y, -23);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_WIDTH, 280);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_HEIGHT, 20);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_SHAPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_TECHABLE, 1);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_DAMAGE, 10);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_VISUAL_EFFECT, 21);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_HIT_SFX, asset_get("sfx_absa_uair"));


 