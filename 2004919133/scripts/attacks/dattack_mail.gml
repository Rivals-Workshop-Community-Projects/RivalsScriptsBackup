set_attack_value(AT_EXTRA_1, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("dattack_2"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 4);
set_attack_value(AT_EXTRA_1, AG_AIR_SPRITE, sprite_get("dattack"));
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

//startup
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HSPEED, 3);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_VSPEED, -2);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX_FRAME, 7);

//smear
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HSPEED, 2);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HSPEED_TYPE, 1);

//active
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_HSPEED, -11);

//endlag
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_HAS_WHIFFLAG, 5);


set_num_hitboxes(AT_EXTRA_1, 3);

set_hitbox_value(AT_EXTRA_1, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 14);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, 12);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, -6);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 45);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 21);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 361);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_LOCKOUT, 5);

set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_WINDOW, 0);
set_hitbox_value(AT_EXTRA_1, 2, HG_LIFETIME, 14);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_X, 8);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_Y, -36);
set_hitbox_value(AT_EXTRA_1, 2, HG_WIDTH, 18);
set_hitbox_value(AT_EXTRA_1, 2, HG_HEIGHT, 79);
set_hitbox_value(AT_EXTRA_1, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_EXTRA_1, 2, HG_ANGLE, 361);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_EXTRA_1, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_EXTRA_1, 2, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_EXTRA_1, 2, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_EXTRA_1, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_EXTRA_1, 2, HG_HIT_LOCKOUT, 5);

set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 3, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 3, HG_LIFETIME, 25);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_X, 5);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_EXTRA_1, 3, HG_WIDTH, 90);
set_hitbox_value(AT_EXTRA_1, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_EXTRA_1, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_EXTRA_1, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_EXTRA_1, 3, HG_ANGLE, 45);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITSTUN_MULTIPLIER, .9);
set_hitbox_value(AT_EXTRA_1, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_EXTRA_1, 3, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_EXTRA_1, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_SPRITE, sprite_get("box"));
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_MASK, sprite_get("box"));
set_hitbox_value(AT_EXTRA_1, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_ANIM_SPEED, .5);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_HSPEED, 11);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_VSPEED, -4);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_GRAVITY, .35);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_AIR_FRICTION, .05);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_GROUND_FRICTION, 9);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 2);