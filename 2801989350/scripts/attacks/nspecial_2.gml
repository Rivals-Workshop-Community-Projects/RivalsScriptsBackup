set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial2"));
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 1);
set_attack_value(AT_NSPECIAL_2, AG_AIR_SPRITE, sprite_get("nspecial2"));
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("nspecial2_hurt"));

//Set-Up Throw
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 11);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);
/*set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 3);*/

//Idle
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 0);

//set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 8);
//set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
//set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 6);*/

set_num_hitboxes(AT_NSPECIAL_2, 0);

//bubble initial
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 12);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 90);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PRIORITY, 7);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT, pluxbubble_effect);

//plasma bubble
set_hitbox_value(AT_NSPECIAL_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_LIFETIME, 7);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_Y, -34);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_WIDTH, 15);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HEIGHT, 15);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_ANGLE, 15);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_VISUAL_EFFECT, zap_effect);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));

//Bullet throw 1
set_hitbox_value(AT_NSPECIAL_2, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_HITBOX_X, 30);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_HITBOX_Y, -25);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_WIDTH, 65);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_HEIGHT, 65);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_PRIORITY, 9);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL_2, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_VISUAL_EFFECT, pluxthrow_effect);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

//Throw
set_hitbox_value(AT_NSPECIAL_2, 4, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_HITBOX_X, 3);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_HITBOX_Y, -9);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_WIDTH, 30);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_HEIGHT, 25);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_PRIORITY, 7);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL_2, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_HIT_LOCKOUT, 4);