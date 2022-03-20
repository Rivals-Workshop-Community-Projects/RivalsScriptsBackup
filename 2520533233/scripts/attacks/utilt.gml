set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));


set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 3);

// startup
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, sound_get("utilt"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 5);

/// active
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);

/// endlag
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UTILT, 12);
//normal
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -80);
set_hitbox_value(AT_UTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 84);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 80);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, 0.55);
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, hisou_dir );
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, sound_get("hisou_hit"));
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_UTILT, 1, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT_Y_OFFSET, -20 );
//sweet
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, -38);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -45);
set_hitbox_value(AT_UTILT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 53);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 74);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 80);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, 0.55);
set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, hisou_dir );
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, sound_get("hisou_hit"));
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_UTILT, 2, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT_Y_OFFSET, -20 );
//foot sour(sweet?)spot
/*
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, 20);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -10);
set_hitbox_value(AT_UTILT, 3, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 20);
set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 10);
set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 80);
set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, 0.55);
set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, 0.55);
set_hitbox_value(AT_UTILT, 3, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, sound_get("hisou_hit"));
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_GROUP, 0);
*/


///install hit 1
//normal
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW, 99);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_UTILT, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_Y, -80);
set_hitbox_value(AT_UTILT, 4, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 4, HG_WIDTH, 84);
set_hitbox_value(AT_UTILT, 4, HG_HEIGHT, 50);
set_hitbox_value(AT_UTILT, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 4, HG_ANGLE, 80);
set_hitbox_value(AT_UTILT, 4, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_UTILT, 4, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_UTILT, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UTILT, 4, HG_HITPAUSE_SCALING, 0.55);
set_hitbox_value(AT_UTILT, 4, HG_VISUAL_EFFECT, hisou_dir );
set_hitbox_value(AT_UTILT, 4, HG_HIT_SFX, sound_get("hisou_hit2"));
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_UTILT, 4, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(AT_UTILT, 4, HG_VISUAL_EFFECT_Y_OFFSET, -20 );
//sweet
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 5, HG_WINDOW, 99);
set_hitbox_value(AT_UTILT, 5, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UTILT, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_X, -38);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_Y, -45);
set_hitbox_value(AT_UTILT, 5, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 5, HG_WIDTH, 53);
set_hitbox_value(AT_UTILT, 5, HG_HEIGHT, 74);
set_hitbox_value(AT_UTILT, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 5, HG_ANGLE, 80);
set_hitbox_value(AT_UTILT, 5, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_UTILT, 5, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_UTILT, 5, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UTILT, 5, HG_HITPAUSE_SCALING, 0.55);
set_hitbox_value(AT_UTILT, 5, HG_VISUAL_EFFECT, hisou_dir );
set_hitbox_value(AT_UTILT, 5, HG_HIT_SFX, sound_get("hisou_hit2"));
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_UTILT, 5, HG_HIT_PARTICLE_NUM, 2);
//foot sour(sweet?)spot
set_hitbox_value(AT_UTILT, 5, HG_VISUAL_EFFECT_Y_OFFSET, -20 );



///install hit 1
//normal
set_hitbox_value(AT_UTILT, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 7, HG_WINDOW, 99);
set_hitbox_value(AT_UTILT, 7, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_UTILT, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 7, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTILT, 7, HG_HITBOX_Y, -80);
set_hitbox_value(AT_UTILT, 7, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 7, HG_WIDTH, 84);
set_hitbox_value(AT_UTILT, 7, HG_HEIGHT, 50);
set_hitbox_value(AT_UTILT, 7, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 7, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 7, HG_ANGLE, 80);
set_hitbox_value(AT_UTILT, 7, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_UTILT, 7, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_UTILT, 7, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UTILT, 7, HG_HITPAUSE_SCALING, 0.55);
set_hitbox_value(AT_UTILT, 7, HG_VISUAL_EFFECT, hisou_dir );
set_hitbox_value(AT_UTILT, 7, HG_HIT_SFX, sound_get("hisou_hit2"));
set_hitbox_value(AT_UTILT, 7, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 7, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(AT_UTILT, 7, HG_VISUAL_EFFECT_Y_OFFSET, -20 );
//sweet
set_hitbox_value(AT_UTILT, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 8, HG_WINDOW, 99);
set_hitbox_value(AT_UTILT, 8, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UTILT, 8, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 8, HG_HITBOX_X, -38);
set_hitbox_value(AT_UTILT, 8, HG_HITBOX_Y, -45);
set_hitbox_value(AT_UTILT, 8, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 8, HG_WIDTH, 53);
set_hitbox_value(AT_UTILT, 8, HG_HEIGHT, 74);
set_hitbox_value(AT_UTILT, 8, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 8, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 8, HG_ANGLE, 80);
set_hitbox_value(AT_UTILT, 8, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_UTILT, 8, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_UTILT, 8, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UTILT, 8, HG_HITPAUSE_SCALING, 0.55);
set_hitbox_value(AT_UTILT, 8, HG_VISUAL_EFFECT, hisou_dir );
set_hitbox_value(AT_UTILT, 8, HG_HIT_SFX, sound_get("hisou_hit2"));
set_hitbox_value(AT_UTILT, 8, HG_HITBOX_GROUP, 1);
//foot sour(sweet?)spot
set_hitbox_value(AT_UTILT, 8, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(AT_UTILT, 8, HG_VISUAL_EFFECT_Y_OFFSET, -20 );
//install hit 2
//normal
set_hitbox_value(AT_UTILT, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 10, HG_WINDOW, 99);
set_hitbox_value(AT_UTILT, 10, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_UTILT, 10, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 10, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTILT, 10, HG_HITBOX_Y, -80);
set_hitbox_value(AT_UTILT, 10, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 10, HG_WIDTH, 84);
set_hitbox_value(AT_UTILT, 10, HG_HEIGHT, 50);
set_hitbox_value(AT_UTILT, 10, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 10, HG_DAMAGE, 6);
set_hitbox_value(AT_UTILT, 10, HG_ANGLE, 80);
set_hitbox_value(AT_UTILT, 10, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTILT, 10, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_UTILT, 10, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UTILT, 10, HG_HITPAUSE_SCALING, 0.55);
set_hitbox_value(AT_UTILT, 10, HG_VISUAL_EFFECT, hisou_large );
set_hitbox_value(AT_UTILT, 10, HG_HIT_SFX, sound_get("hisou_hit"));
set_hitbox_value(AT_UTILT, 10, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_UTILT, 10, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_UTILT, 10, HG_VISUAL_EFFECT_Y_OFFSET, -20 );
//sweet
set_hitbox_value(AT_UTILT, 11, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 11, HG_WINDOW, 99);
set_hitbox_value(AT_UTILT, 11, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_UTILT, 11, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 11, HG_HITBOX_X, -38);
set_hitbox_value(AT_UTILT, 11, HG_HITBOX_Y, -45);
set_hitbox_value(AT_UTILT, 11, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 11, HG_WIDTH, 53);
set_hitbox_value(AT_UTILT, 11, HG_HEIGHT, 74);
set_hitbox_value(AT_UTILT, 11, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 11, HG_DAMAGE, 6);
set_hitbox_value(AT_UTILT, 11, HG_ANGLE, 80);
set_hitbox_value(AT_UTILT, 11, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTILT, 11, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_UTILT, 11, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UTILT, 11, HG_HITPAUSE_SCALING, 0.55);
set_hitbox_value(AT_UTILT, 11, HG_VISUAL_EFFECT, hisou_large );
set_hitbox_value(AT_UTILT, 11, HG_HIT_SFX, sound_get("hisou_hit"));
set_hitbox_value(AT_UTILT, 11, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_UTILT, 11, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_UTILT, 11, HG_VISUAL_EFFECT_Y_OFFSET, -20 );

//foot sour(sweet?)spot

