set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 5);
set_attack_value(AT_EXTRA_1, AG_AIR_SPRITE, sprite_get("dattack"));
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HSPEED, 3);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX, sound_get("rhythmRally"));

set_window_value(AT_EXTRA_1, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HSPEED, 6);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .04);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_SFX, sound_get("rhythmRallyBounce"));

set_window_value(AT_EXTRA_1, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, .1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, .4);

set_window_value(AT_EXTRA_1, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_LENGTH, 14);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, .1);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, .4);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_HAS_WHIFFLAG, 5);

set_window_value(AT_EXTRA_1, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, .1);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, .4);



set_num_hitboxes(AT_EXTRA_1, 3);

set_hitbox_value(AT_EXTRA_1, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, -39);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 50);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 53);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 60);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_LOCKOUT, 5);

set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_LIFETIME, 40);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_X, 24);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_Y, 15);
set_hitbox_value(AT_EXTRA_1, 2, HG_WIDTH, 90);
set_hitbox_value(AT_EXTRA_1, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_EXTRA_1, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_EXTRA_1, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_ANGLE, 50);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_EXTRA_1, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_SPRITE, sprite_get("pingpongprojectile"));
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_MASK, sprite_get("pingpongprojectile"));
set_hitbox_value(AT_EXTRA_1, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_ANIM_SPEED, .5);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_HSPEED, 12);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_VSPEED, -3.5);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_GRAVITY, .2);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_AIR_FRICTION, .15);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_GROUND_FRICTION, 9);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_PARRY_STUN, 1);

set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 3, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 3, HG_LIFETIME, 40);
set_hitbox_value(AT_EXTRA_1, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_X, 24);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_Y, 15);
set_hitbox_value(AT_EXTRA_1, 3, HG_WIDTH, 90);
set_hitbox_value(AT_EXTRA_1, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_EXTRA_1, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_EXTRA_1, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_EXTRA_1, 3, HG_ANGLE, 50);
set_hitbox_value(AT_EXTRA_1, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_EXTRA_1, 3, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_EXTRA_1, 3, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_SPRITE, sprite_get("pingpongprojectile"));
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_MASK, sprite_get("pingpongprojectile"));
set_hitbox_value(AT_EXTRA_1, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_ANIM_SPEED, .5);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_HSPEED, 15);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_VSPEED, -3.5);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_GRAVITY, .2);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_AIR_FRICTION, .15);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_GROUND_FRICTION, 9);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_PARRY_STUN, 1);