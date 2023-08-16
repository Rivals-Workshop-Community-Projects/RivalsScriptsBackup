set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));
set_attack_value(AT_DAIR, AG_USES_CUSTOM_GRAVITY, 0);




set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_clairen_spin"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_DAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.5);

set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.5);


set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 13);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.5);

set_num_hitboxes(AT_DAIR,9);

set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, 15);

set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 90);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 45);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0.15);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_weak"));
set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DAIR, 1, HG_HIT_PARTICLE_NUM, 1)
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, plasma_line);
//set_hitbox_value(AT_DAIR, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_DAIR, 1, HG_GROUNDEDNESS, 2) //aerial only
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, 1);



set_hitbox_value(AT_DAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, 3);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_DAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, 3);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_DAIR, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, 3);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_GROUP, 4);



set_hitbox_value(AT_DAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_DAIR, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_Y, 3);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_DAIR, 5, HG_WIDTH, 90);
set_hitbox_value(AT_DAIR, 5, HG_HEIGHT, 45);
set_hitbox_value(AT_DAIR, 5, HG_SHAPE, 1);
set_hitbox_value(AT_DAIR, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_DAIR, 5, HG_ANGLE, 70);
set_hitbox_value(AT_DAIR, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 5, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DAIR, 5, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DAIR, 5, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_DAIR, 5, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
//set_hitbox_value(AT_DAIR, 5, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_DAIR, 5, HG_HIT_PARTICLE_NUM, 1)
set_hitbox_value(AT_DAIR, 5, HG_VISUAL_EFFECT, plasma_x_big);








//grounded multihit hitboxes


set_hitbox_value(AT_DAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 6, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_X, 0);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_Y, 15);

set_hitbox_value(AT_DAIR, 6, HG_WIDTH, 105);
set_hitbox_value(AT_DAIR, 6, HG_HEIGHT, 55);
set_hitbox_value(AT_DAIR, 6, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 6, HG_DAMAGE, 1);
set_hitbox_value(AT_DAIR, 6, HG_ANGLE, 45);
set_hitbox_value(AT_DAIR, 6, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DAIR, 6, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_DAIR, 6, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DAIR, 6, HG_HITPAUSE_SCALING, 0.15);
set_hitbox_value(AT_DAIR, 6, HG_HIT_SFX, asset_get("sfx_clairen_hit_weak"));
set_hitbox_value(AT_DAIR, 6, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DAIR, 6, HG_HIT_PARTICLE_NUM, 1)
set_hitbox_value(AT_DAIR, 6, HG_VISUAL_EFFECT, plasma_line);
//set_hitbox_value(AT_DAIR, 6, HG_TECHABLE, 1);
set_hitbox_value(AT_DAIR, 6, HG_GROUNDEDNESS, 1) //ground only
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_GROUP, 1);



set_hitbox_value(AT_DAIR, 7, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 7, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 7, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DAIR, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_X, 0);
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_Y, 3);
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_GROUP, 2);


set_hitbox_value(AT_DAIR, 8, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_DAIR, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 8, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 8, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DAIR, 8, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 8, HG_HITBOX_X, 0);
set_hitbox_value(AT_DAIR, 8, HG_HITBOX_Y, 3);
set_hitbox_value(AT_DAIR, 8, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_DAIR, 9, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_DAIR, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 9, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 9, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_DAIR, 9, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 9, HG_HITBOX_X, 0);
set_hitbox_value(AT_DAIR, 9, HG_HITBOX_Y, 3);
set_hitbox_value(AT_DAIR, 9, HG_HITBOX_GROUP, 4);




