set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

//startup
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 4);

//smear
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);

//shake
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);


//end
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);


set_num_hitboxes(AT_FSPECIAL, 2);

set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.5 );
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 16);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 24);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 999); //set this in hbox update
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 60);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("proj_note"));
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 6.5);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_AIR_FRICTION, -.01);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, hfx_sound_other);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, -16);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITSTUN_MULTIPLIER, .5);
set_hitbox_value(AT_FSPECIAL, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, 0);

set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 0 );
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 96);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 96);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 99);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 10);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 7);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("parry"));
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, hfx_loud);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT_X_OFFSET, -16);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, sound_get("crash_cymbal_2"));
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, 0);