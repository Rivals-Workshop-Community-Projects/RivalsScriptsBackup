set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 9);
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial_air"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("fspecial_air_hurt"));
set_attack_value(AT_FSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

// startup 
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, sound_get("yoink"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 9);

// grab attempt
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, .2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

// grab success, vspeed applied
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 10);

// loop until hitting the ground
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 10); 
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_INVINCIBILITY, 2);

// slam into ground
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 2);

// moving across the ground loop
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_TYPE, 9); 
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_INVINCIBILITY, 2);

// grab escaped
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

// throw
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 22);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_CUSTOM_GROUND_FRICTION, .8);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_CUSTOM_AIR_FRICTION, .8);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_INVINCIBILITY, 2);

// whiff endlag
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

set_num_hitboxes(AT_FSPECIAL, 5);

// grab attempt
set_hitbox_value(AT_FSPECIAL, 1, HG_MUNO_HITBOX_NAME, "Grab Hitbox");
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 75);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 100);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 5); // 6
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_FSPECIAL, 1, HG_EFFECT, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_clairen_nspecial_grab_success"));
set_hitbox_value(AT_FSPECIAL, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 19);

// drag
set_hitbox_value(AT_FSPECIAL, 2, HG_MUNO_HITBOX_NAME, "Dragging Hitboxes");
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, get_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH));
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 58);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -16);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 100);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 1); 
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 270);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_FSPECIAL, 2, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT_X_OFFSET, 14);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, 30);

// throw
set_hitbox_value(AT_FSPECIAL, 3, HG_MUNO_HITBOX_NAME, "Throw Hitbox");
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 8);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 80);
set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, 80);
set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 6);
set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT, 304);

// ground slam
set_hitbox_value(AT_FSPECIAL, 4, HG_MUNO_HITBOX_NAME, "Ground Slam Hitbox");
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 12);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_X, 69);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_Y, -10);
set_hitbox_value(AT_FSPECIAL, 4, HG_WIDTH, 90);
set_hitbox_value(AT_FSPECIAL, 4, HG_HEIGHT, 20);
set_hitbox_value(AT_FSPECIAL, 4, HG_PRIORITY, 6);
set_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE, 270);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FSPECIAL, 4, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSPECIAL, 4, HG_VISUAL_EFFECT, fspecial_slam);
set_hitbox_value(AT_FSPECIAL, 4, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(AT_FSPECIAL, 4, HG_VISUAL_EFFECT_Y_OFFSET, -17);
set_hitbox_value(AT_FSPECIAL, 4, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_EXTRA_CAMERA_SHAKE, -1);

// release
set_hitbox_value(AT_FSPECIAL, 5, HG_MUNO_HITBOX_NAME, "Drop Hitbox");
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_WINDOW, 7);
set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL, 5, HG_WIDTH, 80);
set_hitbox_value(AT_FSPECIAL, 5, HG_HEIGHT, 80);
set_hitbox_value(AT_FSPECIAL, 5, HG_PRIORITY, 6);
set_hitbox_value(AT_FSPECIAL, 5, HG_DAMAGE, 0);
set_hitbox_value(AT_FSPECIAL, 5, HG_ANGLE, 70);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSPECIAL, 5, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITSTUN_MULTIPLIER, 0.6);
set_hitbox_value(AT_FSPECIAL, 5, HG_VISUAL_EFFECT, 302);

set_attack_value(AT_FSPECIAL, AG_MUNO_ATTACK_MISC_ADD, "Gurantees suicide kill when connecting offstage.");
