set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 6);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

//startup
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_NAIR, 1, AG_WINDOW_VSPEED, -1);

set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_CANCEL_FRAME, 2);

//startup
set_window_value(AT_NAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_NAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_NAIR, 4, AG_WINDOW_SFX, sound_get("nair"));
set_window_value(AT_NAIR, 4, AG_WINDOW_VSPEED, -1);

set_window_value(AT_NAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAME_START, 18);


set_window_value(AT_NAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 6, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NAIR, 6, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NAIR, 6, AG_WINDOW_ANIM_FRAME_START, 27);
set_window_value(AT_NAIR, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

//nair2 is AT_NTHROW.

set_num_hitboxes(AT_NAIR,5);

set_hitbox_value(AT_NAIR, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 36);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 70);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 120);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 50);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
//set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_NAIR, 1, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_NAIR, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, pow);



/*set_hitbox_value(AT_NAIR, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_SPRITE, sprite_get("mallet"));
set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_MASK, asset_get("empty_sprite"));
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 45);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, -20);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -15);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 0);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 180);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_NAIR, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 2);
set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 3);
set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_GRAVITY, 1.5); */

set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 5);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, 57);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -11);
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 84);
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 54);
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE, 50);
set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NAIR, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 3, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, asset_get("sfx_icehit_weak1"));
set_hitbox_value(AT_NAIR, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT, pow);


set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 4, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 5);
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, 57);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -11);
set_hitbox_value(AT_NAIR, 4, HG_WIDTH, 84);
set_hitbox_value(AT_NAIR, 4, HG_HEIGHT, 54);
set_hitbox_value(AT_NAIR, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE, 50);
set_hitbox_value(AT_NAIR, 4, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NAIR, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NAIR, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 4, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_NAIR, 4, HG_HIT_SFX, asset_get("sfx_icehit_weak1"));
set_hitbox_value(AT_NAIR, 4, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT, pow);


set_hitbox_value(AT_NAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 5, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW, 5);
set_hitbox_value(AT_NAIR, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_X, 57);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_Y, -11);
set_hitbox_value(AT_NAIR, 5, HG_WIDTH, 95);
set_hitbox_value(AT_NAIR, 5, HG_HEIGHT, 65);
set_hitbox_value(AT_NAIR, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 5, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 5, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(AT_NAIR, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NAIR, 5, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_NAIR, 5, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_NAIR, 5, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_NAIR, 5, HG_HIT_SFX, asset_get("sfx_icehit_medium2"));
set_hitbox_value(AT_NAIR, 5, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_NAIR, 5, HG_VISUAL_EFFECT, pow);


