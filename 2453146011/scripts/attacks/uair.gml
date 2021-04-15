set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 7);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

// Startup
set_window_value(AT_UAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_UAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 1.0);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 11);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, sound_get("monarch_woosh3"));

// Throw
set_window_value(AT_UAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED, -4);


// Throw recover
set_window_value(AT_UAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 4);
set_window_value(AT_UAIR, 3, AG_WINDOW_CUSTOM_GRAVITY, 0);

// Teleport delay
set_window_value(AT_UAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAME_START, 14);

// Teleport startup
set_window_value(AT_UAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAME_START, 14);

// Slash
set_window_value(AT_UAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UAIR, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 6, AG_WINDOW_ANIM_FRAME_START, 19);

// Recovery
set_window_value(AT_UAIR, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 7, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UAIR, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 7, AG_WINDOW_ANIM_FRAME_START, 21);


set_num_hitboxes(AT_UAIR,3);

set_hitbox_value(AT_UAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 20);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -65);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 40);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .65);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 1, HG_PROJECTILE_SPRITE, sprite_get("uair_proj"));
set_hitbox_value(AT_UAIR, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_UAIR, 1, HG_PROJECTILE_VSPEED, -16);
set_hitbox_value(AT_UAIR, 1, HG_PROJECTILE_GRAVITY, .8);
set_hitbox_value(AT_UAIR, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_UAIR, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_UAIR, 1, HG_PROJECTILE_ANIM_SPEED, .55);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, emptyfx);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, sound_get("monarch_knifehit2"));
set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 6);

set_hitbox_value(AT_UAIR, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 6);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -80);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 100);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, .25);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_UAIR, 2, HG_HITSTUN_MULTIPLIER, .7);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, sound_get("monarch_knifehit1"));
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_UAIR, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -50);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, 20);
set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 25);
set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_UAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_UAIR, 3, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 3, HG_KNOCKBACK_SCALING, .25);
set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_UAIR, 3, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, sound_get("monarch_knifehit2"));
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_GROUP, -1);