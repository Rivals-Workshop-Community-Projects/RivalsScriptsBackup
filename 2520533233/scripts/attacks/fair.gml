set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 7);
//set_attack_value(AT_FAIR, AG_USES_CUSTOM_GRAVITY, 1);

// Startup
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);

set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, sound_get("fairdash"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 3);
//set_window_value(AT_FAIR, 1, AG_WINDOW_HSPEED, 0);
//set_window_value(AT_FAIR, 1, AG_WINDOW_HSPEED_TYPE, 2);
//set_window_value(AT_FAIR, 1, AG_WINDOW_VSPEED, 1);
//set_window_value(AT_FAIR, 1, AG_WINDOW_VSPEED_TYPE, 2);

//dash
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX, sound_get("fair"));
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX_FRAME, 3);

//set_window_value(AT_FAIR, 2, AG_WINDOW_VSPEED, 0);
//set_window_value(AT_FAIR, 2, AG_WINDOW_VSPEED_TYPE, 2);


// Active
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);

// Endlag
set_window_value(AT_FAIR, 4, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
//set_window_value(AT_FAIR, 4, AG_WINDOW_HSPEED, -2);
//set_window_value(AT_FAIR, 4, AG_WINDOW_HSPEED_TYPE, 0);

set_num_hitboxes(AT_FAIR, 8);

//normal hitbox above
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -70);
set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 90);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 50);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 1, HG_FINAL_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, hisou_dir);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, sound_get("fairhit"));
set_hitbox_value(AT_FAIR, 1, HG_HIT_PARTICLE_NUM, 1);
//normal hitbox front
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 34);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 60);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 50);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 2, HG_FINAL_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, hisou_dir);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, sound_get("fairhit"));
set_hitbox_value(AT_FAIR, 2, HG_HIT_PARTICLE_NUM, 1);


//install multihit hitbox above 1
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 99);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 10);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -70);
set_hitbox_value(AT_FAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 90);
set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 50);
set_hitbox_value(AT_FAIR, 3, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT, hisou_dir);
set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, sound_get("fairhit"));
set_hitbox_value(AT_FAIR, 3, HG_HIT_PARTICLE_NUM, 1);
//install multihit hitbox front 1
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW, 99);
set_hitbox_value(AT_FAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_X, 34);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FAIR, 4, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 4, HG_WIDTH, 60);
set_hitbox_value(AT_FAIR, 4, HG_HEIGHT, 70);
set_hitbox_value(AT_FAIR, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_FAIR, 4, HG_ANGLE, 50);
set_hitbox_value(AT_FAIR, 4, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FAIR, 4, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FAIR, 4, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_FAIR, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FAIR, 4, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FAIR, 4, HG_VISUAL_EFFECT, hisou_dir);
set_hitbox_value(AT_FAIR, 4, HG_HIT_SFX, sound_get("fairhit"));
set_hitbox_value(AT_FAIR, 4, HG_HIT_PARTICLE_NUM, 1);
//multihit 2 on install
set_hitbox_value(AT_FAIR, 5, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 5, HG_WINDOW, 99);
set_hitbox_value(AT_FAIR, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 5, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_X, 10);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_Y, -70);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_FAIR, 6, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 6, HG_WINDOW, 99);
set_hitbox_value(AT_FAIR, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 6, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_X, 34);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_GROUP, 2);

//install enders
//install hitbox above
set_hitbox_value(AT_FAIR, 7, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_FAIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 7, HG_WINDOW, 99);
set_hitbox_value(AT_FAIR, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 7, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FAIR, 7, HG_HITBOX_X, 10);
set_hitbox_value(AT_FAIR, 7, HG_HITBOX_Y, -70);
set_hitbox_value(AT_FAIR, 7, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 7, HG_WIDTH, 90);
set_hitbox_value(AT_FAIR, 7, HG_HEIGHT, 40);
set_hitbox_value(AT_FAIR, 7, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 7, HG_DAMAGE, 4);
set_hitbox_value(AT_FAIR, 7, HG_ANGLE, 50);
set_hitbox_value(AT_FAIR, 7, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 7, HG_FINAL_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FAIR, 7, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FAIR, 7, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FAIR, 7, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FAIR, 7, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_FAIR, 7, HG_VISUAL_EFFECT, hisou_large);
set_hitbox_value(AT_FAIR, 7, HG_HIT_SFX, sound_get("hisou_hit5"));

//install hitbox front
set_hitbox_value(AT_FAIR, 8, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_FAIR, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 8, HG_WINDOW, 99);
set_hitbox_value(AT_FAIR, 8, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 8, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FAIR, 8, HG_HITBOX_X, 34);
set_hitbox_value(AT_FAIR, 8, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FAIR, 8, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 8, HG_WIDTH, 60);
set_hitbox_value(AT_FAIR, 8, HG_HEIGHT, 70);
set_hitbox_value(AT_FAIR, 8, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 8, HG_DAMAGE, 4);
set_hitbox_value(AT_FAIR, 8, HG_ANGLE, 50);
set_hitbox_value(AT_FAIR, 8, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 8, HG_FINAL_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FAIR, 8, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FAIR, 8, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FAIR, 8, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FAIR, 8, HG_VISUAL_EFFECT, hisou_large );
set_hitbox_value(AT_FAIR, 8, HG_HIT_SFX, sound_get("hisou_hit5"));
set_hitbox_value(AT_FAIR, 8, HG_HIT_PARTICLE_NUM, 1);