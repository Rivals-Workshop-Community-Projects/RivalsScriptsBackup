set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 13);
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1); //cuz too good an edgeguard



set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_clairen_uspecial_rise"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 11);
//i am going to HATE THIS
//BUT i have to do it
//INDIVIDUAL WINDOWS
//AAAAAAAAAAA

//initial dash
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);



set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_med"));
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX_FRAME, 0);

//first HIT
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_weak"));
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_SFX_FRAME, 0);

//second HIT
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 7);


set_window_value(AT_FSPECIAL, 7, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_med"));
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_SFX_FRAME, 0);


//third HIT
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 10);

set_window_value(AT_FSPECIAL, 9, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_weak"));
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_SFX_FRAME, 0);

//fourth HIT
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 13);

set_window_value(AT_FSPECIAL, 11, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_mega_instant"));
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_SFX_FRAME, 0);


//final slash

set_window_value(AT_FSPECIAL, 12, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_CUSTOM_GROUND_FRICTION, 5);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_CUSTOM_GRAVITY, 0.1);

//endlag
set_window_value(AT_FSPECIAL, 13, AG_WINDOW_LENGTH, 34);
set_window_value(AT_FSPECIAL, 13, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 13, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_FSPECIAL, 13, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 13, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.4);
set_window_value(AT_FSPECIAL, 13, AG_WINDOW_CUSTOM_GROUND_FRICTION, 5);
set_window_value(AT_FSPECIAL, 13, AG_WINDOW_CUSTOM_GRAVITY, 0.4);



set_window_value(AT_FSPECIAL, 14, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL, 14, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 14, AG_WINDOW_ANIM_FRAME_START, 2);
//endlag without the cutscene
set_window_value(AT_FSPECIAL, 15, AG_WINDOW_TYPE, 7);
set_window_value(AT_FSPECIAL, 15, AG_WINDOW_LENGTH, 34);
set_window_value(AT_FSPECIAL, 15, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 15, AG_WINDOW_ANIM_FRAME_START, 22);
set_window_value(AT_FSPECIAL, 15, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 15, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.2);
set_window_value(AT_FSPECIAL, 15, AG_WINDOW_CUSTOM_GROUND_FRICTION, 5);
set_window_value(AT_FSPECIAL, 15, AG_WINDOW_CUSTOM_GRAVITY, 0.3);




set_num_hitboxes(AT_FSPECIAL, 6);

set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 14);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 26);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 70);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("plasma_line"));
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_PARTICLE_NUM, 1)
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, plasma_x_circle_small );
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_GROUP, -1 );
set_hitbox_value(AT_FSPECIAL, 1, HG_IGNORES_PROJECTILES, 1 );





set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 38);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -38);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 120);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 90);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 361);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, .15);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_weak"));
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_PARTICLE_NUM, 1)
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, plasma_t_small );
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_GROUP, -1 );
set_hitbox_value(AT_FSPECIAL, 2, HG_IGNORES_PROJECTILES, 1 );
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT_X_OFFSET, 20 );


set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 6);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 36);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -60);
set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 120);
set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, 100);
set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE, 361);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITPAUSE_SCALING, .15);
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_PARTICLE_NUM, 1)
set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT, plasma_x_circle_small );
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_GROUP, -1 );
set_hitbox_value(AT_FSPECIAL, 3, HG_IGNORES_PROJECTILES, 1 );
set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT_X_OFFSET, 20 );


set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW, 8);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_X, 28);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_Y, -35);
set_hitbox_value(AT_FSPECIAL, 4, HG_WIDTH, 100);
set_hitbox_value(AT_FSPECIAL, 4, HG_HEIGHT, 75);
set_hitbox_value(AT_FSPECIAL, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE, 361);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSPECIAL, 4, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITPAUSE_SCALING, .15);
set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_clairen_hit_weak"));
set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_PARTICLE_NUM, 1)
set_hitbox_value(AT_FSPECIAL, 4, HG_VISUAL_EFFECT, plasma_x );
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_GROUP, -1 );
set_hitbox_value(AT_FSPECIAL, 4, HG_IGNORES_PROJECTILES, 1 );
set_hitbox_value(AT_FSPECIAL, 4, HG_VISUAL_EFFECT_X_OFFSET, 20 );


set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_WINDOW, 10);
set_hitbox_value(AT_FSPECIAL, 5, HG_WINDOW_CREATION_FRAME, 0); 
set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_X, 58);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_Y, -65);
set_hitbox_value(AT_FSPECIAL, 5, HG_WIDTH, 100);
set_hitbox_value(AT_FSPECIAL, 5, HG_HEIGHT, 90);
set_hitbox_value(AT_FSPECIAL, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL, 5, HG_ANGLE, 361);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSPECIAL, 5, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITPAUSE_SCALING, .15);
set_hitbox_value(AT_FSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
set_hitbox_value(AT_FSPECIAL, 5, HG_HIT_PARTICLE_NUM, 1)
set_hitbox_value(AT_FSPECIAL, 5, HG_VISUAL_EFFECT, plasma_x_circle_small );
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_GROUP, -1 );
set_hitbox_value(AT_FSPECIAL, 5, HG_IGNORES_PROJECTILES, 1 );
set_hitbox_value(AT_FSPECIAL, 5, HG_VISUAL_EFFECT_X_OFFSET, 20 );


set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_WINDOW, 12);
set_hitbox_value(AT_FSPECIAL, 6, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_X, 38);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_Y, -35);
set_hitbox_value(AT_FSPECIAL, 6, HG_WIDTH, 120);
set_hitbox_value(AT_FSPECIAL, 6, HG_HEIGHT, 90);
set_hitbox_value(AT_FSPECIAL, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 6, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL, 6, HG_ANGLE, 361);
set_hitbox_value(AT_FSPECIAL, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 6, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_FSPECIAL, 6, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_FSPECIAL, 6, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
set_hitbox_value(AT_FSPECIAL, 6, HG_HIT_PARTICLE_NUM, 1)
set_hitbox_value(AT_FSPECIAL, 6, HG_VISUAL_EFFECT, plasma_circle_big );
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_GROUP, -1 );
set_hitbox_value(AT_FSPECIAL, 6, HG_IGNORES_PROJECTILES, 1 );
set_hitbox_value(AT_FSPECIAL, 6, HG_VISUAL_EFFECT_X_OFFSET, 20 );

/*

set_attack_value(AT_FSPECIAL, AG_MUNO_ATTACK_MISC_ADD, "Shorten during frames " + string(get_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH) + 1) + "-" + string(get_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH) + get_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH)) + ", skipping to endlag and destroying hitbox.");