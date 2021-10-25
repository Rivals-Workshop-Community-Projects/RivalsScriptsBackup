set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 7);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

//startup
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_clairen_spin"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 6);
//set_window_value(AT_NAIR, 1, AG_WINDOW_VSPEED, -1);


//initial loops (5x)
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

//end
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

//start of spike
set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_NAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_mega_instant"));
set_window_value(AT_NAIR, 4, AG_WINDOW_SFX_FRAME, 4);

//spike initial
set_window_value(AT_NAIR, 5, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_NAIR, 5, AG_WINDOW_VSPEED, 10);


//spike fall
set_window_value(AT_NAIR, 6, AG_WINDOW_LENGTH, 60);
set_window_value(AT_NAIR, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 6, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_NAIR, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NAIR, 6, AG_WINDOW_VSPEED, 18);

//land
set_window_value(AT_NAIR, 7, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NAIR, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 7, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_NAIR, 7, AG_WINDOW_VSPEED_TYPE, 1);

//land lag
set_window_value(AT_NAIR, 8, AG_WINDOW_LENGTH, 18);
set_window_value(AT_NAIR, 8, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 8, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_NAIR, 8, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_NAIR, 8);


set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 22);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 65);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, plasma_line);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_weak"));
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 1, HG_HIT_PARTICLE_NUM, 1)


set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -10);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 90);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 65);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, plasma_line);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_weak"));
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 2, HG_HIT_PARTICLE_NUM, 1)


set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, -15);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 75);
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 80);
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NAIR, 3, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT, plasma_x_circle_small);
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, asset_get("sfx_clairen_hit_weak"));
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 3, HG_HIT_PARTICLE_NUM, 1)


set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, 22);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -35);
set_hitbox_value(AT_NAIR, 4, HG_WIDTH, 65);
set_hitbox_value(AT_NAIR, 4, HG_HEIGHT, 80);
set_hitbox_value(AT_NAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 4, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_NAIR, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NAIR, 4, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT, plasma_x_circle_small);
set_hitbox_value(AT_NAIR, 4, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NAIR, 4, HG_HIT_PARTICLE_NUM, 1)





set_hitbox_value(AT_NAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_NAIR, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_Y, -10);
set_hitbox_value(AT_NAIR, 5, HG_WIDTH, 90);
set_hitbox_value(AT_NAIR, 5, HG_HEIGHT, 65);
set_hitbox_value(AT_NAIR, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_NAIR, 5, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 5, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_NAIR, 5, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NAIR, 5, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_NAIR, 5, HG_VISUAL_EFFECT, plasma_x_circle_small);
set_hitbox_value(AT_NAIR, 5, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NAIR, 5, HG_HIT_PARTICLE_NUM, 1)



//spike

set_hitbox_value(AT_NAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 6, HG_WINDOW, 5);
set_hitbox_value(AT_NAIR, 6, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NAIR, 6, HG_LIFETIME, 5);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_X, 40);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NAIR, 6, HG_WIDTH, 70);
set_hitbox_value(AT_NAIR, 6, HG_HEIGHT, 100);
set_hitbox_value(AT_NAIR, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 6, HG_DAMAGE, 5);
set_hitbox_value(AT_NAIR, 6, HG_ANGLE, 270);
set_hitbox_value(AT_NAIR, 6, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NAIR, 6, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_NAIR, 6, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NAIR, 6, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_NAIR, 6, HG_VISUAL_EFFECT, plasma_t_big);
set_hitbox_value(AT_NAIR, 6, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NAIR, 6, HG_TECHABLE, 3);
set_hitbox_value(AT_NAIR, 6, HG_HIT_PARTICLE_NUM, 1)
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_GROUP, 3)



//falling hitbox
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 7, HG_WINDOW, 6);
set_hitbox_value(AT_NAIR, 7, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NAIR, 7, HG_LIFETIME, 60);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_X, 40);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NAIR, 7, HG_WIDTH, 70);
set_hitbox_value(AT_NAIR, 7, HG_HEIGHT, 65);
set_hitbox_value(AT_NAIR, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 7, HG_DAMAGE, 4);
set_hitbox_value(AT_NAIR, 7, HG_ANGLE, 270);
set_hitbox_value(AT_NAIR, 7, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NAIR, 7, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_NAIR, 7, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NAIR, 7, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_NAIR, 7, HG_VISUAL_EFFECT, plasma_t_big);
set_hitbox_value(AT_NAIR, 7, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NAIR, 7, HG_TECHABLE, 3);
set_hitbox_value(AT_NAIR, 7, HG_HIT_PARTICLE_NUM, 1)
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_GROUP, 3)


//landing hitbox
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 8, HG_WINDOW, 7);
set_hitbox_value(AT_NAIR, 8, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NAIR, 8, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_X, 50);
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_Y, -35);
set_hitbox_value(AT_NAIR, 8, HG_WIDTH, 100);
set_hitbox_value(AT_NAIR, 8, HG_HEIGHT, 70);
set_hitbox_value(AT_NAIR, 8, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 8, HG_DAMAGE, 6);
set_hitbox_value(AT_NAIR, 8, HG_ANGLE, 70);
set_hitbox_value(AT_NAIR, 8, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 8, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_NAIR, 8, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NAIR, 8, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_NAIR, 8, HG_VISUAL_EFFECT, plasma_x_big);
set_hitbox_value(AT_NAIR, 8, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_NAIR, 8, HG_HIT_PARTICLE_NUM, 1)
set_hitbox_value(AT_NAIR, 8, HG_SHAPE, 1)


set_hitbox_value(AT_NAIR, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 9, HG_WINDOW, 7);
set_hitbox_value(AT_NAIR, 9, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NAIR, 9, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 9, HG_HITBOX_X, 50);
set_hitbox_value(AT_NAIR, 9, HG_HITBOX_Y, 3);
set_hitbox_value(AT_NAIR, 9, HG_WIDTH, 95);
set_hitbox_value(AT_NAIR, 9, HG_HEIGHT, 6);
set_hitbox_value(AT_NAIR, 9, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 9, HG_DAMAGE, 6);
set_hitbox_value(AT_NAIR, 9, HG_ANGLE, 270);
set_hitbox_value(AT_NAIR, 9, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NAIR, 9, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_NAIR, 9, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NAIR, 9, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_NAIR, 9, HG_VISUAL_EFFECT, plasma_x_big);
set_hitbox_value(AT_NAIR, 9, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
set_hitbox_value(AT_NAIR, 9, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NAIR, 9, HG_TECHABLE, 3);
set_hitbox_value(AT_NAIR, 9, HG_HIT_PARTICLE_NUM, 1)
set_hitbox_value(AT_NAIR, 9, HG_HITBOX_GROUP, 4)
set_hitbox_value(AT_NAIR, 9, HG_GROUNDEDNESS, 2)
set_hitbox_value(AT_NAIR, 9, HG_SHAPE, 1)
