set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);

set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 5);

// startup 
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX, sound_get("photo_charge"));
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX_FRAME,0);

// startup 
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sound_get("photo"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME,1);

// cheese
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);


// hold
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 7);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 5);

// endlag
// set in set_attack and hit_player
set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 36);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 6);

set_num_hitboxes(AT_USTRONG, 1);



set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, -1);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -100);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 68);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 130);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 13);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_USTRONG, 1, HG_EXTRA_HITPAUSE, 14);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, sound_get("picture_blow"));
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 304 );
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, 0);
/*


set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, -1);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -100);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 68);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 130);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_USTRONG, 1, HG_EXTRA_HITPAUSE, 15);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 304 );
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, sound_get("picture_blow")); 
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_DESTROY_EFFECT, effect_nothing);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_LOCKOUT, 2);