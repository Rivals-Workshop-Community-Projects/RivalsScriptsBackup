set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_USPECIAL, AG_LANDING_LAG, 7);



set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 7);

// startup
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 9 - has_rune("G") * 8);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, 0);

// dash
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -17 );

//grab try
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -6);



//grab hold
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, 0);


// grab start
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_USPECIAL, 5, AG_WINDOW_SFX_FRAME, 9);

// throw
set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_HSPEED, -1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_VSPEED, -6.5);

// endlag
set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 8);


set_num_hitboxes(AT_USPECIAL,2);

// grab
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 900);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, -6);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -72);
set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 30);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 65);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, grab_fx );
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, sound_get("grab"));
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_TECHABLE, 1);

// yeet
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 6);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 34);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -38);
set_hitbox_value(AT_USPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 52);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 72);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 320);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, 0.55);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_LOCKOUT, 3);

// rune L
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 62);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, -6);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -44);
set_hitbox_value(AT_USPECIAL, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 26);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 26);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 85);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, 301 );
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("arrowhead"));
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, effect_nothing);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_MASK, sprite_get("arrowhead"));
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_LOCKOUT, 2);