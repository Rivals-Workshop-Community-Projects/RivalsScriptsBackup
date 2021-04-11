set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_UTILT, AG_CATEGORY, 2);
set_attack_value(AT_UTILT, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

set_window_value(AT_UTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, sound_get("monarch_darthitplayer"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_UTILT, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_UTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_SFX, sound_get("monarch_utilt1"));
set_window_value(AT_UTILT, 2, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_CUSTOM_GRAVITY, 2);

set_window_value(AT_UTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_SFX, sound_get("monarch_utilt2"));
set_window_value(AT_UTILT, 3, AG_WINDOW_SFX_FRAME, 9);
set_window_value(AT_UTILT, 3, AG_WINDOW_CUSTOM_GRAVITY, 5);
set_window_value(AT_UTILT, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_UTILT, 3, AG_WINDOW_VSPEED, -2);

set_window_value(AT_UTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 14);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_UTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 5);
set_window_value(AT_UTILT, 4, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_num_hitboxes(AT_UTILT,0);

// Pull 1
set_hitbox_value(AT_UTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UTILT, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_UTILT, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_UTILT, 1, HG_PROJECTILE_DESTROY_EFFECT, empty_fx);
set_hitbox_value(AT_UTILT, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_UTILT, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_UTILT, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_UTILT, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_UTILT, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_UTILT, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -60);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 30);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, .15);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, sound_get("monarch_utilthit1"));
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_GROUP,0);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY,10);
set_hitbox_value(AT_UTILT, 1, HG_PROJECTILE_UNBASHABLE, 1);


set_hitbox_value(AT_UTILT, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -80);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 5);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP,0);

set_hitbox_value(AT_UTILT, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, 40);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_GROUP,0);

// Pull 2
set_hitbox_value(AT_UTILT, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UTILT, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_UTILT, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_UTILT, 4, HG_PROJECTILE_DESTROY_EFFECT, empty_fx);
set_hitbox_value(AT_UTILT, 4, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_UTILT, 4, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_UTILT, 4, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_UTILT, 4, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_UTILT, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_UTILT, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_UTILT, 4, HG_LIFETIME, 5);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_Y, -60);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_X, 20);
set_hitbox_value(AT_UTILT, 4, HG_WIDTH, 40);
set_hitbox_value(AT_UTILT, 4, HG_HEIGHT, 40);
set_hitbox_value(AT_UTILT, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 4, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 4, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_UTILT, 4, HG_KNOCKBACK_SCALING, .15);
set_hitbox_value(AT_UTILT, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UTILT, 4, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UTILT, 4, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UTILT, 4, HG_HIT_SFX, sound_get("monarch_utilthit1"));
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_GROUP,1);
set_hitbox_value(AT_UTILT, 4, HG_PRIORITY,10);
set_hitbox_value(AT_UTILT, 4, HG_PROJECTILE_UNBASHABLE, 1);


set_hitbox_value(AT_UTILT, 5, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UTILT, 5, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_UTILT, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_UTILT, 5, HG_PROJECTILE_DESTROY_EFFECT, empty_fx);
set_hitbox_value(AT_UTILT, 5, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_UTILT, 5, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_UTILT, 5, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_UTILT, 5, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_UTILT, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_UTILT, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_UTILT, 5, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, 5, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_UTILT, 5, HG_LIFETIME, 5);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_Y, -90);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTILT, 5, HG_WIDTH, 40);
set_hitbox_value(AT_UTILT, 5, HG_HEIGHT, 40);
set_hitbox_value(AT_UTILT, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 5, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 5, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_UTILT, 5, HG_KNOCKBACK_SCALING, .15);
set_hitbox_value(AT_UTILT, 5, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UTILT, 5, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UTILT, 5, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UTILT, 5, HG_HIT_SFX, sound_get("monarch_utilthit1"));
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_GROUP,1);
set_hitbox_value(AT_UTILT, 5, HG_PROJECTILE_UNBASHABLE, 1);


set_hitbox_value(AT_UTILT, 6, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UTILT, 6, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_UTILT, 6, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_UTILT, 6, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_UTILT, 6, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_UTILT, 6, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_UTILT, 6, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_UTILT, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_UTILT, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_UTILT, 6, HG_PROJECTILE_DESTROY_EFFECT, empty_fx);
set_hitbox_value(AT_UTILT, 6, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, 6, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_UTILT, 6, HG_LIFETIME, 5);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_Y, -30);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_X, 40);
set_hitbox_value(AT_UTILT, 6, HG_WIDTH, 40);
set_hitbox_value(AT_UTILT, 6, HG_HEIGHT, 40);
set_hitbox_value(AT_UTILT, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 6, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 6, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 6, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_UTILT, 6, HG_KNOCKBACK_SCALING, .25);
set_hitbox_value(AT_UTILT, 6, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UTILT, 6, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UTILT, 6, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UTILT, 6, HG_HIT_SFX, sound_get("monarch_utilthit1"));
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_GROUP,1);
set_hitbox_value(AT_UTILT, 6, HG_PROJECTILE_UNBASHABLE, 1);


// Explosion
set_hitbox_value(AT_UTILT, 7, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UTILT, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UTILT, 7, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_UTILT, 7, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_UTILT, 7, HG_PROJECTILE_DESTROY_EFFECT, empty_fx);
set_hitbox_value(AT_UTILT, 7, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_UTILT, 7, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_UTILT, 7, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_UTILT, 7, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_UTILT, 7, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_UTILT, 7, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_UTILT, 7, HG_WINDOW, 4);
set_hitbox_value(AT_UTILT, 7, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 7, HG_HITBOX_Y, -60);
set_hitbox_value(AT_UTILT, 7, HG_HITBOX_X, 20);
set_hitbox_value(AT_UTILT, 7, HG_WIDTH, 50);
set_hitbox_value(AT_UTILT, 7, HG_HEIGHT, 50);
set_hitbox_value(AT_UTILT, 7, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 7, HG_DAMAGE, 4);
set_hitbox_value(AT_UTILT, 7, HG_ANGLE, 80);
set_hitbox_value(AT_UTILT, 7, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UTILT, 7, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_UTILT, 7, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_UTILT, 7, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UTILT, 7, HG_HIT_SFX, sound_get("monarch_utilthit2"));
set_hitbox_value(AT_UTILT, 7, HG_HITBOX_GROUP,2);
set_hitbox_value(AT_UTILT, 7, HG_PRIORITY,10);
set_hitbox_value(AT_UTILT, 7, HG_PROJECTILE_UNBASHABLE, 1);


set_hitbox_value(AT_UTILT, 8, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UTILT, 8, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UTILT, 8, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_UTILT, 8, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_UTILT, 8, HG_PROJECTILE_DESTROY_EFFECT, empty_fx);
set_hitbox_value(AT_UTILT, 8, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_UTILT, 8, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_UTILT, 8, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_UTILT, 8, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_UTILT, 8, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_UTILT, 8, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_UTILT, 8, HG_WINDOW, 4);
set_hitbox_value(AT_UTILT, 8, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 8, HG_HITBOX_Y, -100);
set_hitbox_value(AT_UTILT, 8, HG_HITBOX_X, -10);
set_hitbox_value(AT_UTILT, 8, HG_WIDTH, 50);
set_hitbox_value(AT_UTILT, 8, HG_HEIGHT, 50);
set_hitbox_value(AT_UTILT, 8, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 8, HG_DAMAGE, 4);
set_hitbox_value(AT_UTILT, 8, HG_ANGLE, 80);
set_hitbox_value(AT_UTILT, 8, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UTILT, 8, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_UTILT, 8, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UTILT, 8, HG_HITPAUSE_SCALING, .55);
set_hitbox_value(AT_UTILT, 8, HG_HIT_SFX, sound_get("monarch_utilthit2"));
set_hitbox_value(AT_UTILT, 8, HG_HITBOX_GROUP,2);
set_hitbox_value(AT_UTILT, 8, HG_PROJECTILE_UNBASHABLE, 1);


set_hitbox_value(AT_UTILT, 9, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UTILT, 9, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UTILT, 9, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_UTILT, 9, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_UTILT, 9, HG_PROJECTILE_DESTROY_EFFECT, empty_fx);
set_hitbox_value(AT_UTILT, 9, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_UTILT, 9, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_UTILT, 9, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_UTILT, 9, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_UTILT, 9, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_UTILT, 9, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_UTILT, 9, HG_WINDOW, 4);
set_hitbox_value(AT_UTILT, 9, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 9, HG_HITBOX_Y, -20);
set_hitbox_value(AT_UTILT, 9, HG_HITBOX_X, 50);
set_hitbox_value(AT_UTILT, 9, HG_WIDTH, 50);
set_hitbox_value(AT_UTILT, 9, HG_HEIGHT, 50);
set_hitbox_value(AT_UTILT, 9, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 9, HG_DAMAGE, 4);
set_hitbox_value(AT_UTILT, 9, HG_ANGLE, 80);
set_hitbox_value(AT_UTILT, 9, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UTILT, 9, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_UTILT, 9, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UTILT, 9, HG_HITPAUSE_SCALING, .55);
set_hitbox_value(AT_UTILT, 9, HG_HIT_SFX, sound_get("monarch_utilthit2"));
set_hitbox_value(AT_UTILT, 9, HG_HITBOX_GROUP,2);
set_hitbox_value(AT_UTILT, 9, HG_PROJECTILE_UNBASHABLE, 1);

// Stab
set_hitbox_value(AT_UTILT, 10, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UTILT, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 10, HG_WINDOW, 1);
set_hitbox_value(AT_UTILT, 10, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UTILT, 10, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 10, HG_HITBOX_Y, -20);
set_hitbox_value(AT_UTILT, 10, HG_HITBOX_X, 55);
set_hitbox_value(AT_UTILT, 10, HG_WIDTH, 30);
set_hitbox_value(AT_UTILT, 10, HG_HEIGHT, 30);
set_hitbox_value(AT_UTILT, 10, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 10, HG_DAMAGE, 3);
set_hitbox_value(AT_UTILT, 10, HG_ANGLE, 100);
set_hitbox_value(AT_UTILT, 10, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UTILT, 10, HG_TECHABLE, 1);
set_hitbox_value(AT_UTILT, 10, HG_DRIFT_MULTIPLIER, .1);
set_hitbox_value(AT_UTILT, 10, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(AT_UTILT, 10, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_UTILT, 10, HG_HITPAUSE_SCALING, .15);
set_hitbox_value(AT_UTILT, 10, HG_HIT_SFX, sound_get("monarch_knifehit1"));
set_hitbox_value(AT_UTILT, 10, HG_HITBOX_GROUP,-1);
set_hitbox_value(AT_UTILT, 10, HG_PRIORITY,10);